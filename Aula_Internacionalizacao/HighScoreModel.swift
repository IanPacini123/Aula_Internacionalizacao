//
//  HighScoreModel.swift
//  Aula_Internacionalizacao
//
//  Created by Ian Pacini on 24/05/24.
//

import SwiftUI

struct Highscore: Identifiable {
    let id = UUID()
    var nickname: String
    var score = 0.00
    var date: Date
}

struct MockHighscores {
    let HighScores: [Highscore] = [.init(nickname: "Parzival", score: 999999.99, date: Date()),
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
