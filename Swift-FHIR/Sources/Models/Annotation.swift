//
//  Annotation.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Annotation) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Text node with attribution.
 *
 *  A  text note which also  contains information about who made the statement and when.
 */
public class Annotation: Element {
	override public class var resourceType: String {
		get { return "Annotation" }
	}
	
	/// Individual responsible for the annotation.
	public var authorReference: Reference?
	
	/// Individual responsible for the annotation.
	public var authorString: String?
	
	/// The annotation  - text content.
	public var text: String?
	
	/// When the annotation was made.
	public var time: DateTime?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(text: String) {
		self.init(json: nil)
		self.text = text
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["authorReference"] {
				presentKeys.insert("authorReference")
				if let val = exist as? FHIRJSON {
					self.authorReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "authorReference", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["authorString"] {
				presentKeys.insert("authorString")
				if let val = exist as? String {
					self.authorString = val
				}
				else {
					errors.append(FHIRJSONError(key: "authorString", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "text"))
			}
			if let exist = js["time"] {
				presentKeys.insert("time")
				if let val = exist as? String {
					self.time = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "time", wants: String.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authorReference = self.authorReference {
			json["authorReference"] = authorReference.asJSON()
		}
		if let authorString = self.authorString {
			json["authorString"] = authorString.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let time = self.time {
			json["time"] = time.asJSON()
		}
		
		return json
	}
}

