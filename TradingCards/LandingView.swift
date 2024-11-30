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
                .background( LinearGradient(gradient: Gradient(colors:[Color.yellow, Color.blue,Color.white]), startPoint: .leading, endPoint: .trailing))
            }
            .navigationTitle("Golden States Warriors")
           
        }
        
    }
}
  
#Preview {
    LandingView()
}
