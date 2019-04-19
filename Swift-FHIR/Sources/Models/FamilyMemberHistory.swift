//
//  FamilyMemberHistory.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Information about patient's relatives, relevant for patient.
 *
 *  Significant health events and conditions for a person related to the patient relevant in the context of care for the
 *  patient.
 */
public class FamilyMemberHistory: DomainResource {
	override public class var resourceType: String {
		get { return "FamilyMemberHistory" }
	}
	
	/// (approximate) age.
	public var ageQuantity: Quantity?
	
	/// (approximate) age.
	public var ageRange: Range?
	
	/// (approximate) age.
	public var ageString: String?
	
	/// (approximate) date of birth.
	public var bornDate: FHIRDate?
	
	/// (approximate) date of birth.
	public var bornPeriod: Period?
	
	/// (approximate) date of birth.
	public var bornString: String?
	
	/// Condition that the related person had.
	public var condition: [FamilyMemberHistoryCondition]?
	
	/// When history was captured/updated.
	public var date: DateTime?
	
	/// Dead? How old/when?.
	public var deceasedBoolean: Bool?
	
	/// Dead? How old/when?.
	public var deceasedDate: FHIRDate?
	
	/// Dead? How old/when?.
	public var deceasedQuantity: Quantity?
	
	/// Dead? How old/when?.
	public var deceasedRange: Range?
	
	/// Dead? How old/when?.
	public var deceasedString: String?
	
	/// male | female | other | unknown.
	public var gender: String?
	
	/// External Id(s) for this record.
	public var identifier: [Identifier]?
	
	/// The family member described.
	public var name: String?
	
	/// General note about related person.
	public var note: Annotation?
	
	/// Patient history is about.
	public var patient: Reference?
	
	/// Relationship to the subject.
	public var relationship: CodeableConcept?
	
