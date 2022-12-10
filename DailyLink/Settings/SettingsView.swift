//
//  SettingsView.swift
//  DailyLink
//
//  Created by tokizo on 2022/12/10.
//

import SwiftUI

struct SettingsView: View {
    @ObservedObject var viewModel = SettingsViewModel()
    @State private var connectButtonDisabled = true

    var body: some View {
        VStack(alignment: .leading) {
            Form {
                TextField("URL:", text: $viewModel.urlString)
            }
            .onChange(of: viewModel.urlString) { newValue in
                connectButtonDisabled = URL(string: newValue) == nil
            }
            HStack {
                Spacer()
                Button(action: viewModel.cancel) {
                    Text("Cancel")
                }
                Button(action: viewModel.connect) {
                    Text("Connect")
                }
                .disabled(connectButtonDisabled)
            }
        }
        .padding(20)
    }
}

#if DEBUG
// swiftlint:disable type_name
struct SettingsView_Preview: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
// swiftlint:enable type_name
#endif
