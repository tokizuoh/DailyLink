//
//  AppMenuViewModel.swift
//  DailyLink
//
//  Created by tokizo on 2022/12/10.
//

import AppKit

final class AppMenuViewModel {
    func openSettings() {
        NSApp.sendAction(Selector(("showSettingsWindow:")), to: nil, from: nil)
        NSApp.activate(ignoringOtherApps: true)
    }
}