	/// partial | completed | entered-in-error | health-unknown.
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, relationship: CodeableConcept, status: String) {
		self.init(json: nil)
		self.patient = patient
		self.relationship = relationship
		self.status = status
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["ageQuantity"] {
				presentKeys.insert("ageQuantity")
				if let val = exist as? FHIRJSON {
					self.ageQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ageQuantity", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["ageRange"] {
				presentKeys.insert("ageRange")
				if let val = exist as? FHIRJSON {
					self.ageRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ageRange", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["ageString"] {
				presentKeys.insert("ageString")
				if let val = exist as? String {
					self.ageString = val
				}
				else {
					errors.append(FHIRJSONError(key: "ageString", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["bornDate"] {
				presentKeys.insert("bornDate")
				if let val = exist as? String {
					self.bornDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "bornDate", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["bornPeriod"] {
				presentKeys.insert("bornPeriod")
				if let val = exist as? FHIRJSON {
					self.bornPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bornPeriod", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["bornString"] {
				presentKeys.insert("bornString")
				if let val = exist as? String {
					self.bornString = val
				}
				else {
					errors.append(FHIRJSONError(key: "bornString", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["condition"] {
				presentKeys.insert("condition")
				if let val = exist as? [FHIRJSON] {
					self.condition = FamilyMemberHistoryCondition.instantiate(fromArray: val, owner: self) as? [FamilyMemberHistoryCondition]
				}
				else {
					errors.append(FHIRJSONError(key: "condition", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["deceasedBoolean"] {
				presentKeys.insert("deceasedBoolean")
				if let val = exist as? Bool {
					self.deceasedBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "deceasedBoolean", wants: Bool.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["deceasedDate"] {
				presentKeys.insert("deceasedDate")
				if let val = exist as? String {
					self.deceasedDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "deceasedDate", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["deceasedQuantity"] {
				presentKeys.insert("deceasedQuantity")
				if let val = exist as? FHIRJSON {
					self.deceasedQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "deceasedQuantity", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["deceasedRange"] {
				presentKeys.insert("deceasedRange")
				if let val = exist as? FHIRJSON {
					self.deceasedRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "deceasedRange", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["deceasedString"] {
				presentKeys.insert("deceasedString")
				if let val = exist as? String {
					self.deceasedString = val
				}
				else {
					errors.append(FHIRJSONError(key: "deceasedString", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["gender"] {
				presentKeys.insert("gender")
				if let val = exist as? String {
					self.gender = val
				}
				else {
					errors.append(FHIRJSONError(key: "gender", wants: String.self, has: Swift.type(of: exist)))
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
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? FHIRJSON {
					self.note = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "patient"))
			}
			if let exist = js["relationship"] {
				presentKeys.insert("relationship")
				if let val = exist as? FHIRJSON {
					self.relationship = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "relationship", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "relationship"))
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let ageQuantity = self.ageQuantity {
			json["ageQuantity"] = ageQuantity.asJSON()
		}
		if let ageRange = self.ageRange {
			json["ageRange"] = ageRange.asJSON()
		}
		if let ageString = self.ageString {
			json["ageString"] = ageString.asJSON()
		}
		if let bornDate = self.bornDate {
			json["bornDate"] = bornDate.asJSON()
		}
		if let bornPeriod = self.bornPeriod {
			json["bornPeriod"] = bornPeriod.asJSON()
		}
		if let bornString = self.bornString {
			json["bornString"] = bornString.asJSON()
		}
		if let condition = self.condition {
			json["condition"] = condition.map() { $0.asJSON() }
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let deceasedBoolean = self.deceasedBoolean {
			json["deceasedBoolean"] = deceasedBoolean.asJSON()
		}
		if let deceasedDate = self.deceasedDate {
			json["deceasedDate"] = deceasedDate.asJSON()
		}
		if let deceasedQuantity = self.deceasedQuantity {
			json["deceasedQuantity"] = deceasedQuantity.asJSON()
		}
		if let deceasedRange = self.deceasedRange {
			json["deceasedRange"] = deceasedRange.asJSON()
		}
		if let deceasedString = self.deceasedString {
			json["deceasedString"] = deceasedString.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}


/**
 *  Condition that the related person had.
 *
 *  The significant Conditions (or condition) that the family member had. This is a repeating section to allow a system
 *  to represent more than one condition per resource, though there is nothing stopping multiple resources - one per
 *  condition.
 */
public class FamilyMemberHistoryCondition: BackboneElement {
	override public class var resourceType: String {
		get { return "FamilyMemberHistoryCondition" }
	}
	
	/// Condition suffered by relation.
	public var code: CodeableConcept?
	
	/// Extra information about condition.
	public var note: Annotation?
	
	/// When condition first manifested.
	public var onsetPeriod: Period?
	
	/// When condition first manifested.
	public var onsetQuantity: Quantity?
	
	/// When condition first manifested.
	public var onsetRange: Range?
	
	/// When condition first manifested.
	public var onsetString: String?
	
	/// deceased | permanent disability | etc..
	public var outcome: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init(json: nil)
		self.code = code
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? FHIRJSON {
					self.note = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["onsetPeriod"] {
				presentKeys.insert("onsetPeriod")
				if let val = exist as? FHIRJSON {
					self.onsetPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "onsetPeriod", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["onsetQuantity"] {
				presentKeys.insert("onsetQuantity")
				if let val = exist as? FHIRJSON {
					self.onsetQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "onsetQuantity", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["onsetRange"] {
				presentKeys.insert("onsetRange")
				if let val = exist as? FHIRJSON {
					self.onsetRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "onsetRange", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["onsetString"] {
				presentKeys.insert("onsetString")
				if let val = exist as? String {
					self.onsetString = val
				}
				else {
					errors.append(FHIRJSONError(key: "onsetString", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? FHIRJSON {
					self.outcome = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: FHIRJSON.self, has: Swift.type(of: exist)))
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
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let onsetPeriod = self.onsetPeriod {
			json["onsetPeriod"] = onsetPeriod.asJSON()
		}
		if let onsetQuantity = self.onsetQuantity {
			json["onsetQuantity"] = onsetQuantity.asJSON()
		}
		if let onsetRange = self.onsetRange {
			json["onsetRange"] = onsetRange.asJSON()
		}
		if let onsetString = self.onsetString {
			json["onsetString"] = onsetString.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		
		return json
	}
}

