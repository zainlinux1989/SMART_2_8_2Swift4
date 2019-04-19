//
//  Binary.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Binary) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Pure binary content defined by some other format than FHIR.
 *
 *  A binary resource can contain any content, whether text, image, pdf, zip archive, etc.
 */
public class Binary: Resource {
	override public class var resourceType: String {
		get { return "Binary" }
	}
	
	/// The actual content.
	public var content: Base64Binary?
	
	/// MimeType of the binary content.
	public var contentType: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Base64Binary, contentType: String) {
		self.init(json: nil)
		self.content = content
		self.contentType = contentType
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["content"] {
				presentKeys.insert("content")
				if let val = exist as? String {
					self.content = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "content", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "content"))
			}
			if let exist = js["contentType"] {
				presentKeys.insert("contentType")
				if let val = exist as? String {
					self.contentType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contentType", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "contentType"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let content = self.content {
			json["content"] = content.asJSON()
		}
		if let contentType = self.contentType {
			json["contentType"] = contentType.asJSON()
		}
		
		return json
	}
}

