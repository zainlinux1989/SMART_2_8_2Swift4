//
//  Subscription.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Subscription) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A server push subscription criteria.
 *
 *  The subscription resource is used to define a push based subscription from a server to another system. Once a
 *  subscription is registered with the server, the server checks every resource that is created or updated, and if the
 *  resource matches the given criteria, it sends a message on the defined "channel" so that another system is able to
 *  take an appropriate action.
 */
public class Subscription: DomainResource {
	override public class var resourceType: String {
		get { return "Subscription" }
	}
	
	/// The channel on which to report matches to the criteria.
	public var channel: SubscriptionChannel?
	
	/// Contact details for source (e.g. troubleshooting).
	public var contact: [ContactPoint]?
	
	/// Rule for server push criteria.
	public var criteria: String?
	
	/// When to automatically delete the subscription.
	public var end: Instant?
	
	/// Latest error note.
	public var error: String?
	
	/// Description of why this subscription was created.
	public var reason: String?
	
	/// requested | active | error | off.
	public var status: String?
	
	/// A tag to add to matching resources.
	public var tag: [Coding]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(channel: SubscriptionChannel, criteria: String, reason: String, status: String) {
		self.init(json: nil)
		self.channel = channel
		self.criteria = criteria
		self.reason = reason
		self.status = status
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["channel"] {
				presentKeys.insert("channel")
				if let val = exist as? FHIRJSON {
					self.channel = SubscriptionChannel(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "channel", wants: FHIRJSON.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "channel"))
			}
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["criteria"] {
				presentKeys.insert("criteria")
				if let val = exist as? String {
					self.criteria = val
				}
				else {
					errors.append(FHIRJSONError(key: "criteria", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "criteria"))
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
			if let exist = js["error"] {
				presentKeys.insert("error")
				if let val = exist as? String {
					self.error = val
				}
				else {
					errors.append(FHIRJSONError(key: "error", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? String {
					self.reason = val
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "reason"))
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
			if let exist = js["tag"] {
				presentKeys.insert("tag")
				if let val = exist as? [FHIRJSON] {
					self.tag = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "tag", wants: Array<FHIRJSON>.self, has: Swift.type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let channel = self.channel {
			json["channel"] = channel.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
		}
		if let criteria = self.criteria {
			json["criteria"] = criteria.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let error = self.error {
			json["error"] = error.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let tag = self.tag {
			json["tag"] = tag.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  The channel on which to report matches to the criteria.
 *
 *  Details where to send notifications when resources are received that meet the criteria.
 */
public class SubscriptionChannel: BackboneElement {
	override public class var resourceType: String {
		get { return "SubscriptionChannel" }
	}
	
	/// Where the channel points to.
	public var endpoint: URL?
	
	/// Usage depends on the channel type.
	public var header: String?
	
	/// Mimetype to send, or blank for no payload.
	public var payload: String?
	
	/// rest-hook | websocket | email | sms | message.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(payload: String, type: String) {
		self.init(json: nil)
		self.payload = payload
		self.type = type
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["endpoint"] {
				presentKeys.insert("endpoint")
				if let val = exist as? String {
					self.endpoint = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "endpoint", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["header"] {
				presentKeys.insert("header")
				if let val = exist as? String {
					self.header = val
				}
				else {
					errors.append(FHIRJSONError(key: "header", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			if let exist = js["payload"] {
				presentKeys.insert("payload")
				if let val = exist as? String {
					self.payload = val
				}
				else {
					errors.append(FHIRJSONError(key: "payload", wants: String.self, has: Swift.type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "payload"))
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
		
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.asJSON()
		}
		if let header = self.header {
			json["header"] = header.asJSON()
		}
		if let payload = self.payload {
			json["payload"] = payload.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

