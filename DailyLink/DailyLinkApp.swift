//
//  DailyLinkApp.swift
//  DailyLink
//
//  Created by tokizo on 2022/12/10.
//

import SwiftUI

@main
struct DailyLinkApp: App {
    init() {
        quitAppIfNeeded()
    }

    var body: some Scene {
        MenuBarExtra("Utility App", systemImage: "eye.fill") {
            AppMenuView()
        }
        .menuBarExtraStyle(.menu)
        Settings {
            SettingsView()
        }
    }

    private func quitAppIfNeeded() {
        Task {
            guard let lastOpenedAt = await AppStorageClient.shared.getLastOpenedAt() else {
                return
            }

            if Calendar.current.isDate(Date(), inSameDayAs: lastOpenedAt) {
                await NSApp.terminate(self)
            }
        }
    }
}
