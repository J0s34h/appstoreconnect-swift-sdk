// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionGracePeriod: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case subscriptionGracePeriods
	}

	public struct Attributes: Codable {
		public var isOptIn: Bool?
		public var isSandboxOptIn: Bool?
		public var duration: SubscriptionGracePeriodDuration?
		public var renewalType: RenewalType?

		public enum RenewalType: String, Codable, CaseIterable {
			case allRenewals = "ALL_RENEWALS"
			case paidToPaidOnly = "PAID_TO_PAID_ONLY"
		}

		public init(isOptIn: Bool? = nil, isSandboxOptIn: Bool? = nil, duration: SubscriptionGracePeriodDuration? = nil, renewalType: RenewalType? = nil) {
			self.isOptIn = isOptIn
			self.isSandboxOptIn = isSandboxOptIn
			self.duration = duration
			self.renewalType = renewalType
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.isOptIn = try values.decodeIfPresent(Bool.self, forKey: "optIn")
			self.isSandboxOptIn = try values.decodeIfPresent(Bool.self, forKey: "sandboxOptIn")
			self.duration = try values.decodeIfPresent(SubscriptionGracePeriodDuration.self, forKey: "duration")
			self.renewalType = try values.decodeIfPresent(RenewalType.self, forKey: "renewalType")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(isOptIn, forKey: "optIn")
			try values.encodeIfPresent(isSandboxOptIn, forKey: "sandboxOptIn")
			try values.encodeIfPresent(duration, forKey: "duration")
			try values.encodeIfPresent(renewalType, forKey: "renewalType")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
