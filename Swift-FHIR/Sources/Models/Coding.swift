//
//  Coding.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Coding) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A reference to a code defined by a terminology system.
 */
public class Coding: Element {
	override public class var resourceType: String {
		get { return "Coding" }
	}
	
	/// Symbol in syntax defined by the system.
	public var code: String?
	
	/// Representation defined by the system.
	public var display: String?
	
	/// Identity of the terminology system.
	public var system: URL?
	
	/// If this coding was chosen directly by the user.
	public var userSelected: Bool?
	
	/// Version of the system - if relevant.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["display"] {
				presentKeys.insert("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(FHIRJSONError(key: "display", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["system"] {
				presentKeys.insert("system")
				if let val = exist as? String {
					self.system = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "system", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["userSelected"] {
				presentKeys.insert("userSelected")
				if let val = exist as? Bool {
					self.userSelected = val
				}
				else {
					errors.append(FHIRJSONError(key: "userSelected", wants: Bool.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let userSelected = self.userSelected {
			json["userSelected"] = userSelected.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

