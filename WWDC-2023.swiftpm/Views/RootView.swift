//
//  SwiftUIView.swift
//  
//
//  Created by Leonardo Wijaya on 14/04/23.
//

import SwiftUI

struct RootView: View {
    @ObservedObject var gvm: GameViewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            switch gvm.currentPage {
            case "StartView":
                StartView(gvm: gvm)
            case "HowToPlayView":
                HowToPlayView(gvm: gvm)
            case "GameView":
                GameView(gvm: gvm)
            case "EndGameView":
                EndGameView(gvm: gvm)
            default:
                StartView(gvm: gvm)
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
