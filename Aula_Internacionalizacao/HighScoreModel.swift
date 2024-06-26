//
//  HighScoreModel.swift
//  Aula_Internacionalizacao
//
//  Created by Ian Pacini on 24/05/24.
//

import SwiftUI

struct HighScore: Identifiable {
    let id = UUID()
    var nickname: String
    var score: NSNumber = 0.00
    var date: Date
    
    static var resetDay: Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/mm/YYYY HH:m:ss"
        
        return dateFormatter.date(from: "30/12/2024 17:00:00") ?? Date()
    }
    
}

struct MockHighscores {
    static let userHighScore: HighScore = .init(nickname: "NoobF", score: 010000.00, date: Date().advanced(by: .init(floatLiteral: -100)))
    static let HighScores: [HighScore] = [.init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date()),
                                   .init(nickname: "Parzival", score: 999999.99, date: Date())]
}
