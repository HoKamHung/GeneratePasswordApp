//
//  PasswordView.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import SwiftUI

struct PasswordView: View {
    @State public var password: String


    var body: some View {
        VStack (alignment: .leading){
            Text("Password:")
                .frame(maxWidth: .infinity)
                .padding(.leading)
            HStack {
                TextField("Password", text: $password).padding(.all)
                Button {
                    //viewModel.to = key
                } label: {
                    Text("Copy")
                }.padding()

            }
        }.padding(.top)
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView(password: "1234")
    }
}
