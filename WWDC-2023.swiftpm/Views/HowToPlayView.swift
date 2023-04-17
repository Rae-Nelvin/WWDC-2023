//
//  SwiftUIView.swift
//  
//
//  Created by Leonardo Wijaya on 14/04/23.
//

import SwiftUI

struct HowToPlayView: View {
    @ObservedObject var gvm: GameViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    RulesText(rules: "1. There will be a random food with ways of cooking it.")
                    RulesText(rules: "2. Every step of cooking will required you to fill the calculations to get the desired amount")
                    RulesText(rules: "3. You'll be given 5 lives or 5 chances to guess the right formula.")
                    RulesText(rules: "4. Once you've guessed the right formula you'll begiven another step of cooking untill the cooking step is finished.")
                }
                .padding(.vertical, 30)
                Button(action: {
                    gvm.currentPage = "GameView"
                }, label: {
                    Text("Start The Game")
                        .font(.title)
                        .foregroundColor(Color.white)
                })
                .padding(EdgeInsets(top: 20, leading: 50, bottom: 20, trailing: 50))
                .background(Color("Red-Custom"))
                .cornerRadius(10)
                Spacer()
            }
            .navigationTitle("How to Play")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Yellow-Custom"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct RulesText: View {
    let rules: String
    
    var body: some View {
        Text(rules)
            .font(.system(size: 20, weight: .semibold))
            .padding(.vertical, 5)
            .foregroundColor(Color.black)
    }
}
