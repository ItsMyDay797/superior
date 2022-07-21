//
//  RemindView.swift
//  superior
//
//  Created by Марк Русаков on 21.07.22.
//

import SwiftUI

struct RemindView : View {
    var body : some View {
        VStack{
            Spacer()
            DropdownView()
            Spacer()
            Button(action: {}) {
                Text("Create")
                .font(.system(size: 24, weight: .medium))
                .foregroundColor(.primary)
            }.padding(.bottom, 15)
            Button(action: {}) {
                Text("Skip")
                .font(.system(size: 24, weight: .medium))
                .foregroundColor(.primary)
            }
        }.navigationTitle("Remind")
    }
}
