//
//  DocumentManifest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/DocumentManifest) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A manifest that defines a set of documents.
 */
public class DocumentManifest: DomainResource {
	override public class var resourceType: String {
		get { return "DocumentManifest" }
	}
	
	/// Who and/or what authored the manifest.
	public var author: [Reference]?
	
	/// The items included.
	public var content: [DocumentManifestContent]?
	
	/// When this document manifest created.
	public var created: DateTime?
	
	/// Human-readable description (title).
	public var description_fhir: String?
	
	/// Other identifiers for the manifest.
	public var identifier: [Identifier]?
	
	/// Unique Identifier for the set of documents.
	public var masterIdentifier: Identifier?
	
	/// Intended to get notified about this set of documents.
	public var recipient: [Reference]?
	
	/// Related things.
	public var related: [DocumentManifestRelated]?
	
	/// The source system/application/software.
	public var source: URL?
	
	/// current | superseded | entered-in-error.
	public var status: String?
	
	/// The subject of the set of documents.
	public var subject: Reference?
	
	/// Kind of document set.
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: [DocumentManifestContent], status: String) {
		self.init(json: nil)
		self.content = content
		self.status = status
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? [FHIRJSON] {
					self.author = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["content"] {
				presentKeys.insert("content")
				if let val = exist as? [FHIRJSON] {
					self.content = DocumentManifestContent.instantiate(fromArray: val, owner: self) as? [DocumentManifestContent]
				}
				else {
					errors.append(FHIRJSONError(key: "content", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "content"))
			}
			if let exist = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: Swift.type(of: exist)))
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
			if let exist = js["masterIdentifier"] {
				presentKeys.insert("masterIdentifier")
				if let val = exist as? FHIRJSON {
					self.masterIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "masterIdentifier", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["recipient"] {
				presentKeys.insert("recipient")
				if let val = exist as? [FHIRJSON] {
					self.recipient = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "recipient", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["related"] {
				presentKeys.insert("related")
				if let val = exist as? [FHIRJSON] {
					self.related = DocumentManifestRelated.instantiate(fromArray: val, owner: self) as? [DocumentManifestRelated]
				}
				else {
					errors.append(FHIRJSONError(key: "related", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["source"] {
				presentKeys.insert("source")
				if let val = exist as? String {
					self.source = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "source", wants: String.self, has: Swift.type(of: exist)))
				}
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
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: Swift.type(of: exist)))
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
		
		if let author = self.author {
			json["author"] = author.map() { $0.asJSON() }
		}
		if let content = self.content {
			json["content"] = content.map() { $0.asJSON() }
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let masterIdentifier = self.masterIdentifier {
			json["masterIdentifier"] = masterIdentifier.asJSON()
		}
		if let recipient = self.recipient {
			json["recipient"] = recipient.map() { $0.asJSON() }
		}
		if let related = self.related {
			json["related"] = related.map() { $0.asJSON() }
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  The items included.
 *
 *  The list of Documents included in the manifest.
 */
public class DocumentManifestContent: BackboneElement {
	override public class var resourceType: String {
		get { return "DocumentManifestContent" }
	}
	
	/// Contents of this set of documents.
	public var pAttachment: Attachment?
	
	/// Contents of this set of documents.
	public var pReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(pAttachment: Attachment, pReference: Reference) {
		self.init(json: nil)
		self.pAttachment = pAttachment
		self.pReference = pReference
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["pAttachment"] {
				presentKeys.insert("pAttachment")
				if let val = exist as? FHIRJSON {
					self.pAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "pAttachment", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["pReference"] {
				presentKeys.insert("pReference")
				if let val = exist as? FHIRJSON {
					self.pReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "pReference", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.pAttachment && nil == self.pReference {
				errors.append(FHIRJSONError(key: "p*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let pAttachment = self.pAttachment {
			json["pAttachment"] = pAttachment.asJSON()
		}
		if let pReference = self.pReference {
			json["pReference"] = pReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Related things.
 *
 *  Related identifiers or resources associated with the DocumentManifest.
 */
public class DocumentManifestRelated: BackboneElement {
	override public class var resourceType: String {
		get { return "DocumentManifestRelated" }
	}
	
	/// Identifiers of things that are related.
	public var identifier: Identifier?
	
	/// Related Resource.
	public var ref: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["ref"] {
				presentKeys.insert("ref")
				if let val = exist as? FHIRJSON {
					self.ref = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ref", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let ref = self.ref {
			json["ref"] = ref.asJSON()
		}
		
		return json
	}
}

