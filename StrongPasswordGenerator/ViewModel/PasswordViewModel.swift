//
//  PasswordViewModel.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import Foundation

final class PasswordViewModel : ObservableObject {
    var model : PasswordModel

    init() {
        model = PasswordModel()
    }

    func generatePassword()
    {
        for i in 0...model.passwordLength {
            model.password.append(model.charList.randomElement()!)
        }
    }
}
