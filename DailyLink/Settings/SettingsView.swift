//
//  SettingsView.swift
//  DailyLink
//
//  Created by tokizo on 2022/12/10.
//

import SwiftUI

struct SettingsView: View {
    @ObservedObject var viewModel = SettingsViewModel()
    @State private var okButtonDisabled = true

    var body: some View {
        VStack(alignment: .leading) {
            Form {
                TextField("URL", text: $viewModel.urlString)
            }
            .onChange(of: viewModel.urlString) { newValue in
                okButtonDisabled = URL(string: newValue) == nil
            }
            HStack {
                Spacer()
                Button(action: viewModel.cancel) {
                    Text("Cancel")
                }
                Button(action: viewModel.ok) {
                    Text("OK")
                }
                .disabled(okButtonDisabled)
            }
        }
        .padding(20)
    }
}

#if DEBUG
struct SettingsView_Preview: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
#endif
