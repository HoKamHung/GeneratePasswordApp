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

    init() {
        model = PasswordModel()
        password = ""
    }

    func generatePassword()
    {
        model.password.removeAll()

        for _ in 1...model.passwordLength {
            model.password.append(model.charList.randomElement()!)
        }

        self.password = model.password
    }

    func copyToClipboard()
    {
        // https://stackoverflow.com/questions/61772282/swiftui-how-to-copy-text-to-clipboard
        UIPasteboard.general.setValue(password, forPasteboardType: kUTTypePlainText as String)
    }
}
