//
//  MainButtonStyle.swift
//  superior
//
//  Created by Марк Русаков on 21.07.22.
//

import SwiftUI

struct MainButtonStyle: ButtonStyle {
    var fillColor: Color = .darkMainButton
    func makeBody(configuration: Configuration) -> some View {
        return MainButton(configuration: configuration, fillColor: fillColor)
    }
}

struct MainButton: View {
    let configuration: ButtonStyleConfiguration
    let fillColor: Color
    var body: some View {
        return configuration.label
            .padding(20)
            .background(
                RoundedRectangle(
                    cornerRadius: 8).fill(
                fillColor
            ))
            
    }
}
