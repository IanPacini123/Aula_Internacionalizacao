//
//  HighscoresView.swift
//  Aula_Internacionalizacao
//
//  Created by Ian Pacini on 24/05/24.
//

import SwiftUI

struct HighscoresView: View {
    let highscores: MockHighscores = .init()
    let numberFormatter: NumberFormatter
    
    init() {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        self.numberFormatter = numberFormatter
    }
    
    
    var body: some View {
        ZStack {
            Image("MainScreenBG")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Text("HIGHSCORES")
                    .font(.system(size: 40))
                    .fontWidth(.expanded)
                    .fontWeight(.heavy)
                    .padding(.bottom)
                
                HStack {
                    Text("Nickname")
                    
                    Spacer()
                    
                    Text("Score")
                    
                    Spacer()
                    
                    Text("When scored")
                }
                .bold()
                
                ScrollView {
                    ForEach(highscores.HighScores, id: \.id) { hs in
                        HStack(spacing: 16) {
                            Text(hs.nickname)
                                .padding(.bottom, 4)
                            Text(numberFormatter.string(from: NSNumber(value: hs.score)) ?? "0")
                            
                            Text(hs.date.formatted(.iso8601 .day() .month() .year()))
                        }
                        
                    }
                }
                
                Text("Your HighScore")
                    .bold()
                    .padding()
            }
            .foregroundStyle(.white)
            .padding(.top)
            .padding(.horizontal)
            .font(.title2)
            .background {
                Color.black.opacity(0.5)
            }
        }
    }
}

#Preview {
    HighscoresView()
}
