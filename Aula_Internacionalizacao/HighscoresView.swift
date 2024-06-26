//
//  HighscoresView.swift
//  Aula_Internacionalizacao
//
//  Created by Ian Pacini on 24/05/24.
//

import SwiftUI

struct HighscoresView: View {
    let numberFormatter: NumberFormatter
    let resetDay = HighScore.resetDay
    
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
                    .padding(.bottom, 4)
                
                HStack {
                    Image(systemName: "exclamationmark.circle")
                    Text("Highscores reset at \(resetDay)")
                        .font(.callout)
                }
                .padding(.bottom, 4)
                
                HStack {
                    Text("Nickname")
                    
                    Spacer()
                    
                    Text("Score")
                    
                    Spacer()
                    
                    Text("When scored")
                }
                .bold()
                
                ScrollView {
                    ForEach(MockHighscores.HighScores, id: \.id) { hs in
                        HStack(spacing: 16) {
                            Text(hs.nickname)
                            
                            Text(numberFormatter.string(from: hs.score) ?? "0")
                            
                            Text(hs.date.formatted(.iso8601 .day() .month() .year()))
                        }
                        .padding(.bottom, 4)
                    }
                }
                
                Divider()
                
                Text("Your HighScore")
                    .bold()
                    .padding(4)
                    .font(.largeTitle)
                Group {
                    HStack(spacing: 16) {
                        Text(MockHighscores.userHighScore.nickname)
                            .bold()
                        Text("scored")
                        Text("\(numberFormatter.string(from: MockHighscores.userHighScore.score) ?? "0") pts")
                            .bold()
                    }
                    
                    HStack {
                        Text("Scored at:")
                        Text(MockHighscores.userHighScore.date.formatted())
                            .bold()
                    }
                }
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
