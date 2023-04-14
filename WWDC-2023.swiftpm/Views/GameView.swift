//
//  SwiftUIView.swift
//  
//
//  Created by Leonardo Wijaya on 07/04/23.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var gvm: GameViewModel
    @State private var input1: String = ""
    @State private var input2: String = ""
    
    var body: some View {
        if gvm.isPlay {
            VStack {
                Text("\(gvm.player.health)")
                Text(gvm.food.name)
                Text(gvm.food.origin)
                Text(gvm.food.type)
                Text(gvm.cook().text)
                HStack {
                    TextField("Enter first number", text: $input1)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Text(gvm.chosenOperator)
                    TextField("Enter second number", text: $input2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Text(" = \(gvm.cook().amount, specifier: "%.2f")")
                }
                Button("add", action: {
                    gvm.checkAnswer(answer1: Float(input1) ?? 0, answer2: Float(input2) ?? 0, amount: gvm.cook().amount)
                    input1 = ""
                    input2 = ""
                })
            }
            .padding()
            .onAppear(perform: {
                gvm.getOperator()
            })
            .navigationTitle("Hello")
            .navigationBarBackButtonHidden(true)
        }
        else {
            EndGameView(gvm: gvm)
                .onAppear(){
                    gvm.currentPage = "EndGameView"
                }
        }
    }
}
