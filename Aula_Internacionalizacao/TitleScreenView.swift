//
//  TitleScreenView.swift
//  Aula_Internacionalizacao
//
//  Created by Ian Pacini on 10/05/24.
//

import SwiftUI

struct TitleScreenView: View {
    @AppStorage("selectedLanguage") private var selectedLanguage: String = "en"
    
    let playerNickname: String
    let playerHighScore: String
    let lastTimePlayed: String
    let playersOnlineCount: String
    
    init(playerNickname: String = "Parzival",
         playerHighScore: String = "123,456.78",
         playersOnlineCount: String = "10",
         lastTimePlayed: Date = Date()) {
        self.playerNickname = playerNickname
        self.playerHighScore = playerHighScore
        self.playersOnlineCount = playersOnlineCount
        self.lastTimePlayed = "\(lastTimePlayed)"
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 8) {
                
                header
                
                Spacer()
                
                title
                playButton
                
                Spacer()
                
                footer
            }
            .foregroundStyle(.white)
            .fontWeight(.heavy)
            .padding(20)
            .background {
                Image("MainScreenBG")
                    .resizable()
                    .ignoresSafeArea()
            }
        }
    }
    
    var header: some View {
        HStack(alignment: .top) {
            VStack(spacing: 2) {
                Text("Language:")
                
                NavigationLink {
                    LangSelectionView()
                } label: {
                    Image(flags.getFlagFromLanguage(language: selectedLanguage).rawValue)
                        .resizable()
                        .frame(width: 60, height: 45)
                }
            }
            .background {
                Color.gray.blur(radius: 10)
            }
            
            Spacer()
            
            VStack {
                Text("Nickname:")
                Text(playerNickname)
                Text("Highscore:")
                Text(playerHighScore)
            }
            .background {
                Color.black.blur(radius: 10)
            }
        }
    }
    
    var title: some View {
        Text("SPACE\n GAME")
            .font(.system(size: 70))
            .fontWidth(.expanded)
            .shadow(color: .blue, radius: 20)
    }
    
    var playButton: some View {
        VStack(spacing: 10) {
            Button(action: {}, label: {
                Text("Tap to join")
                    .font(.largeTitle)
                    .padding(.horizontal, 45)
                    .padding(.vertical, 20)
                    .background {
                        ZStack {
                            Color.black.blur(radius: 10)
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 6)
                        }
                    }
            })
            Text("\(playersOnlineCount) Player(s) online!")
                .font(.headline)
                .background {
                    Color.black.blur(radius: 10)
                }
        }
    }
    
    var footer: some View {
        HStack {
            Spacer()
            
            Text("Last played: \(lastTimePlayed)")
            
            Spacer()
        }
        .background {
            Color.black.blur(radius: 20)
        }
    }
}

#Preview {
    TitleScreenView()
}
