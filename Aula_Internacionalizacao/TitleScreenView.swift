//
//  TitleScreenView.swift
//  Aula_Internacionalizacao
//
//  Created by Ian Pacini on 10/05/24.
//

import SwiftUI

struct TitleScreenView: View {
    let playerHighScore: String
    let lastTimePlayed: String
    let playersOnlineCount: String
    
    init(playerHighScore: String = "1234.5678",
         playersOnlineCount: String = "10",
         lastTimePlayed: Date = Date()) {
        self.playerHighScore = playerHighScore
        self.playersOnlineCount = playersOnlineCount
        self.lastTimePlayed = "\(lastTimePlayed)"
    }
    
    var body: some View {
        VStack(spacing: 8) {
            
            header
            
            Spacer()
            
            title
            playButton
            
            Spacer()
            
            footer
        }
        .foregroundStyle(.white)
        .bold()
        .padding(20)
        .background {
            Image("MainScreenBG")
                .resizable()
                .ignoresSafeArea()
        }
    }
    
    var header: some View {
        HStack {
            VStack {
                Image("Flag.EUA")
                    .resizable()
                    .frame(width: 60, height: 45)
                
                Text("Language")
            }
            
            Spacer()
            
            VStack {
                Text("Highscore:")
                Text(playerHighScore)
            }
        }
    }
    
    var title: some View {
        Text("SPACE\n GAME")
            .font(.system(size: 70))
            .fontWidth(.expanded)
    }
    
    var playButton: some View {
        VStack(spacing: 10) {
            Button(action: {}, label: {
                RoundedRectangle(cornerRadius: 30)
                    .stroke(lineWidth: 6)
                    .frame(height: 100)
                    .padding(.horizontal, 45)
                    .overlay {
                        Text("Join")
                            .font(.largeTitle)
                    }
            })
            Text("\(playersOnlineCount) Player(s) online!")
                .font(.headline)
        }
    }
    
    var footer: some View {
        HStack {
            Spacer()
            
            Text("Last played: \(lastTimePlayed)")
            
            Spacer()
        }
    }
}

#Preview {
    TitleScreenView()
}
