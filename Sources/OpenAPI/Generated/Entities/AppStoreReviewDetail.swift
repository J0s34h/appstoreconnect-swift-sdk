// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppStoreReviewDetail: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case appStoreReviewDetails
	}

	public struct Attributes: Codable {
		public var contactFirstName: String?
		public var contactLastName: String?
		public var contactPhone: String?
		public var contactEmail: String?
		public var demoAccountName: String?
		public var demoAccountPassword: String?
		public var isDemoAccountRequired: Bool?
		public var notes: String?

		public init(contactFirstName: String? = nil, contactLastName: String? = nil, contactPhone: String? = nil, contactEmail: String? = nil, demoAccountName: String? = nil, demoAccountPassword: String? = nil, isDemoAccountRequired: Bool? = nil, notes: String? = nil) {
			self.contactFirstName = contactFirstName
			self.contactLastName = contactLastName
			self.contactPhone = contactPhone
			self.contactEmail = contactEmail
			self.demoAccountName = demoAccountName
			self.demoAccountPassword = demoAccountPassword
			self.isDemoAccountRequired = isDemoAccountRequired
			self.notes = notes
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.contactFirstName = try values.decodeIfPresent(String.self, forKey: "contactFirstName")
			self.contactLastName = try values.decodeIfPresent(String.self, forKey: "contactLastName")
			self.contactPhone = try values.decodeIfPresent(String.self, forKey: "contactPhone")
			self.contactEmail = try values.decodeIfPresent(String.self, forKey: "contactEmail")
			self.demoAccountName = try values.decodeIfPresent(String.self, forKey: "demoAccountName")
			self.demoAccountPassword = try values.decodeIfPresent(String.self, forKey: "demoAccountPassword")
			self.isDemoAccountRequired = try values.decodeIfPresent(Bool.self, forKey: "demoAccountRequired")
			self.notes = try values.decodeIfPresent(String.self, forKey: "notes")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(contactFirstName, forKey: "contactFirstName")
			try values.encodeIfPresent(contactLastName, forKey: "contactLastName")
			try values.encodeIfPresent(contactPhone, forKey: "contactPhone")
			try values.encodeIfPresent(contactEmail, forKey: "contactEmail")
			try values.encodeIfPresent(demoAccountName, forKey: "demoAccountName")
			try values.encodeIfPresent(demoAccountPassword, forKey: "demoAccountPassword")
			try values.encodeIfPresent(isDemoAccountRequired, forKey: "demoAccountRequired")
			try values.encodeIfPresent(notes, forKey: "notes")
		}
	}

	public struct Relationships: Codable {
		public var appStoreVersion: AppStoreVersion?
		public var appStoreReviewAttachments: AppStoreReviewAttachments?

		public struct AppStoreVersion: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appStoreVersions
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct AppStoreReviewAttachments: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appStoreReviewAttachments
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(appStoreVersion: AppStoreVersion? = nil, appStoreReviewAttachments: AppStoreReviewAttachments? = nil) {
			self.appStoreVersion = appStoreVersion
			self.appStoreReviewAttachments = appStoreReviewAttachments
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.appStoreVersion = try values.decodeIfPresent(AppStoreVersion.self, forKey: "appStoreVersion")
			self.appStoreReviewAttachments = try values.decodeIfPresent(AppStoreReviewAttachments.self, forKey: "appStoreReviewAttachments")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(appStoreVersion, forKey: "appStoreVersion")
			try values.encodeIfPresent(appStoreReviewAttachments, forKey: "appStoreReviewAttachments")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
