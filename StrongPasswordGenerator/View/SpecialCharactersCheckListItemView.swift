//
//  CheckListItemView.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import SwiftUI

struct SpecialCharactersCheckListItemView: View {
    @State var item : SpecialCharactersCheckListItem

    var body: some View {
        HStack {
            Text(item.char)
                .padding(.leading)
            Spacer()
            Text(item.checked ? "✅" : "")
                .padding(.trailing)
        }
        .frame(maxWidth: .infinity)

    }
}

struct CheckListItemView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialCharactersCheckListItemView(item: SpecialCharactersCheckListItem(char: "@", checked: true))
    }
}
