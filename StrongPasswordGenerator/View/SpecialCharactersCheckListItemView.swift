//
//  CheckListItemView.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import SwiftUI

struct SpecialCharactersCheckListItemView: View {
    @Binding var item : SpecialCharactersCheckListItem

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
    static var checkListItem: SpecialCharactersCheckListItem = .init(char: "@", checked: true)

    static var previews: some View {
        SpecialCharactersCheckListItemView(item: Binding(get: {
            checkListItem
        }, set: { obj in
            checkListItem = obj
        }) )
    }
}
