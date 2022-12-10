//
//  AppMenuView.swift
//  DailyLink
//
//  Created by tokizo on 2022/12/10.
//

import SwiftUI

struct AppMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                // TODO: Open
            } label: {
                Label("Open", systemImage: "arrow.up.right")
            }
            Divider()

            Button {
                // TODO: Open Settings
            } label: {
                Text("Settings")
            }
            Button {
                NSApp.terminate(self)
            } label: {
                Text("Quit DailyLink")
            }

        }
    }
}

#if DEBUG
struct AppMenuView_Previews: PreviewProvider {
    static var previews: some View {
        AppMenuView()
    }
}
#endif
