//
//  FHIROperation.swift
//  SwiftSMART
//
//  Created by Pascal Pfiffner on 3/31/15.
//  2015, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


/**
The context an operation is to be performed against.
*/
public enum FHIROperationContext {
	case none, system, resourceType, instance
}


/**
Named operations to be performed against a FHIR REST endpoint.
*/
open class FHIROperation: CustomStringConvertible {
	
	/// The name of the operation.
	let name: String
	
	/// The context against which this operation is run.
	var context = FHIROperationContext.none
	
	/// Input parameters.
	var inParams: FHIRJSON?
	
	/// The resource type the operation is to be performed against.
	var type: Resource.Type? {
		didSet {
			if nil != type {
				context = .resourceType
			}
		}
	}
	
	/// The instance this operation is to be performed against, if any.
	var instance: Resource? {
		didSet {
			if let inst = instance {
				type = Swift.type(of: inst)
				context = .instance
			}
		}
	}
	
	public init(_ name: String) {
		self.name = name
	}
	
	
	// MARK: - Validation
	
	/**
	Validate the receiver against its operation definition.
	
	- parameter with: The OperationDefinition with which to validate the operation
	*/
	open func validate(with definition: OperationDefinition) throws {
		try validateContext(with: definition)
		try validateInParams(with: definition)
	}
	
	/**
	Check if the receiver's context is permissible.
	
	- parameter with: The OperationDefinition with which to validate the operation
	*/
	func validateContext(with definition: OperationDefinition) throws {
		switch context {
		case .none:
			throw FHIRError.operationConfigurationError("Operation \(self) has not been properly set up")
		case .system:
			if nil == definition.system || !definition.system! {
				throw FHIRError.operationConfigurationError("Operation \(self) cannot be executed in system context")
			}
		case .resourceType:
			if nil == definition.type {
				throw FHIRError.operationConfigurationError("Operation \(self) cannot be executed in type context")
			}
			else if nil == type || !(definition.type!).contains(type!.resourceType) {
				throw FHIRError.operationConfigurationError("Operation \(self) cannot be executed against \(type ?? nil) type")
			}
		case .instance:
			if nil == definition.instance || !definition.instance! {
				throw FHIRError.operationConfigurationError("Operation \(self) cannot be executed in instance context")
			}
			_ = try instance?.relativeURLPath()
		}
	}
	
	/**
	Check if the receiver's "in" params adhere to the definition.
	
	- parameter with: The OperationDefinition with which to validate the operation
	*/
	func validateInParams(with definition: OperationDefinition) throws {
		var leftover = inParams ?? FHIRJSON()
		
		// do we have all mandatory ones and are the ones that we have valid?
		if let params = definition.parameter {
			for param in params {
				if nil == param.name {
					continue
				}
				
				if "in" == param.use {
					
					// have the parameter, validate it
					if nil != inParams?[param.name!] {
						leftover.removeValue(forKey: param.name!)
						
						// TODO: actually validate!
					}
					
					// check if mandatory parameter is missing
					else if let min = param.min {
						if min > 0 {
							throw FHIRError.operationInputParameterMissing(param.name ?? "unknown")
						}
					}
				}
			}
		}
		
		// do we have leftover parameters
		for over in leftover {
			print("-->  Ignored operation parameter \(over) in \(self)")
		}
	}
	
	
	// MARK: - Execution
	
	/**
	Return the relative server URL the operation will call.
	*/
	open func serverPath() throws -> String {
		switch context {
		case .none:
			throw FHIRError.operationConfigurationError("Operation \(self) has not been properly set up")
		case .system:
			return "$\(name)"
		case .resourceType:
			return "\(type!.resourceType)/$\(name)"
		case .instance:
			let path = try instance!.relativeURLPath()
			return "\(path)/$\(name)"
		}
	}
	
	/**
	Perform the operation on the given server. You probably want to call `validateWith()` first.
	
	- parameter on Server: The server on which to perform the operation
	*/
	open func perform(onServer server: FHIRServer, callback: @escaping ((_ response: FHIRServerResponse) -> Void)) throws {
		let path = try serverPath()
		server.performRequest(.GET, path: path, resource: nil, additionalHeaders: nil, callback: callback)
	}
	
	
	// MARK: - Printable
	
	open var description: String {
		return "<FHIROperation $\(name)>"
	}
}


/// Alias to `FHIROperation` for neat operation usage.
public typealias `$` = FHIROperation

