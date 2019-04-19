//
//  AppointmentResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/AppointmentResponse) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
 */
public class AppointmentResponse: DomainResource {
	override public class var resourceType: String {
		get { return "AppointmentResponse" }
	}
	
	/// Person, Location/HealthcareService or Device.
	public var actor: Reference?
	
	/// Appointment this response relates to.
	public var appointment: Reference?
	
	/// Additional comments.
	public var comment: String?
	
	/// Time from appointment, or requested new end time.
	public var end: Instant?
	
	/// External Ids for this item.
	public var identifier: [Identifier]?
	
	/// accepted | declined | tentative | in-process | completed | needs-action.
	public var participantStatus: String?
	
	/// Role of participant in the appointment.
	public var participantType: [CodeableConcept]?
	
	/// Time from appointment, or requested new start time.
	public var start: Instant?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(appointment: Reference, participantStatus: String) {
		self.init(json: nil)
		self.appointment = appointment
		self.participantStatus = participantStatus
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["actor"] {
				presentKeys.insert("actor")
				if let val = exist as? FHIRJSON {
					self.actor = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "actor", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["appointment"] {
				presentKeys.insert("appointment")
				if let val = exist as? FHIRJSON {
					self.appointment = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "appointment", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "appointment"))
			}
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
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["participantStatus"] {
				presentKeys.insert("participantStatus")
				if let val = exist as? String {
					self.participantStatus = val
				}
				else {
					errors.append(FHIRJSONError(key: "participantStatus", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "participantStatus"))
			}
			if let exist = js["participantType"] {
				presentKeys.insert("participantType")
				if let val = exist as? [FHIRJSON] {
					self.participantType = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "participantType", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON()
		}
		if let appointment = self.appointment {
			json["appointment"] = appointment.asJSON()
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let participantStatus = self.participantStatus {
			json["participantStatus"] = participantStatus.asJSON()
		}
		if let participantType = self.participantType {
			json["participantType"] = participantType.map() { $0.asJSON() }
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		
		return json
	}
}

