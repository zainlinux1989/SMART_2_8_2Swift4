//
//  StructureDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/StructureDefinition) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Structural Definition.
 *
 *  A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in
 *  FHIR, and also for describing extensions, and constraints on resources and data types.
 */
public class StructureDefinition: DomainResource {
	override public class var resourceType: String {
		get { return "StructureDefinition" }
	}
	
	/// Whether the structure is abstract.
	public var abstract: Bool?
	
	/// Structure that this set of constraints applies to.
	public var base: URL?
	
	/// Assist with indexing and finding.
	public var code: [Coding]?
	
	/// Any datatype or resource, including abstract ones.
	public var constrainedType: String?
	
	/// Contact details of the publisher.
	public var contact: [StructureDefinitionContact]?
	
	/// Where the extension can be used in instances.
	public var context: [String]?
	
	/// resource | datatype | mapping | extension.
	public var contextType: String?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date for this version of the StructureDefinition.
	public var date: DateTime?
	
	/// Natural language description of the StructureDefinition.
	public var description_fhir: String?
	
	/// Differential view of the structure.
	public var differential: StructureDefinitionDifferential?
	
	/// Use this name when displaying the value.
	public var display: String?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// FHIR Version this StructureDefinition targets.
	public var fhirVersion: String?
	
	/// Other identifiers for the StructureDefinition.
	public var identifier: [Identifier]?
	
	/// datatype | resource | logical.
	public var kind: String?
	
	/// External specification that the content is mapped to.
	public var mapping: [StructureDefinitionMapping]?
	
	/// Informal name for this StructureDefinition.
	public var name: String?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Scope and Usage this structure definition is for.
	public var requirements: String?
	
