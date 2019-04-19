//
//  Group.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Group) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Group of multiple entities.
 *
 *  Represents a defined collection of entities that may be discussed or acted upon collectively but which are not
 *  expected to act collectively and are not formally or legally recognized; i.e. a collection of entities that isn't an
 *  Organization.
 */
public class Group: DomainResource {
	override public class var resourceType: String {
		get { return "Group" }
	}
	
	/// Descriptive or actual.
	public var actual: Bool?
	
	/// Trait of group members.
	public var characteristic: [GroupCharacteristic]?
	
	/// Kind of Group members.
	public var code: CodeableConcept?
	
	/// Unique id.
	public var identifier: [Identifier]?
	
	/// Who or what is in group.
	public var member: [GroupMember]?
	
	/// Label for Group.
	public var name: String?
	
	/// Number of members.
	public var quantity: UInt?
	
	/// person | animal | practitioner | device | medication | substance.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actual: Bool, type: String) {
		self.init(json: nil)
		self.actual = actual
		self.type = type
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["actual"] {
				presentKeys.insert("actual")
				if let val = exist as? Bool {
					self.actual = val
				}
				else {
					errors.append(FHIRJSONError(key: "actual", wants: Bool.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "actual"))
			}
			if let exist = js["characteristic"] {
				presentKeys.insert("characteristic")
				if let val = exist as? [FHIRJSON] {
					self.characteristic = GroupCharacteristic.instantiate(fromArray: val, owner: self) as? [GroupCharacteristic]
				}
				else {
					errors.append(FHIRJSONError(key: "characteristic", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: Swift.type(of: exist)))
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
			if let exist = js["member"] {
				presentKeys.insert("member")
				if let val = exist as? [FHIRJSON] {
					self.member = GroupMember.instantiate(fromArray: val, owner: self) as? [GroupMember]
				}
				else {
					errors.append(FHIRJSONError(key: "member", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
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
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? UInt {
					self.quantity = val
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: UInt.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actual = self.actual {
			json["actual"] = actual.asJSON()
		}
		if let characteristic = self.characteristic {
			json["characteristic"] = characteristic.map() { $0.asJSON() }
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let member = self.member {
			json["member"] = member.map() { $0.asJSON() }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Trait of group members.
 *
 *  Identifies the traits shared by members of the group.
 */
public class GroupCharacteristic: BackboneElement {
	override public class var resourceType: String {
		get { return "GroupCharacteristic" }
	}
	
	/// Kind of characteristic.
	public var code: CodeableConcept?
	
	/// Group includes or excludes.
	public var exclude: Bool?
	
	/// Period over which characteristic is tested.
	public var period: Period?
	
	/// Value held by characteristic.
	public var valueBoolean: Bool?
	
	/// Value held by characteristic.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value held by characteristic.
	public var valueQuantity: Quantity?
	
	/// Value held by characteristic.
	public var valueRange: Range?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, exclude: Bool, valueBoolean: Bool, valueCodeableConcept: CodeableConcept, valueQuantity: Quantity, valueRange: Range) {
		self.init(json: nil)
		self.code = code
		self.exclude = exclude
		self.valueBoolean = valueBoolean
		self.valueCodeableConcept = valueCodeableConcept
		self.valueQuantity = valueQuantity
		self.valueRange = valueRange
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
			if let exist = js["exclude"] {
				presentKeys.insert("exclude")
				if let val = exist as? Bool {
					self.exclude = val
				}
				else {
					errors.append(FHIRJSONError(key: "exclude", wants: Bool.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "exclude"))
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["valueBoolean"] {
				presentKeys.insert("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueBoolean", wants: Bool.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["valueCodeableConcept"] {
				presentKeys.insert("valueCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.valueCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["valueQuantity"] {
				presentKeys.insert("valueQuantity")
				if let val = exist as? FHIRJSON {
					self.valueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueQuantity", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["valueRange"] {
				presentKeys.insert("valueRange")
				if let val = exist as? FHIRJSON {
					self.valueRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueRange", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.valueCodeableConcept && nil == self.valueBoolean && nil == self.valueQuantity && nil == self.valueRange {
				errors.append(FHIRJSONError(key: "value*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let exclude = self.exclude {
			json["exclude"] = exclude.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON()
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON()
		}
		
		return json
	}
}


/**
 *  Who or what is in group.
 *
 *  Identifies the resource instances that are members of the group.
 */
public class GroupMember: BackboneElement {
	override public class var resourceType: String {
		get { return "GroupMember" }
	}
	
	/// Reference to the group member.
	public var entity: Reference?
	
	/// If member is no longer in group.
	public var inactive: Bool?
	
	/// Period member belonged to the group.
	public var period: Period?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(entity: Reference) {
		self.init(json: nil)
		self.entity = entity
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["entity"] {
				presentKeys.insert("entity")
				if let val = exist as? FHIRJSON {
					self.entity = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "entity", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "entity"))
			}
			if let exist = js["inactive"] {
				presentKeys.insert("inactive")
				if let val = exist as? Bool {
					self.inactive = val
				}
				else {
					errors.append(FHIRJSONError(key: "inactive", wants: Bool.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let entity = self.entity {
			json["entity"] = entity.asJSON()
		}
		if let inactive = self.inactive {
			json["inactive"] = inactive.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		
		return json
	}
}

