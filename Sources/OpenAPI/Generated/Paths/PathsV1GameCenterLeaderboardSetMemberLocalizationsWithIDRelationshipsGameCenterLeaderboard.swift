// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboardSetMemberLocalizations.WithID.Relationships {
	public var gameCenterLeaderboard: GameCenterLeaderboard {
		GameCenterLeaderboard(path: path + "/gameCenterLeaderboard")
	}

	public struct GameCenterLeaderboard {
		/// Path: `/v1/gameCenterLeaderboardSetMemberLocalizations/{id}/relationships/gameCenterLeaderboard`
		public let path: String
	}
}
