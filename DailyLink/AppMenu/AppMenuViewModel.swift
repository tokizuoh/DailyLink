//
//  AppMenuViewModel.swift
//  DailyLink
//
//  Created by tokizo on 2022/12/10.
//

import AppKit

final class AppMenuViewModel {
    let appStorageClient: AppStorageClient

    init(appStorageClient: AppStorageClient = AppStorageClient.shared) {
        self.appStorageClient = appStorageClient
    }

    func onAppear() {
        // TODO: AppStorageの日付と比較して必要があればアプリを終了させる
    }

    func open() {
        Task {
            guard let urlString = await appStorageClient.getURLString(),
                  let url = URL(string: urlString) else {
                return
            }

            NSWorkspace.shared.open(url)
        }
    }

    func openSettings() {
        NSApp.sendAction(Selector(("showSettingsWindow:")), to: nil, from: nil)
        NSApp.activate(ignoringOtherApps: true)
    }

    func quit() {
        NSApp.terminate(self)
    }
}
