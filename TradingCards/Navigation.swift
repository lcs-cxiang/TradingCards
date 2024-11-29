//
//  Player.swift
//  TradingCards
//
//  Created by Chujun Xiang on 2024-11-28.
//

import SwiftUI

struct Navigation: View {
    
    let providedPlayer: 
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(providedPlayer.name)
                .font(.largeTitle)
            Text(providedPlayer.description)
        }
    }
}

#Preview {
    Navigation(providedPlayer: )
        .padding()
}
