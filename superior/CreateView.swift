//
//  CreateView.swift
//  superior
//
//  Created by Марк Русаков on 21.07.22.
//

import SwiftUI

struct CreateView: View {
    @State private var isActive = false
    var body: some View {
        ScrollView {
        VStack {
            DropdownView()
            DropdownView()
            DropdownView()
            DropdownView()
            Spacer()
            NavigationLink(destination: RemindView(), isActive: $isActive){
            Button(action: {isActive = true}) {
                Text("Next").font(.system(size: 24, weight: .medium))
            }
            }
        }.navigationTitle("Create")
            .navigationBarHidden(true)
            .padding(.bottom, 15)
        }
    }
}
