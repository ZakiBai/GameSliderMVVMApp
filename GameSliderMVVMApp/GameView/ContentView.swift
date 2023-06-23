//
//  ContentView.swift
//  GameSliderMVVMApp
//
//  Created by Zaki on 23.06.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var gameViewModel = GameViewModel()
    
    var body: some View {
        VStack {
            GameSliderView(gameViewModel: gameViewModel, color: .red)
            
            Button("Check me!", action: gameViewModel.showAlert)
                .padding()
                .alert(
                    "Your score",
                    isPresented: $gameViewModel.alertIsPresented,
                    actions: {}
                ) {
                    Text(gameViewModel.scores)
                }
            
            Button("Restart", action: gameViewModel.reset)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
