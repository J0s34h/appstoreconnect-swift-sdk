// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2.AppAvailabilities.WithID.Relationships {
	public var territoryAvailabilities: TerritoryAvailabilities {
		TerritoryAvailabilities(path: path + "/territoryAvailabilities")
	}

	public struct TerritoryAvailabilities {
		/// Path: `/v2/appAvailabilities/{id}/relationships/territoryAvailabilities`
		public let path: String
	}
}
