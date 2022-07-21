//
//  ContentView.swift
//  superior
//
//  Created by Марк Русаков on 21.07.22.
//

import SwiftUI

struct LandingView: View {
    @State private var isActive = false
    var body: some View {
        NavigationView {
            GeometryReader {proxy in
                VStack {
                    Spacer().frame(height: proxy.size.height * 0.08)
                    Text("Superior")
                        .font(.system(size: 64, weight: .medium))
                        .foregroundColor(.white)
                    NavigationLink(destination: CreateView(), isActive: $isActive){
                        Button(action: {
                            isActive = true
                        }) {
                            HStack(spacing: 15) {
                                Spacer()
                                Image(systemName: "plus.circle")
                                    .font(.system(size:25))
                                    .foregroundColor(.white)
                                Text("Create a challenge")
                                    .font(.system(size:25))
                                    .foregroundColor(.white)
                                Spacer()
                            }.padding(15)
                        }.buttonStyle(MainButtonStyle())
                    }
                }.frame(maxWidth: .infinity,
                        maxHeight: .infinity)
                    .background(
                        Image("exercise")
                            .resizable()
                            .aspectRatio(
                                contentMode: .fill
                            ).overlay(Color.black.opacity(0.5))
                    ).edgesIgnoringSafeArea(.all)
            }
        }.accentColor(.primary)
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView().previewDevice("iPhone SE")
        LandingView().previewDevice("iPhone 12")
    }
}
