//
//  Contract.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Contract) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Contract.
 *
 *  A formal agreement between parties regarding the conduct of business, exchange of information or other matters.
 */
public class Contract: DomainResource {
	override public class var resourceType: String {
		get { return "Contract" }
	}
	
	/// Contract Action.
	public var action: [CodeableConcept]?
	
	/// Contract Action Reason.
	public var actionReason: [CodeableConcept]?
	
	/// Contract Actor.
	public var actor: [ContractActor]?
	
	/// Effective time.
	public var applies: Period?
	
	/// Authority under which this Contract has standing.
	public var authority: [Reference]?
	
	/// Binding Contract.
	public var bindingAttachment: Attachment?
	
	/// Binding Contract.
	public var bindingReference: Reference?
	
	/// Domain in which this Contract applies.
	public var domain: [Reference]?
	
	/// Contract Friendly Language.
	public var friendly: [ContractFriendly]?
	
	/// Contract identifier.
	public var identifier: Identifier?
	
	/// When this Contract was issued.
	public var issued: DateTime?
	
	/// Contract Legal Language.
	public var legal: [ContractLegal]?
	
	/// Computable Contract Language.
	public var rule: [ContractRule]?
	
	/// Contract Signer.
	public var signer: [ContractSigner]?
	
	/// Contract Subtype.
	public var subType: [CodeableConcept]?
	
	/// Subject of this Contract.
	public var subject: [Reference]?
	
	/// Contract Term List.
	public var term: [ContractTerm]?
	
	/// Contract Tyoe.
	public var type: CodeableConcept?
	
