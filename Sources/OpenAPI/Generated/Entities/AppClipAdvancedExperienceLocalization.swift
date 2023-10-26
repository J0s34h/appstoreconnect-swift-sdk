// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppClipAdvancedExperienceLocalization: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?

	public enum `Type`: String, Codable, CaseIterable {
		case appClipAdvancedExperienceLocalizations
	}

	public struct Attributes: Codable {
		public var language: AppClipAdvancedExperienceLanguage?
		public var title: String?
		public var subtitle: String?

		public init(language: AppClipAdvancedExperienceLanguage? = nil, title: String? = nil, subtitle: String? = nil) {
			self.language = language
			self.title = title
			self.subtitle = subtitle
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.language = try values.decodeIfPresent(AppClipAdvancedExperienceLanguage.self, forKey: "language")
			self.title = try values.decodeIfPresent(String.self, forKey: "title")
			self.subtitle = try values.decodeIfPresent(String.self, forKey: "subtitle")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(language, forKey: "language")
			try values.encodeIfPresent(title, forKey: "title")
			try values.encodeIfPresent(subtitle, forKey: "subtitle")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
	}
}
