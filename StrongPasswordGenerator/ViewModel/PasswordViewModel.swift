//
//  PasswordViewModel.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import Foundation
import MobileCoreServices
import UIKit

final class PasswordViewModel : ObservableObject {
    @Published public var model : PasswordModel
    @Published public var password : String
    @Published var specialCharactersCheckList : [SpecialCharactersCheckListItem] = []
    let specialCharctersModel : SpecialCharactersListModel
    let checkDefaultStatus : Bool = true

    init() {
        model = PasswordModel()
        password = ""

        specialCharctersModel = SpecialCharactersListModel()
        SpecialCharactersListModel.charactersList.forEach {
            specialCharactersCheckList.append(SpecialCharactersCheckListItem(char: $0, checked: checkDefaultStatus))
        }
    }

    func generatePassword()
    {
        model.specialCharacters = getSpecialCharactersList()
        model.createCharList()
        model.password.removeAll()

        for _ in 1...model.passwordLength {
            model.password.append(model.charList.randomElement()!)
        }

        self.password = model.password
    }

    func getSpecialCharactersList() -> [String]
    {
        var charList: [String] = [String]()

        for specialCharacterItem in specialCharactersCheckList
        {
            if specialCharacterItem.checked
            {
                charList.append(specialCharacterItem.char)
            }
        }

        return charList
    }

    func copyToClipboard()
    {
        // https://stackoverflow.com/questions/61772282/swiftui-how-to-copy-text-to-clipboard
        UIPasteboard.general.setValue(password, forPasteboardType: kUTTypePlainText as String)
    }
}