	/// Contract Valued Item.
	public var valuedItem: [ContractValuedItem]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["actionReason"] {
				presentKeys.insert("actionReason")
				if let val = exist as? [FHIRJSON] {
					self.actionReason = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "actionReason", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["actor"] {
				presentKeys.insert("actor")
				if let val = exist as? [FHIRJSON] {
					self.actor = ContractActor.instantiate(fromArray: val, owner: self) as? [ContractActor]
				}
				else {
					errors.append(FHIRJSONError(key: "actor", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["applies"] {
				presentKeys.insert("applies")
				if let val = exist as? FHIRJSON {
					self.applies = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "applies", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["authority"] {
				presentKeys.insert("authority")
				if let val = exist as? [FHIRJSON] {
					self.authority = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "authority", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["bindingAttachment"] {
				presentKeys.insert("bindingAttachment")
				if let val = exist as? FHIRJSON {
					self.bindingAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bindingAttachment", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["bindingReference"] {
				presentKeys.insert("bindingReference")
				if let val = exist as? FHIRJSON {
					self.bindingReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bindingReference", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["domain"] {
				presentKeys.insert("domain")
				if let val = exist as? [FHIRJSON] {
					self.domain = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "domain", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["friendly"] {
				presentKeys.insert("friendly")
				if let val = exist as? [FHIRJSON] {
					self.friendly = ContractFriendly.instantiate(fromArray: val, owner: self) as? [ContractFriendly]
				}
				else {
					errors.append(FHIRJSONError(key: "friendly", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["issued"] {
				presentKeys.insert("issued")
				if let val = exist as? String {
					self.issued = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "issued", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["legal"] {
				presentKeys.insert("legal")
				if let val = exist as? [FHIRJSON] {
					self.legal = ContractLegal.instantiate(fromArray: val, owner: self) as? [ContractLegal]
				}
				else {
					errors.append(FHIRJSONError(key: "legal", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? [FHIRJSON] {
					self.rule = ContractRule.instantiate(fromArray: val, owner: self) as? [ContractRule]
				}
				else {
					errors.append(FHIRJSONError(key: "rule", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["signer"] {
				presentKeys.insert("signer")
				if let val = exist as? [FHIRJSON] {
					self.signer = ContractSigner.instantiate(fromArray: val, owner: self) as? [ContractSigner]
				}
				else {
					errors.append(FHIRJSONError(key: "signer", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["subType"] {
				presentKeys.insert("subType")
				if let val = exist as? [FHIRJSON] {
					self.subType = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "subType", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? [FHIRJSON] {
					self.subject = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["term"] {
				presentKeys.insert("term")
				if let val = exist as? [FHIRJSON] {
					self.term = ContractTerm.instantiate(fromArray: val, owner: self) as? [ContractTerm]
				}
				else {
					errors.append(FHIRJSONError(key: "term", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
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
			if let exist = js["valuedItem"] {
				presentKeys.insert("valuedItem")
				if let val = exist as? [FHIRJSON] {
					self.valuedItem = ContractValuedItem.instantiate(fromArray: val, owner: self) as? [ContractValuedItem]
				}
				else {
					errors.append(FHIRJSONError(key: "valuedItem", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON() }
		}
		if let actionReason = self.actionReason {
			json["actionReason"] = actionReason.map() { $0.asJSON() }
		}
		if let actor = self.actor {
			json["actor"] = actor.map() { $0.asJSON() }
		}
		if let applies = self.applies {
			json["applies"] = applies.asJSON()
		}
		if let authority = self.authority {
			json["authority"] = authority.map() { $0.asJSON() }
		}
		if let bindingAttachment = self.bindingAttachment {
			json["bindingAttachment"] = bindingAttachment.asJSON()
		}
		if let bindingReference = self.bindingReference {
			json["bindingReference"] = bindingReference.asJSON()
		}
		if let domain = self.domain {
			json["domain"] = domain.map() { $0.asJSON() }
		}
		if let friendly = self.friendly {
			json["friendly"] = friendly.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let legal = self.legal {
			json["legal"] = legal.map() { $0.asJSON() }
		}
		if let rule = self.rule {
			json["rule"] = rule.map() { $0.asJSON() }
		}
		if let signer = self.signer {
			json["signer"] = signer.map() { $0.asJSON() }
		}
		if let subType = self.subType {
			json["subType"] = subType.map() { $0.asJSON() }
		}
		if let subject = self.subject {
			json["subject"] = subject.map() { $0.asJSON() }
		}
		if let term = self.term {
			json["term"] = term.map() { $0.asJSON() }
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let valuedItem = self.valuedItem {
			json["valuedItem"] = valuedItem.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Contract Actor.
 *
 *  List of Contract actors.
 */
public class ContractActor: BackboneElement {
	override public class var resourceType: String {
		get { return "ContractActor" }
	}
	
	/// Contract Actor Type.
	public var entity: Reference?
	
	/// Contract  Actor Role.
	public var role: [CodeableConcept]?
	
	
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
			if let exist = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? [FHIRJSON] {
					self.role = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
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
		if let role = self.role {
			json["role"] = role.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Contract Friendly Language.
 *
 *  The "patient friendly language" versionof the Contract in whole or in parts. "Patient friendly language" means the
 *  representation of the Contract and Contract Provisions in a manner that is readily accessible and understandable by
 *  a layperson in accordance with best practices for communication styles that ensure that those agreeing to or signing
 *  the Contract understand the roles, actions, obligations, responsibilities, and implication of the agreement.
 */
public class ContractFriendly: BackboneElement {
	override public class var resourceType: String {
		get { return "ContractFriendly" }
	}
	
	/// Easily comprehended representation of this Contract.
	public var contentAttachment: Attachment?
	
	/// Easily comprehended representation of this Contract.
	public var contentReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(contentAttachment: Attachment, contentReference: Reference) {
		self.init(json: nil)
		self.contentAttachment = contentAttachment
		self.contentReference = contentReference
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["contentAttachment"] {
				presentKeys.insert("contentAttachment")
				if let val = exist as? FHIRJSON {
					self.contentAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "contentAttachment", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["contentReference"] {
				presentKeys.insert("contentReference")
				if let val = exist as? FHIRJSON {
					self.contentReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "contentReference", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.contentAttachment && nil == self.contentReference {
				errors.append(FHIRJSONError(key: "content*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contentAttachment = self.contentAttachment {
			json["contentAttachment"] = contentAttachment.asJSON()
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Contract Legal Language.
 *
 *  List of Legal expressions or representations of this Contract.
 */
public class ContractLegal: BackboneElement {
	override public class var resourceType: String {
		get { return "ContractLegal" }
	}
	
	/// Contract Legal Text.
	public var contentAttachment: Attachment?
	
	/// Contract Legal Text.
	public var contentReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(contentAttachment: Attachment, contentReference: Reference) {
		self.init(json: nil)
		self.contentAttachment = contentAttachment
		self.contentReference = contentReference
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["contentAttachment"] {
				presentKeys.insert("contentAttachment")
				if let val = exist as? FHIRJSON {
					self.contentAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "contentAttachment", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["contentReference"] {
				presentKeys.insert("contentReference")
				if let val = exist as? FHIRJSON {
					self.contentReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "contentReference", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.contentAttachment && nil == self.contentReference {
				errors.append(FHIRJSONError(key: "content*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contentAttachment = self.contentAttachment {
			json["contentAttachment"] = contentAttachment.asJSON()
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Computable Contract Language.
 *
 *  List of Computable Policy Rule Language Representations of this Contract.
 */
public class ContractRule: BackboneElement {
	override public class var resourceType: String {
		get { return "ContractRule" }
	}
	
	/// Computable Contract Rules.
	public var contentAttachment: Attachment?
	
	/// Computable Contract Rules.
	public var contentReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(contentAttachment: Attachment, contentReference: Reference) {
		self.init(json: nil)
		self.contentAttachment = contentAttachment
		self.contentReference = contentReference
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["contentAttachment"] {
				presentKeys.insert("contentAttachment")
				if let val = exist as? FHIRJSON {
					self.contentAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "contentAttachment", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["contentReference"] {
				presentKeys.insert("contentReference")
				if let val = exist as? FHIRJSON {
					self.contentReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "contentReference", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.contentAttachment && nil == self.contentReference {
				errors.append(FHIRJSONError(key: "content*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contentAttachment = self.contentAttachment {
			json["contentAttachment"] = contentAttachment.asJSON()
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Contract Signer.
 *
 *  Party signing this Contract.
 */
public class ContractSigner: BackboneElement {
	override public class var resourceType: String {
		get { return "ContractSigner" }
	}
	
	/// Contract Signatory Party.
	public var party: Reference?
	
	/// Contract Documentation Signature.
	public var signature: String?
	
	/// Contract Signer Type.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(party: Reference, signature: String, type: Coding) {
		self.init(json: nil)
		self.party = party
		self.signature = signature
		self.type = type
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["party"] {
				presentKeys.insert("party")
				if let val = exist as? FHIRJSON {
					self.party = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "party", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "party"))
			}
			if let exist = js["signature"] {
				presentKeys.insert("signature")
				if let val = exist as? String {
					self.signature = val
				}
				else {
					errors.append(FHIRJSONError(key: "signature", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "signature"))
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: Swift.type(of: exist)))
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
		
		if let party = self.party {
			json["party"] = party.asJSON()
		}
		if let signature = self.signature {
			json["signature"] = signature.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Contract Term List.
 *
 *  One or more Contract Provisions, which may be related and conveyed as a group, and may contain nested groups.
 */
public class ContractTerm: BackboneElement {
	override public class var resourceType: String {
		get { return "ContractTerm" }
	}
	
	/// Contract Term Action.
	public var action: [CodeableConcept]?
	
	/// Contract Term Action Reason.
	public var actionReason: [CodeableConcept]?
	
	/// Contract Term Actor List.
	public var actor: [ContractTermActor]?
	
	/// Contract Term Effective Time.
	public var applies: Period?
	
	/// Nested Contract Term Group.
	public var group: [ContractTerm]?
	
	/// Contract Term identifier.
	public var identifier: Identifier?
	
	/// Contract Term Issue Date Time.
	public var issued: DateTime?
	
	/// Contract Term Subtype.
	public var subType: CodeableConcept?
	
	/// Subject of this Contract Term.
	public var subject: Reference?
	
	/// Human readable Contract term text.
	public var text: String?
	
	/// Contract Term Type.
	public var type: CodeableConcept?
	
	/// Contract Term Valued Item.
	public var valuedItem: [ContractTermValuedItem]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["actionReason"] {
				presentKeys.insert("actionReason")
				if let val = exist as? [FHIRJSON] {
					self.actionReason = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "actionReason", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["actor"] {
				presentKeys.insert("actor")
				if let val = exist as? [FHIRJSON] {
					self.actor = ContractTermActor.instantiate(fromArray: val, owner: self) as? [ContractTermActor]
				}
				else {
					errors.append(FHIRJSONError(key: "actor", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["applies"] {
				presentKeys.insert("applies")
				if let val = exist as? FHIRJSON {
					self.applies = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "applies", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? [FHIRJSON] {
					self.group = ContractTerm.instantiate(fromArray: val, owner: self) as? [ContractTerm]
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["issued"] {
				presentKeys.insert("issued")
				if let val = exist as? String {
					self.issued = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "issued", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["subType"] {
				presentKeys.insert("subType")
				if let val = exist as? FHIRJSON {
					self.subType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subType", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: Swift.type(of: exist)))
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
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["valuedItem"] {
				presentKeys.insert("valuedItem")
				if let val = exist as? [FHIRJSON] {
					self.valuedItem = ContractTermValuedItem.instantiate(fromArray: val, owner: self) as? [ContractTermValuedItem]
				}
				else {
					errors.append(FHIRJSONError(key: "valuedItem", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON() }
		}
		if let actionReason = self.actionReason {
			json["actionReason"] = actionReason.map() { $0.asJSON() }
		}
		if let actor = self.actor {
			json["actor"] = actor.map() { $0.asJSON() }
		}
		if let applies = self.applies {
			json["applies"] = applies.asJSON()
		}
		if let group = self.group {
			json["group"] = group.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let subType = self.subType {
			json["subType"] = subType.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let valuedItem = self.valuedItem {
			json["valuedItem"] = valuedItem.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Contract Term Actor List.
 *
 *  List of actors participating in this Contract Provision.
 */
public class ContractTermActor: BackboneElement {
	override public class var resourceType: String {
		get { return "ContractTermActor" }
	}
	
	/// Contract Term Actor.
	public var entity: Reference?
	
	/// Contract Term Actor Role.
	public var role: [CodeableConcept]?
	
	
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
			if let exist = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? [FHIRJSON] {
					self.role = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
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
		if let role = self.role {
			json["role"] = role.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Contract Term Valued Item.
 *
 *  Contract Provision Valued Item List.
 */
public class ContractTermValuedItem: BackboneElement {
	override public class var resourceType: String {
		get { return "ContractTermValuedItem" }
	}
	
	/// Contract Term Valued Item Effective Tiem.
	public var effectiveTime: DateTime?
	
	/// Contract Term Valued Item Type.
	public var entityCodeableConcept: CodeableConcept?
	
	/// Contract Term Valued Item Type.
	public var entityReference: Reference?
	
	/// Contract Term Valued Item Price Scaling Factor.
	public var factor: NSDecimalNumber?
	
	/// Contract Term Valued Item Identifier.
	public var identifier: Identifier?
	
	/// Total Contract Term Valued Item Value.
	public var net: Quantity?
	
	/// Contract Term Valued Item Difficulty Scaling Factor.
	public var points: NSDecimalNumber?
	
	/// Contract Term Valued Item Count.
	public var quantity: Quantity?
	
	/// Contract Term Valued Item fee, charge, or cost.
	public var unitPrice: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["effectiveTime"] {
				presentKeys.insert("effectiveTime")
				if let val = exist as? String {
					self.effectiveTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "effectiveTime", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["entityCodeableConcept"] {
				presentKeys.insert("entityCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.entityCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "entityCodeableConcept", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["entityReference"] {
				presentKeys.insert("entityReference")
				if let val = exist as? FHIRJSON {
					self.entityReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "entityReference", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["factor"] {
				presentKeys.insert("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "factor", wants: NSNumber.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["net"] {
				presentKeys.insert("net")
				if let val = exist as? FHIRJSON {
					self.net = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "net", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["points"] {
				presentKeys.insert("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "points", wants: NSNumber.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["unitPrice"] {
				presentKeys.insert("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unitPrice", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let effectiveTime = self.effectiveTime {
			json["effectiveTime"] = effectiveTime.asJSON()
		}
		if let entityCodeableConcept = self.entityCodeableConcept {
			json["entityCodeableConcept"] = entityCodeableConcept.asJSON()
		}
		if let entityReference = self.entityReference {
			json["entityReference"] = entityReference.asJSON()
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON()
		}
		
		return json
	}
}


/**
 *  Contract Valued Item.
 *
 *  Contract Valued Item List.
 */
public class ContractValuedItem: BackboneElement {
	override public class var resourceType: String {
		get { return "ContractValuedItem" }
	}
	
	/// Contract Valued Item Effective Tiem.
	public var effectiveTime: DateTime?
	
	/// Contract Valued Item Type.
	public var entityCodeableConcept: CodeableConcept?
	
	/// Contract Valued Item Type.
	public var entityReference: Reference?
	
	/// Contract Valued Item Price Scaling Factor.
	public var factor: NSDecimalNumber?
	
	/// Contract Valued Item Identifier.
	public var identifier: Identifier?
	
	/// Total Contract Valued Item Value.
	public var net: Quantity?
	
	/// Contract Valued Item Difficulty Scaling Factor.
	public var points: NSDecimalNumber?
	
	/// Count of Contract Valued Items.
	public var quantity: Quantity?
	
	/// Contract Valued Item fee, charge, or cost.
	public var unitPrice: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["effectiveTime"] {
				presentKeys.insert("effectiveTime")
				if let val = exist as? String {
					self.effectiveTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "effectiveTime", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["entityCodeableConcept"] {
				presentKeys.insert("entityCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.entityCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "entityCodeableConcept", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["entityReference"] {
				presentKeys.insert("entityReference")
				if let val = exist as? FHIRJSON {
					self.entityReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "entityReference", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["factor"] {
				presentKeys.insert("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "factor", wants: NSNumber.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["net"] {
				presentKeys.insert("net")
				if let val = exist as? FHIRJSON {
					self.net = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "net", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["points"] {
				presentKeys.insert("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "points", wants: NSNumber.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["unitPrice"] {
				presentKeys.insert("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unitPrice", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let effectiveTime = self.effectiveTime {
			json["effectiveTime"] = effectiveTime.asJSON()
		}
		if let entityCodeableConcept = self.entityCodeableConcept {
			json["entityCodeableConcept"] = entityCodeableConcept.asJSON()
		}
		if let entityReference = self.entityReference {
			json["entityReference"] = entityReference.asJSON()
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON()
		}
		
		return json
	}
}