	/// Snapshot view of the structure.
	public var snapshot: StructureDefinitionSnapshot?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Absolute URL used to reference this StructureDefinition.
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the StructureDefinition.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(abstract: Bool, kind: String, name: String, status: String, url: URL) {
		self.init(json: nil)
		self.abstract = abstract
		self.kind = kind
		self.name = name
		self.status = status
		self.url = url
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["abstract"] {
				presentKeys.insert("abstract")
				if let val = exist as? Bool {
					self.abstract = val
				}
				else {
					errors.append(FHIRJSONError(key: "abstract", wants: Bool.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "abstract"))
			}
			if let exist = js["base"] {
				presentKeys.insert("base")
				if let val = exist as? String {
					self.base = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "base", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? [FHIRJSON] {
					self.code = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["constrainedType"] {
				presentKeys.insert("constrainedType")
				if let val = exist as? String {
					self.constrainedType = val
				}
				else {
					errors.append(FHIRJSONError(key: "constrainedType", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = StructureDefinitionContact.instantiate(fromArray: val, owner: self) as? [StructureDefinitionContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? [String] {
					self.context = val
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: Array<String>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["contextType"] {
				presentKeys.insert("contextType")
				if let val = exist as? String {
					self.contextType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contextType", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["copyright"] {
				presentKeys.insert("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(FHIRJSONError(key: "copyright", wants: String.self, has: Swift.type(of: exist)))
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
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["differential"] {
				presentKeys.insert("differential")
				if let val = exist as? FHIRJSON {
					self.differential = StructureDefinitionDifferential(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "differential", wants: FHIRJSON.self, has: Swift.type(of: exist)))
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
			if let exist = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["fhirVersion"] {
				presentKeys.insert("fhirVersion")
				if let val = exist as? String {
					self.fhirVersion = val
				}
				else {
					errors.append(FHIRJSONError(key: "fhirVersion", wants: String.self, has: Swift.type(of: exist)))
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
			if let exist = js["kind"] {
				presentKeys.insert("kind")
				if let val = exist as? String {
					self.kind = val
				}
				else {
					errors.append(FHIRJSONError(key: "kind", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "kind"))
			}
			if let exist = js["mapping"] {
				presentKeys.insert("mapping")
				if let val = exist as? [FHIRJSON] {
					self.mapping = StructureDefinitionMapping.instantiate(fromArray: val, owner: self) as? [StructureDefinitionMapping]
				}
				else {
					errors.append(FHIRJSONError(key: "mapping", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
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
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["requirements"] {
				presentKeys.insert("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(FHIRJSONError(key: "requirements", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["snapshot"] {
				presentKeys.insert("snapshot")
				if let val = exist as? FHIRJSON {
					self.snapshot = StructureDefinitionSnapshot(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "snapshot", wants: FHIRJSON.self, has: Swift.type(of: exist)))
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
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
			if let exist = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
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
		
		if let abstract = self.abstract {
			json["abstract"] = abstract.asJSON()
		}
		if let base = self.base {
			json["base"] = base.asJSON()
		}
		if let code = self.code {
			json["code"] = code.map() { $0.asJSON() }
		}
		if let constrainedType = self.constrainedType {
			json["constrainedType"] = constrainedType.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
		}
		if let context = self.context {
			var arr = [Any]()
			for val in context {
				arr.append(val.asJSON())
			}
			json["context"] = arr
		}
		if let contextType = self.contextType {
			json["contextType"] = contextType.asJSON()
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let differential = self.differential {
			json["differential"] = differential.asJSON()
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fhirVersion = self.fhirVersion {
			json["fhirVersion"] = fhirVersion.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let kind = self.kind {
			json["kind"] = kind.asJSON()
		}
		if let mapping = self.mapping {
			json["mapping"] = mapping.map() { $0.asJSON() }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let snapshot = self.snapshot {
			json["snapshot"] = snapshot.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON() }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
public class StructureDefinitionContact: BackboneElement {
	override public class var resourceType: String {
		get { return "StructureDefinitionContact" }
	}
	
	/// Name of a individual to contact.
	public var name: String?
	
	/// Contact details for individual or publisher.
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: Swift.type(of: exist)))
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
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Differential view of the structure.
 *
 *  A differential view is expressed relative to the base StructureDefinition - a statement of differences that it
 *  applies.
 */
public class StructureDefinitionDifferential: BackboneElement {
	override public class var resourceType: String {
		get { return "StructureDefinitionDifferential" }
	}
	
	/// Definition of elements in the resource (if no StructureDefinition).
	public var element: [ElementDefinition]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(element: [ElementDefinition]) {
		self.init(json: nil)
		self.element = element
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["element"] {
				presentKeys.insert("element")
				if let val = exist as? [FHIRJSON] {
					self.element = ElementDefinition.instantiate(fromArray: val, owner: self) as? [ElementDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "element", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "element"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let element = self.element {
			json["element"] = element.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  External specification that the content is mapped to.
 *
 *  An external specification that the content is mapped to.
 */
public class StructureDefinitionMapping: BackboneElement {
	override public class var resourceType: String {
		get { return "StructureDefinitionMapping" }
	}
	
	/// Versions, Issues, Scope limitations etc..
	public var comments: String?
	
	/// Internal id when this mapping is used.
	public var identity: String?
	
	/// Names what this mapping refers to.
	public var name: String?
	
	/// Identifies what this mapping refers to.
	public var uri: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identity: String) {
		self.init(json: nil)
		self.identity = identity
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["comments"] {
				presentKeys.insert("comments")
				if let val = exist as? String {
					self.comments = val
				}
				else {
					errors.append(FHIRJSONError(key: "comments", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["identity"] {
				presentKeys.insert("identity")
				if let val = exist as? String {
					self.identity = val
				}
				else {
					errors.append(FHIRJSONError(key: "identity", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identity"))
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
			if let exist = js["uri"] {
				presentKeys.insert("uri")
				if let val = exist as? String {
					self.uri = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "uri", wants: String.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let comments = self.comments {
			json["comments"] = comments.asJSON()
		}
		if let identity = self.identity {
			json["identity"] = identity.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let uri = self.uri {
			json["uri"] = uri.asJSON()
		}
		
		return json
	}
}


/**
 *  Snapshot view of the structure.
 *
 *  A snapshot view is expressed in a stand alone form that can be used and interpreted without considering the base
 *  StructureDefinition.
 */
public class StructureDefinitionSnapshot: BackboneElement {
	override public class var resourceType: String {
		get { return "StructureDefinitionSnapshot" }
	}
	
	/// Definition of elements in the resource (if no StructureDefinition).
	public var element: [ElementDefinition]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(element: [ElementDefinition]) {
		self.init(json: nil)
		self.element = element
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["element"] {
				presentKeys.insert("element")
				if let val = exist as? [FHIRJSON] {
					self.element = ElementDefinition.instantiate(fromArray: val, owner: self) as? [ElementDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "element", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "element"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let element = self.element {
			json["element"] = element.map() { $0.asJSON() }
		}
		
		return json
	}
}

