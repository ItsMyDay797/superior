//
//  CreateView.swift
//  superior
//
//  Created by Марк Русаков on 21.07.22.
//

import SwiftUI

struct CreateView: View {
    @StateObject var viewModel = CreateChallengeViewModel()
    
    var dropdownList: some View {
        ForEach(viewModel.dropdowns.indices, id: \.self) { index in
            DropdownView(viewModel: $viewModel.dropdowns[index])
        }
    }
    
    var actionSheet: ActionSheet {
        ActionSheet(title: Text("Select"),
                                buttons: viewModel.displayedOptions.indices.map { index in
                                let option = viewModel.displayedOptions[index]
                                return ActionSheet.Button.default(Text(option.formatted)) {
                                viewModel.send(action: .selectOption(index: index))
            }
        })
    }
    
    var body: some View {
        ScrollView {
        VStack {
            dropdownList
            Spacer()
            Button(action: {
                viewModel.send(action: .createChallenge)
                ) {
                Text("Create").font(.system(size: 24, weight: .medium))
            }
        
        }
        .actionSheet(isPresented: Binding<Bool>(get: {
            viewModel.hasSelectedDropdown
        }, set: { _ in})
        ) {
           actionSheet
        }
            .navigationTitle("Create")
            .navigationBarHidden(true)
            .padding(.bottom, 15)
        }
    }
 }
