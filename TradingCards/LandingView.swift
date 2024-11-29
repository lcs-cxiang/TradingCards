//
//  LandingView.swift
//  TradingCards
//
//  Created by Chujun Xiang on 2024-11-28.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        
        NavigationStack{
            List(allplayers) { currentPlayer in
                
                NavigationLink {
                    PlayerView(player: currentPlayer)
                } label: {
                    Navigation(providedPlayer: currentPlayer)
                }
                
            }
            .navigationTitle("Golden States Warriors")
        }
        
    }
}

#Preview {
    LandingView()
}
