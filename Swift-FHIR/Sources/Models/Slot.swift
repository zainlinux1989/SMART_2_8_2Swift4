//
//  Slot.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Slot) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A slot of time on a schedule that may be available for booking appointments.
 */
public class Slot: DomainResource {
	override public class var resourceType: String {
		get { return "Slot" }
	}
	
	/// Comments on the slot to describe any extended information. Such as custom constraints on the slot.
	public var comment: String?
	
	/// Date/Time that the slot is to conclude.
	public var end: Instant?
	
	/// busy | free | busy-unavailable | busy-tentative.
	public var freeBusyType: String?
	
	/// External Ids for this item.
	public var identifier: [Identifier]?
	
	/// This slot has already been overbooked, appointments are unlikely to be accepted for this time.
	public var overbooked: Bool?
	
	/// The schedule resource that this slot defines an interval of status information.
	public var schedule: Reference?
	
	/// Date/Time that the slot is to begin.
	public var start: Instant?
	
	/// The type of appointments that can be booked into this slot (ideally this would be an identifiable service - which is at a location, rather than the location itself). If provided then this overrides the value provided on the availability resource.
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(end: Instant, freeBusyType: String, schedule: Reference, start: Instant) {
		self.init(json: nil)
		self.end = end
		self.freeBusyType = freeBusyType
		self.schedule = schedule
		self.start = start
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["comment"] {
				presentKeys.insert("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(FHIRJSONError(key: "comment", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? String {
					self.end = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "end"))
			}
			if let exist = js["freeBusyType"] {
				presentKeys.insert("freeBusyType")
				if let val = exist as? String {
					self.freeBusyType = val
				}
				else {
					errors.append(FHIRJSONError(key: "freeBusyType", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "freeBusyType"))
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["overbooked"] {
				presentKeys.insert("overbooked")
				if let val = exist as? Bool {
					self.overbooked = val
				}
				else {
					errors.append(FHIRJSONError(key: "overbooked", wants: Bool.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["schedule"] {
				presentKeys.insert("schedule")
				if let val = exist as? FHIRJSON {
					self.schedule = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "schedule", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "schedule"))
			}
			if let exist = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? String {
					self.start = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "start"))
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let freeBusyType = self.freeBusyType {
			json["freeBusyType"] = freeBusyType.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let overbooked = self.overbooked {
			json["overbooked"] = overbooked.asJSON()
		}
		if let schedule = self.schedule {
			json["schedule"] = schedule.asJSON()
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

