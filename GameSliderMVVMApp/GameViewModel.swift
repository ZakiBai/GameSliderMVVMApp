//
//  GameViewModel.swift
//  GameSliderMVVMApp
//
//  Created by Zaki on 23.06.2023.
//

import Foundation

final class GameViewModel: ObservableObject {
    @Published var gameOptions = GameOptions()
    @Published var alertIsPresented = false
    
    var scores: String {
        (100 - abs(gameOptions.targetValue - lround(gameOptions.currentValue))).formatted()
    }
    
    var alpha: Double {
        (100 - abs(Double(gameOptions.targetValue) - gameOptions.currentValue)) / 100
    }
    
    func showAlert() {
        alertIsPresented.toggle()
    }
    
    func reset() {
        gameOptions.currentValue = Double.random(in: 0...100)
        gameOptions.targetValue = Int.random(in: 0...100)
    }
    
    
}
