//
//  SettingViewModel.swift
//  DailyLink
//
//  Created by tokizo on 2022/12/10.
//

import AppKit

final class SettingsViewModel: ObservableObject {
    @Published var urlString: String = ""

    let appStorageClient: AppStorageClient

    init(appStorageClient: AppStorageClient = AppStorageClient.shared) {
        self.appStorageClient = appStorageClient
    }

    func cancel() {
        closeWindow()
    }

    func connect() {
        Task {
            await appStorageClient.setURLString(urlString)
        }

        closeWindow()
    }

    private func closeWindow() {
        _ = NSApplication.shared.windows.map { window in
            if "\(type(of: window))" == "AppKitWindow" {
                window.close()
            }
        }
    }
}
