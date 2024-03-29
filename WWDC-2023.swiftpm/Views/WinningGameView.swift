//
//  SwiftUIView.swift
//  
//
//  Created by Leonardo Wijaya on 16/04/23.
//

import SwiftUI

struct WinningGameView: View {
    @StateObject var gvm: GameViewModel
    
    var body: some View {
        VStack {
            Text("Congratulations " + gvm.player.name! + " !!")
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(Color("Red-Custom"))
            HStack(spacing: 20) {
                ForEach(0..<gvm.player.health, id: \.self) { heart in
                    Image("Heart")
                        .resizable()
                        .frame(width: 75, height: 75)
                }
            }
            Image(gvm.food.image)
                .resizable()
                .frame(width: 600, height: 550)
            Text("Your \(gvm.food.name) is ready to served!")
                .font(.system(size: 40, weight: .semibold))
                .foregroundColor(Color.black)
            BackToHomeButton(gvm: gvm)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Yellow-Custom"))
    }
}

