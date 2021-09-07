//
//  SpecialCharactersListView.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import SwiftUI

struct SpecialCharactersListView: View {
    @ObservedObject var viewModel: PasswordViewModel

    var body: some View {
        List() {
            ForEach(viewModel.specialCharactersCheckList.indices) {
                index in
                Button(action: {
                    viewModel.specialCharactersCheckList[index].checked = !viewModel.specialCharactersCheckList[index].checked
                    viewModel.generatePassword()
                }, label: {
                    SpecialCharactersCheckListItemView(item: $viewModel.specialCharactersCheckList[index])
                })
            }
        }
        .navigationBarTitle("Characters")
        .padding()
    }
}

struct SpecialCharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialCharactersListView(viewModel: PasswordViewModel())
    }
}
