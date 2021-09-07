//
//  ContentView.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 2021/01/09.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: PasswordViewModel
    @State private var alphabatEnable: Bool
    @State private var numberEnable: Bool

    init(viewModel: PasswordViewModel)
    {
        self.viewModel = viewModel
        self.alphabatEnable = true
        self.numberEnable = true
    }

    var body: some View {
        NavigationView {
            VStack {
                List {
                    Button(action: {
                        viewModel.model.alphabatEnable = !viewModel.model.alphabatEnable
                        alphabatEnable = viewModel.model.alphabatEnable
                        viewModel.generatePassword()
                    }, label: {
                        ContentViewCheckListItemView(enabled: $alphabatEnable, name: "Alphabatic")
                    })
                    Button(action: {
                        viewModel.model.numberEnable = !viewModel.model.numberEnable
                        numberEnable = viewModel.model.numberEnable
                        viewModel.generatePassword()
                    }, label: {
                        ContentViewCheckListItemView(enabled: $numberEnable, name: "Numeric")
                    })
                    NavigationLink(
                        destination: SpecialCharactersListView(viewModel: viewModel),
                        label: {
                            Text("Special Characters")
                        }
                    )
                    .padding()
                    PasswordLengthListItemView(viewModel: viewModel, length: Float(viewModel.model.passwordLength))

                    
                }.listStyle(PlainListStyle())
                Spacer()
                PasswordView(viewModel: viewModel).padding(.top)
                Spacer()
                Text("Copyright")

            }
            .padding(.top)
            .navigationBarTitle(Text("Password Generator"), displayMode: .automatic)
        }
        .onAppear(perform: {self.viewModel.generatePassword()})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: PasswordViewModel())
    }
}
