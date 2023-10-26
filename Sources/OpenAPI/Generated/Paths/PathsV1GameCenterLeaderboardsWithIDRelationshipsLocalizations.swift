// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboards.WithID.Relationships {
	public var localizations: Localizations {
		Localizations(path: path + "/localizations")
	}

	public struct Localizations {
		/// Path: `/v1/gameCenterLeaderboards/{id}/relationships/localizations`
		public let path: String
	}
}
