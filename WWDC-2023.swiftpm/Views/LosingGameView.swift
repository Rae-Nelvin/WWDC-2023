//
//  SwiftUIView.swift
//  
//
//  Created by Leonardo Wijaya on 16/04/23.
//

import SwiftUI

struct LosingGameView: View {
    @StateObject var gvm: GameViewModel
    
    var body: some View {
        VStack {
            Text(gvm.player.name! + " You have failed!")
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(Color("Red-Custom"))
            Image(gvm.food.image)
                .resizable()
                .frame(width: 600, height: 550)
            Text("Your \(gvm.food.name) is failed to served!")
                .font(.system(size: 40, weight: .semibold))
            BackToHomeButton(gvm: gvm)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Yellow-Custom"))
    }
}
