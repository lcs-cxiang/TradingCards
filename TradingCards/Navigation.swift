//
//  Player.swift
//  TradingCards
//
//  Created by Chujun Xiang on 2024-11-28.
//

import SwiftUI

struct Navigation: View {
    
    let providedPlayer: PlayerInfo
    
    var body: some View {
            HStack{
                Image(providedPlayer.imageName)
                    .resizable()
                    .frame(width: 110,height: 80)
                    .offset(y:15)
                    .clipShape(.circle)
                VStack(alignment:.leading){
                    Text(providedPlayer.playername)
                        .font(.title)
                        .fontWeight(.semibold)
                        
                }
            }
        }
    }

#Preview {
    Navigation(providedPlayer:Curry )
        .padding()
}
