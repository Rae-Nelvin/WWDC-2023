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
                if gvm.isWin ?? true {
                    VStack {
                        Text(gvm.player.name!)
                        Text("(gvm.player.health)")
                        Text("Your \(gvm.food.name) is ready to served!")
                    }
                    .navigationTitle("Congratulations you have won!")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else {
                    VStack {
                        Text(gvm.player.name!)
                        Text("Your \(gvm.food.name) is failed to served!")
                    }
                    .navigationTitle("You Failed!")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Button(action: {
                    gvm.currentPage = "StartView"
                }, label: {
                    Text("Go Back to Home")
                })
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
    }
}
