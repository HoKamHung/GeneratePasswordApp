//
//  PasswordView.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import SwiftUI

struct PasswordView: View {
    @ObservedObject var viewModel: PasswordViewModel

    var body: some View {
        VStack (alignment: .leading){
            Text("Password:")
                .frame(maxWidth: .infinity)
                .padding(.leading)
            HStack {
//                TextField("Password", text: viewModel.password).padding(.all)
                Spacer()
                Button {
                    // Copy to clipboard
                    viewModel.copyToClipboard()
                } label: {
                    Text(viewModel.password)
                        .multilineTextAlignment(.center)
                }.padding()
                Spacer()
            }
        }.padding(.top)
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView(viewModel: .init())
    }
}
