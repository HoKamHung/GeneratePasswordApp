//
//  StrongPasswordGeneratorApp.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 2021/01/09.
//

import SwiftUI

@main
struct StrongPasswordGeneratorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: PasswordViewModel())
        }
    }
}
