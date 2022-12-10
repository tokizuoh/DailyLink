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

    func getURLString() -> String? {
        return urlString
    }

    func setURLString(_ newValue: String?) {
        urlString = newValue
    }
}
