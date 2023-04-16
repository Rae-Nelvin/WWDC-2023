//
//  SwiftUIView.swift
//  
//
//  Created by Leonardo Wijaya on 14/04/23.
//

import SwiftUI

struct EndGameView: View {
    @ObservedObject var gvm: GameViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                if (gvm.isWin == true) {
                    WinningGameView(gvm: gvm)
                } else {
                    LosingGameView(gvm: gvm)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
    }
}

struct BackToHomeButton: View {
    @StateObject var gvm: GameViewModel
    
    var body: some View {
        Button(action: {
            gvm.currentPage = "StartView"
        }, label: {
            Text("Go Back To Home")
                .font(.title)
                .foregroundColor(Color.white)
        })
        .padding(EdgeInsets(top: 25, leading: 50, bottom: 25, trailing: 50))
        .background(Color("Red-Custom"))
        .cornerRadius(10)
    }
}
