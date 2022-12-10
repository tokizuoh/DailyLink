//
//  SettingsView.swift
//  DailyLink
//
//  Created by tokizo on 2022/12/10.
//

import SwiftUI

struct SettingsView: View {
    @State private var connectButtonDisabled = true
    @State private var urlString: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            Form {
                TextField("URL:", text: $urlString)
            }
            HStack {
                Spacer()
                Button(action: {}) {
                    Text("Cancel")
                }
                Button(action: {}) {
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
