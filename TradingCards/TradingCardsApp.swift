//
//  TradingCardsApp.swift
//  TradingCards
//
//  Created by Chujun Xiang on 2024-11-17.
//

import SwiftUI

@main
struct TradingCardsApp: App {
    var body: some Scene {
        WindowGroup {
            PlayerView(player: "Stephen Curry", age: 37, reboundScores: 87, assistScores: 70, threePointScores: 97, overallScores:95 , imageName: "curry", Description: """
                       Wardell Stephen Curry II (/ˈstɛfən/ STEF-ən;[1] born March 14, 1988) is an American professional basketball player and point guard for the Golden State Warriors of the National Basketball Association (NBA). Often considered the greatest shooter of all time,[2][3] Curry is credited with revolutionizing the sport by inspiring teams and players at all levels to more prominently utilize the three-point shot.[4][5][6][7] He is a four-time NBA champion, a two-time NBA Most Valuable Player (MVP), an NBA Finals MVP, an NBA All-Star Game MVP, an NBA Clutch Player of the Year, and the inaugural NBA Western Conference finals MVP. He is also a two-time NBA scoring champion, a ten-time NBA All-Star, and a ten-time All-NBA selection (including four on the First Team). Internationally, he has won two gold medals at the FIBA World Cup and a gold medal at the 2024 Summer Olympics as part of the U.S. men's national team.
                       """)
        }
      
        }
    }

