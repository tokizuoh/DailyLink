//
//  AppStorageClient.swift
//  DailyLink
//
//  Created by tokizo on 2022/12/10.
//

import SwiftUI

actor AppStorageClient {
    static var shared = AppStorageClient()

    private init() {}

    @AppStorage("urlString") var urlString: String?
    @AppStorage("lastOpenedAt") var lastOpenedAt: Date?

    func getURLString() -> String? {
        return urlString
    }

    func setURLString(_ newValue: String?) {
        urlString = newValue
    }

    func getLastOpenedAt() -> Date? {
        return lastOpenedAt
    }

    func setLastOpenedAt(_ newValue: Date?) {
        lastOpenedAt = newValue
    }
}

extension Date: RawRepresentable {
    public var rawValue: String {
        self.timeIntervalSinceReferenceDate.description
    }

    public init?(rawValue: String) {
        self = Date(timeIntervalSinceReferenceDate: Double(rawValue) ?? 0.0)
    }
}
