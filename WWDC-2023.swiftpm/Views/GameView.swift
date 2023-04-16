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
                HStack {
                    ForEach(0..<gvm.player.health, id: \.self) { heart in
                        Image("Heart")
                            .resizable()
                            .frame(width: 75, height: 75)
                    }
                }
                Spacer()
                VStack(spacing: 10) {
                    Text(gvm.food.name)
                        .font(.system(size: 60, weight: .bold))
                        .foregroundColor(Color("Red-Custom"))
                        .padding(.bottom, 10)
                    Text(gvm.food.origin + " Food")
                        .font(.system(size: 30, weight: .semibold))
                    Text(gvm.food.type)
                        .font(.system(size: 30, weight: .semibold))
                    Image(gvm.food.image)
                        .resizable()
                        .frame(width: 600, height: 550)
                }
                Text(gvm.cook().text)
                    .font(.system(size: 40, weight: .semibold))
                HStack(spacing: 40) {
                    GameIntField1(input1: $input1)
                    Text(gvm.chosenOperator)
                        .font(.system(size: 40, weight: .semibold))
                    GameIntField2(input2: $input2)
                    Text(" =   \(gvm.cook().amount, specifier: "%.2f")")
                        .font(.system(size: 40, weight: .semibold))
                }
                .padding(.horizontal, 80)
                Spacer()
                AddButton(gvm: gvm, input1: $input1, input2: $input2)
                Spacer()
            }
            .padding()
            .onAppear(perform: {
                gvm.getOperator()
            })
            .background(Color("Yellow-Custom"))
            .navigationTitle("Hello")
            .navigationBarBackButtonHidden(true)
        }
        else {
            WinningGameView(gvm: gvm)
                .onAppear(){
                    gvm.currentPage = "EndGameView"
                }
        }
    }
}

struct GameIntField1: View {
    @Binding var input1: String
    
    var body: some View {
        HStack {
            TextField("Enter first input", text: $input1)
                .font(.system(size: 20))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .textFieldStyle(PlainTextFieldStyle())
        }
        .padding(EdgeInsets(top: 35, leading: 25, bottom: 35, trailing: 25))
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct GameIntField2: View {
    @Binding var input2: String
    
    var body: some View {
        HStack {
            TextField("Enter second input", text: $input2)
                .font(.system(size: 20))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .textFieldStyle(PlainTextFieldStyle())
        }
        .padding(EdgeInsets(top: 35, leading: 25, bottom: 35, trailing: 25))
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct AddButton: View {
    @StateObject var gvm: GameViewModel
    @Binding var input1: String
    @Binding var input2: String
    
    var body: some View {
        Button(action: {
            gvm.checkAnswer(answer1: Float(input1) ?? 0, answer2: Float(input2) ?? 0, amount: gvm.cook().amount)
            input1 = ""
            input2 = ""
        }, label: {
            Text("Add")
                .font(.title)
                .foregroundColor(Color.white)
        })
        .padding(EdgeInsets(top: 25, leading: 100, bottom: 25, trailing: 100))
        .background(Color("Red-Custom"))
        .cornerRadius(10)
    }
}
