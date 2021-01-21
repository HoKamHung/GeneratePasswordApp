//
//  PasswordLengthListItemView.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import SwiftUI

struct PasswordLengthListItemView: View {
    @State var length : Float

    var body: some View {
        HStack {
            Slider(value: $length, in: 1...100, step:1).padding()
            Text(String(Int(length))).padding()
        }
    }
}

struct PasswordLengthListItemView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordLengthListItemView(length: 10)
    }
}
