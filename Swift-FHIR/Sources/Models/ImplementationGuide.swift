//
//  ImplementationGuide.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ImplementationGuide) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A set of rules about how FHIR is used.
 *
 *  A set of rules or how FHIR is used to solve a particular problem. This resource is used to gather all the parts of
 *  an implementation guide into a logical whole, and to publish a computable definition of all the parts.
 */
public class ImplementationGuide: DomainResource {
	override public class var resourceType: String {
		get { return "ImplementationGuide" }
	}
	
	/// Image, css, script, etc..
	public var binary: [URL]?
	
	/// Contact details of the publisher.
	public var contact: [ImplementationGuideContact]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date for this version of the Implementation Guide.
	public var date: DateTime?
	
	/// Another Implementation guide this depends on.
	public var dependency: [ImplementationGuideDependency]?
	
	/// Natural language description of the Implementation Guide.
	public var description_fhir: String?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// FHIR Version this Implementation Guide targets.
	public var fhirVersion: String?
	
	/// Profiles that apply globally.
	public var global: [ImplementationGuideGlobal]?
	
	/// Informal name for this Implementation Guide.
	public var name: String?
	
	/// Group of resources as used in .page.package.
	public var package: [ImplementationGuidePackage]?
	
	/// Page/Section in the Guide.
	public var page: ImplementationGuidePage?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Absolute URL used to reference this Implementation Guide.
	public var url: URL?
	
