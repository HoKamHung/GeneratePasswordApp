//
//  SpecialCharactersListView.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import SwiftUI

struct SpecialCharactersListView: View {
    @ObservedObject var viewModel: SpecialCharactersListViewModel

    var body: some View {
        List() {
            ForEach(viewModel.specialCharactersCheckList, id: \.self) {
                item in
                SpecialCharactersCheckListItemView(item: item)
            }
        }
        .navigationBarTitle("Characters")
        .padding()
    }
}

struct SpecialCharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialCharactersListView(viewModel: SpecialCharactersListViewModel())
    }
}
