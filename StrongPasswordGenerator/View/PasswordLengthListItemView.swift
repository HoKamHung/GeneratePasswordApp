//
//  PasswordLengthListItemView.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import SwiftUI

struct PasswordLengthListItemView: View {
    @ObservedObject var viewModel: PasswordViewModel
    @State var length : Float

    var body: some View {
        HStack {
            Slider(value: Binding(get: {
                self.length
            }, set: { value in
                self.length = value
                viewModel.model.passwordLength = Int(value)
                viewModel.generatePassword()
            }), in: 1...100) {
                Text("Length")
            }

            Text(String(Int(length))).padding()
        }
    }
}

struct PasswordLengthListItemView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordLengthListItemView(viewModel: .init(), length: 10)
    }
}