	/// The implementation guide is intended to support these contexts.
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the Implementation Guide.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, package: [ImplementationGuidePackage], page: ImplementationGuidePage, status: String, url: URL) {
		self.init(json: nil)
		self.name = name
		self.package = package
		self.page = page
		self.status = status
		self.url = url
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["binary"] {
				presentKeys.insert("binary")
				if let val = exist as? [String] {
					self.binary = URL.instantiate(fromArray: val)
				}
				else {
					errors.append(FHIRJSONError(key: "binary", wants: Array<String>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ImplementationGuideContact.instantiate(fromArray: val, owner: self) as? [ImplementationGuideContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
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
			if let exist = js["dependency"] {
				presentKeys.insert("dependency")
				if let val = exist as? [FHIRJSON] {
					self.dependency = ImplementationGuideDependency.instantiate(fromArray: val, owner: self) as? [ImplementationGuideDependency]
				}
				else {
					errors.append(FHIRJSONError(key: "dependency", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
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
			if let exist = js["global"] {
				presentKeys.insert("global")
				if let val = exist as? [FHIRJSON] {
					self.global = ImplementationGuideGlobal.instantiate(fromArray: val, owner: self) as? [ImplementationGuideGlobal]
				}
				else {
					errors.append(FHIRJSONError(key: "global", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
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
			if let exist = js["package"] {
				presentKeys.insert("package")
				if let val = exist as? [FHIRJSON] {
					self.package = ImplementationGuidePackage.instantiate(fromArray: val, owner: self) as? [ImplementationGuidePackage]
				}
				else {
					errors.append(FHIRJSONError(key: "package", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "package"))
			}
			if let exist = js["page"] {
				presentKeys.insert("page")
				if let val = exist as? FHIRJSON {
					self.page = ImplementationGuidePage(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "page", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "page"))
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
		
		if let binary = self.binary {
			var arr = [Any]()
			for val in binary {
				arr.append(val.asJSON())
			}
			json["binary"] = arr
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let dependency = self.dependency {
			json["dependency"] = dependency.map() { $0.asJSON() }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fhirVersion = self.fhirVersion {
			json["fhirVersion"] = fhirVersion.asJSON()
		}
		if let global = self.global {
			json["global"] = global.map() { $0.asJSON() }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let package = self.package {
			json["package"] = package.map() { $0.asJSON() }
		}
		if let page = self.page {
			json["page"] = page.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
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
public class ImplementationGuideContact: BackboneElement {
	override public class var resourceType: String {
		get { return "ImplementationGuideContact" }
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
 *  Another Implementation guide this depends on.
 *
 *  Another implementation guide that this implementation depends on. Typically, an implementation guide uses value
 *  sets, profiles etc.defined in other implementation guides.
 */
public class ImplementationGuideDependency: BackboneElement {
	override public class var resourceType: String {
		get { return "ImplementationGuideDependency" }
	}
	
	/// reference | inclusion.
	public var type: String?
	
	/// Where to find dependency.
	public var uri: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String, uri: URL) {
		self.init(json: nil)
		self.type = type
		self.uri = uri
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
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
			if let exist = js["uri"] {
				presentKeys.insert("uri")
				if let val = exist as? String {
					self.uri = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "uri", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "uri"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let uri = self.uri {
			json["uri"] = uri.asJSON()
		}
		
		return json
	}
}


/**
 *  Profiles that apply globally.
 *
 *  A set of profiles that all resources covered by this implementation guide must conform to.
 */
public class ImplementationGuideGlobal: BackboneElement {
	override public class var resourceType: String {
		get { return "ImplementationGuideGlobal" }
	}
	
	/// Profile that all resources must conform to.
	public var profile: Reference?
	
	/// Type this profiles applies to.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(profile: Reference, type: String) {
		self.init(json: nil)
		self.profile = profile
		self.type = type
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "profile"))
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
		
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Group of resources as used in .page.package.
 *
 *  A logical group of resources. Logical groups can be used when building pages.
 */
public class ImplementationGuidePackage: BackboneElement {
	override public class var resourceType: String {
		get { return "ImplementationGuidePackage" }
	}
	
	/// Human readable text describing the package.
	public var description_fhir: String?
	
	/// Name used .page.package.
	public var name: String?
	
	/// Resource in the implementation guide.
	public var resource: [ImplementationGuidePackageResource]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, resource: [ImplementationGuidePackageResource]) {
		self.init(json: nil)
		self.name = name
		self.resource = resource
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: Swift.type(of: exist)))
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
			if let exist = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? [FHIRJSON] {
					self.resource = ImplementationGuidePackageResource.instantiate(fromArray: val, owner: self) as? [ImplementationGuidePackageResource]
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "resource"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let resource = self.resource {
			json["resource"] = resource.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Resource in the implementation guide.
 *
 *  A resource that is part of the implementation guide. Conformance resources (value set, structure definition,
 *  conformance statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an
 *  example resource.
 */
public class ImplementationGuidePackageResource: BackboneElement {
	override public class var resourceType: String {
		get { return "ImplementationGuidePackageResource" }
	}
	
	/// Short code to identify the resource.
	public var acronym: String?
	
	/// Reason why included in guide.
	public var description_fhir: String?
	
	/// Resource this is an example of (if applicable).
	public var exampleFor: Reference?
	
	/// Human Name for the resource.
	public var name: String?
	
	/// example | terminology | profile | extension | dictionary | logical.
	public var purpose: String?
	
	/// Location of the resource.
	public var sourceReference: Reference?
	
	/// Location of the resource.
	public var sourceUri: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(purpose: String, sourceReference: Reference, sourceUri: URL) {
		self.init(json: nil)
		self.purpose = purpose
		self.sourceReference = sourceReference
		self.sourceUri = sourceUri
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["acronym"] {
				presentKeys.insert("acronym")
				if let val = exist as? String {
					self.acronym = val
				}
				else {
					errors.append(FHIRJSONError(key: "acronym", wants: String.self, has: Swift.type(of: exist)))
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
			if let exist = js["exampleFor"] {
				presentKeys.insert("exampleFor")
				if let val = exist as? FHIRJSON {
					self.exampleFor = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleFor", wants: FHIRJSON.self, has: Swift.type(of: exist)))
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
			if let exist = js["purpose"] {
				presentKeys.insert("purpose")
				if let val = exist as? String {
					self.purpose = val
				}
				else {
					errors.append(FHIRJSONError(key: "purpose", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "purpose"))
			}
			if let exist = js["sourceReference"] {
				presentKeys.insert("sourceReference")
				if let val = exist as? FHIRJSON {
					self.sourceReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "sourceReference", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["sourceUri"] {
				presentKeys.insert("sourceUri")
				if let val = exist as? String {
					self.sourceUri = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "sourceUri", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.sourceUri && nil == self.sourceReference {
				errors.append(FHIRJSONError(key: "source*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let acronym = self.acronym {
			json["acronym"] = acronym.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let exampleFor = self.exampleFor {
			json["exampleFor"] = exampleFor.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let sourceReference = self.sourceReference {
			json["sourceReference"] = sourceReference.asJSON()
		}
		if let sourceUri = self.sourceUri {
			json["sourceUri"] = sourceUri.asJSON()
		}
		
		return json
	}
}


/**
 *  Page/Section in the Guide.
 *
 *  A page / section in the implementation guide. The root page is the implementation guide home page.
 */
public class ImplementationGuidePage: BackboneElement {
	override public class var resourceType: String {
		get { return "ImplementationGuidePage" }
	}
	
	/// Format of the page (e.g. html, markdown, etc.).
	public var format: String?
	
	/// page | example | list | include | directory | dictionary | toc | resource.
	public var kind: String?
	
	/// Short name shown for navigational assistance.
	public var name: String?
	
	/// Name of package to include.
	public var package: [String]?
	
	/// Nested Pages / Sections.
	public var page: [ImplementationGuidePage]?
	
	/// Where to find that page.
	public var source: URL?
	
	/// Kind of resource to include in the list.
	public var type: [String]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(kind: String, name: String, source: URL) {
		self.init(json: nil)
		self.kind = kind
		self.name = name
		self.source = source
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["format"] {
				presentKeys.insert("format")
				if let val = exist as? String {
					self.format = val
				}
				else {
					errors.append(FHIRJSONError(key: "format", wants: String.self, has: Swift.type(of: exist)))
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
			if let exist = js["package"] {
				presentKeys.insert("package")
				if let val = exist as? [String] {
					self.package = val
				}
				else {
					errors.append(FHIRJSONError(key: "package", wants: Array<String>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["page"] {
				presentKeys.insert("page")
				if let val = exist as? [FHIRJSON] {
					self.page = ImplementationGuidePage.instantiate(fromArray: val, owner: self) as? [ImplementationGuidePage]
				}
				else {
					errors.append(FHIRJSONError(key: "page", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
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
			else {
				errors.append(FHIRJSONError(key: "source"))
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [String] {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<String>.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let format = self.format {
			json["format"] = format.asJSON()
		}
		if let kind = self.kind {
			json["kind"] = kind.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let package = self.package {
			var arr = [Any]()
			for val in package {
				arr.append(val.asJSON())
			}
			json["package"] = arr
		}
		if let page = self.page {
			json["page"] = page.map() { $0.asJSON() }
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let type = self.type {
			var arr = [Any]()
			for val in type {
				arr.append(val.asJSON())
			}
			json["type"] = arr
		}
		
		return json
	}
}

