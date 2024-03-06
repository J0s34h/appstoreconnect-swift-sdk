// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var analyticsReportRequests: AnalyticsReportRequests {
		AnalyticsReportRequests(path: path + "/analyticsReportRequests")
	}

	public struct AnalyticsReportRequests {
		/// Path: `/v1/apps/{id}/relationships/analyticsReportRequests`
		public let path: String
	}
}
