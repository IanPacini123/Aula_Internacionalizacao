//
//  LangSelectionView.swift
//  Aula_Internacionalizacao
//
//  Created by Ian Pacini on 21/05/24.
//

import SwiftUI

enum flags: String, CaseIterable {
    case eua = "Flag.EUA"
    case br = "Flag.BR"
    case de = "Flag.DE"
    
    static var allCases = [Self.eua, Self.br, Self.de]
    
    func getLanguageFromFlag() -> String {
        switch self {
        case .eua:
            return "en"
        case .br:
            return "pt-BR"
        case .de:
            return "de"
        }
    }
    
    static func getFlagFromLanguage(language: String) -> flags {
        switch language {
        case "en-US":
            return .eua
        case "pt-BR":
            return .br
        case "de":
            return.de
        default:
            return .eua
        }
    }
}

struct LangSelectionView: View {
    @AppStorage("selectedLanguage") private var selectedLanguage: String = "en"
    
    var body: some View {
        ZStack {
            Image("MainScreenBG")
                .resizable()
                .ignoresSafeArea()
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100), spacing: 16)]) {
                
                
                ForEach(flags.allCases, id: \.self) { flag in
                    Button {
                        selectedLanguage = flag.getLanguageFromFlag()
                    } label: {
                        Image(flag.rawValue)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(10)
                            .background {
                                if flag == flags.getFlagFromLanguage(language: selectedLanguage) {
                                    Color.blue
                                        .blur(radius: 16)
                                } else {
                                    Color.gray
                                        .blur(radius: 16)
                                }
                            }
                    }
                }
            }
        }
    }
}

//extension String {
//    func localized() -> Self {
//        let key = self
//        let selectedLanguage = UserDefaults.standard.string(forKey: "selectedLanguage") ?? "en"
//        guard let path = Bundle.main.path(forResource: selectedLanguage, ofType: "lproj"),
//              let bundle = Bundle(path: path) else {
//            return key
//        }
//        return NSLocalizedString(key, bundle: bundle, comment: "")
//    }
//}

#Preview {
    LangSelectionView()
}
