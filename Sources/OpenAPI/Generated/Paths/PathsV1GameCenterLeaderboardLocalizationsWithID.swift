// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboardLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/gameCenterLeaderboardLocalizations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardLocalizationResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]?
			public var include: [Include]?
			public var fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages]?

			public enum FieldsGameCenterLeaderboardLocalizations: String, Codable, CaseIterable {
				case formatterOverride
				case formatterSuffix
				case formatterSuffixSingular
				case gameCenterLeaderboard
				case gameCenterLeaderboardImage
				case locale
				case name
			}

			public enum Include: String, Codable, CaseIterable {
				case gameCenterLeaderboard
				case gameCenterLeaderboardImage
			}

			public enum FieldsGameCenterLeaderboardImages: String, Codable, CaseIterable {
				case assetDeliveryState
				case fileName
				case fileSize
				case gameCenterLeaderboardLocalization
				case imageAsset
				case uploadOperations
				case uploaded
			}

			public init(fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]? = nil, include: [Include]? = nil, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages]? = nil) {
				self.fieldsGameCenterLeaderboardLocalizations = fieldsGameCenterLeaderboardLocalizations
				self.include = include
				self.fieldsGameCenterLeaderboardImages = fieldsGameCenterLeaderboardImages
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterLeaderboardLocalizations, forKey: "fields[gameCenterLeaderboardLocalizations]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsGameCenterLeaderboardImages, forKey: "fields[gameCenterLeaderboardImages]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterLeaderboardLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardLocalizationResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
