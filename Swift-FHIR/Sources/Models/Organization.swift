//
//  Organization.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Organization) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A grouping of people or organizations with a common purpose.
 *
 *  A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some
 *  form of collective action.  Includes companies, institutions, corporations, departments, community groups,
 *  healthcare practice groups, etc.
 */
public class Organization: DomainResource {
	override public class var resourceType: String {
		get { return "Organization" }
	}
	
	/// Whether the organization's record is still in active use.
	public var active: Bool?
	
	/// An address for the organization.
	public var address: [Address]?
	
	/// Contact for the organization for a certain purpose.
	public var contact: [OrganizationContact]?
	
	/// Identifies this organization  across multiple systems.
	public var identifier: [Identifier]?
	
	/// Name used for the organization.
	public var name: String?
	
	/// The organization of which this organization forms a part.
	public var partOf: Reference?
	
	/// A contact detail for the organization.
	public var telecom: [ContactPoint]?
	
	/// Kind of organization.
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["active"] {
				presentKeys.insert("active")
				if let val = exist as? Bool {
					self.active = val
				}
				else {
					errors.append(FHIRJSONError(key: "active", wants: Bool.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? [FHIRJSON] {
					self.address = Address.instantiate(fromArray: val, owner: self) as? [Address]
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = OrganizationContact.instantiate(fromArray: val, owner: self) as? [OrganizationContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
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
			if let exist = js["partOf"] {
				presentKeys.insert("partOf")
				if let val = exist as? FHIRJSON {
					self.partOf = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "partOf", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
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
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let address = self.address {
			json["address"] = address.map() { $0.asJSON() }
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let partOf = self.partOf {
			json["partOf"] = partOf.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON() }
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact for the organization for a certain purpose.
 */
public class OrganizationContact: BackboneElement {
	override public class var resourceType: String {
		get { return "OrganizationContact" }
	}
	
	/// Visiting or postal addresses for the contact.
	public var address: Address?
	
	/// A name associated with the contact.
	public var name: HumanName?
	
	/// The type of contact.
	public var purpose: CodeableConcept?
	
	/// Contact details (telephone, email, etc.)  for a contact.
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? FHIRJSON {
					self.address = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? FHIRJSON {
					self.name = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["purpose"] {
				presentKeys.insert("purpose")
				if let val = exist as? FHIRJSON {
					self.purpose = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "purpose", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON() }
		}
		
		return json
	}
}

