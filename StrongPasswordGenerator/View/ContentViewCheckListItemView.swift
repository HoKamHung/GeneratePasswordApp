//
//  ContentViewCheckListView.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import SwiftUI

struct ContentViewCheckListItemView: View {
    @Binding var enabled : Bool
    @State var name : String

    var body: some View {
        HStack {
            Text(name)
                .padding(.leading)
            Spacer()
            Text(enabled ? "✅" : "")
                .padding(.trailing)
        }
        .frame(maxWidth: .infinity)

    }
}

struct ContentViewCheckListItemView_Previews: PreviewProvider {
    static var previews: some View {
        var enabled: Bool = true

        ContentViewCheckListItemView(enabled: Binding<Bool>(get: {
            enabled
        }, set: { value in
            enabled = value
        }), name: "Numeric")
    }
}
