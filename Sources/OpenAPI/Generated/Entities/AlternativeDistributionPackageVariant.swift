// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AlternativeDistributionPackageVariant: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case alternativeDistributionPackageVariants
	}

	public struct Attributes: Codable {
		public var url: URL?
		public var urlExpirationDate: Date?
		public var alternativeDistributionKeyBlob: String?
		public var fileChecksum: String?

		public init(url: URL? = nil, urlExpirationDate: Date? = nil, alternativeDistributionKeyBlob: String? = nil, fileChecksum: String? = nil) {
			self.url = url
			self.urlExpirationDate = urlExpirationDate
			self.alternativeDistributionKeyBlob = alternativeDistributionKeyBlob
			self.fileChecksum = fileChecksum
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.url = try values.decodeIfPresent(URL.self, forKey: "url")
			self.urlExpirationDate = try values.decodeIfPresent(Date.self, forKey: "urlExpirationDate")
			self.alternativeDistributionKeyBlob = try values.decodeIfPresent(String.self, forKey: "alternativeDistributionKeyBlob")
			self.fileChecksum = try values.decodeIfPresent(String.self, forKey: "fileChecksum")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(url, forKey: "url")
			try values.encodeIfPresent(urlExpirationDate, forKey: "urlExpirationDate")
			try values.encodeIfPresent(alternativeDistributionKeyBlob, forKey: "alternativeDistributionKeyBlob")
			try values.encodeIfPresent(fileChecksum, forKey: "fileChecksum")
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
