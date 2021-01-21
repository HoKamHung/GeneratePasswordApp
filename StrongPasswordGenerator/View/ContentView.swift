//
//  ContentView.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 2021/01/09.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: PasswordViewModel

    var body: some View {
        NavigationView {
            VStack {
                List {
                    Button(action: {
                        viewModel.model.alphabatEnable = !viewModel.model.alphabatEnable
                        viewModel.generatePassword()
                    }, label: {
                        ContentViewCheckListItemView(enabled: viewModel.model.alphabatEnable, name: "Alphabatic")
                    })
                    Button(action: {
                        viewModel.model.numberEnable = !viewModel.model.numberEnable
                        viewModel.generatePassword()
                    }, label: {
                        ContentViewCheckListItemView(enabled: viewModel.model.numberEnable, name: "Numeric")
                    })
                    NavigationLink(
                        destination: SpecialCharactersListView(viewModel: SpecialCharactersListViewModel()),
                        label: {
                            Text("Special Characters")
                        }
                    )
                    PasswordLengthListItemView(length: Float(viewModel.model.passwordLength))
                    
                }.listStyle(PlainListStyle())

                PasswordView(password: viewModel.model.password).padding(.top)

            }
            .padding(.top)
            .navigationBarTitle(Text("Password Generator").font(.subheadline), displayMode: .automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: PasswordViewModel())
    }
}
