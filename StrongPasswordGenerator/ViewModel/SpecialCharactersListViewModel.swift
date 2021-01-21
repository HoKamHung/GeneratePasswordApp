//
//  SpecialCharactersListViewModel.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import Foundation

final class SpecialCharactersListViewModel : ObservableObject {
    let specialCharctersModel : SpecialCharactersListModel
    let checkDefaultStatus : Bool = true
    var specialCharactersCheckList : [SpecialCharactersCheckListItem] = []

    init() {
        specialCharctersModel = SpecialCharactersListModel()
        SpecialCharactersListModel.charactersList.forEach {
            specialCharactersCheckList.append(SpecialCharactersCheckListItem(char: $0, checked: checkDefaultStatus))
        }
    }
}
