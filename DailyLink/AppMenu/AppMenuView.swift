//
//  AppMenuView.swift
//  DailyLink
//
//  Created by tokizo on 2022/12/10.
//

import SwiftUI

struct AppMenuView: View {
    let viewModel = AppMenuViewModel()

    var body: some View {
        VStack(alignment: .leading) {
            Button(action: viewModel.open) {
                Text("Open")
            }
            Divider()
            Button(action: viewModel.openSettings) {
                Text("Settings...")
            }
            Button(action: viewModel.quit) {
                Text("Quit DailyLink")
            }
        }
        .onAppear(perform: viewModel.onAppear)
    }
}

#if DEBUG
struct AppMenuView_Previews: PreviewProvider {
    static var previews: some View {
        AppMenuView()
    }
}
#endif
