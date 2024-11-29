//
//  ListofPlayer.swift
//  TradingCards
//
//  Created by Chujun Xiang on 2024-11-28.
//

import Foundation

struct PlayerInfo: Identifiable{
    let id = UUID()
    let playername: String
    let age:Int
    let reboundScores:Int
    let assistScores:Int
    let threePointScores:Int
    let overallScores:Int
    let imageName:String
    let Description:String
}

let Curry = PlayerInfo(playername: "Stephen Curry", age: 37, reboundScores: 87, assistScores: 70, threePointScores: 97, overallScores:95 , imageName: "curry", Description: """
           Wardell Stephen Curry II (/ˈstɛfən/ STEF-ən;[1] born March 14, 1988) is an American professional basketball player and point guard for the Golden State Warriors of the National Basketball Association (NBA). Often considered the greatest shooter of all time,[2][3] Curry is credited with revolutionizing the sport by inspiring teams and players at all levels to more prominently utilize the three-point shot.[4][5][6][7] He is a four-time NBA champion, a two-time NBA Most Valuable Player (MVP), an NBA Finals MVP, an NBA All-Star Game MVP, an NBA Clutch Player of the Year, and the inaugural NBA Western Conference finals MVP. He is also a two-time NBA scoring champion, a ten-time NBA All-Star, and a ten-time All-NBA selection (including four on the First Team). Internationally, he has won two gold medals at the FIBA World Cup and a gold medal at the 2024 Summer Olympics as part of the U.S. men's national team.
           """)

let Anderson = PlayerInfo(playername: "Kyle Anderson", age: 31, reboundScores: 82, assistScores: 91, threePointScores: 72, overallScores: 89, imageName: "anderson", Description: """
           Current team: Golden State Warriors (#1 / Power forward, Small forward)
           Education: University of California, Los Angeles, St. Anthony High School, Paterson Catholic High School
           Height: 2.06 m
           Parents: Suzanne Anderson, Kyle Anderson
           NBA draft: 2014: 1st round, 30th overall pick
           Siblings: Tai Wilkins, Dueane Guilliod, Brittany Anderson, Jamar Wilkins
           """)

let Santos = PlayerInfo(playername: "Gui Santos", age: 22, reboundScores: 76, assistScores: 56, threePointScores: 67, overallScores: 78, imageName: "santos", Description: """
           Santos made his professional debut with Minas of the Novo Basquete Brasil (NBB) during the 2018–19 season. Two years later, he entered the starting lineup. In April 2021, Santos was named to the World Team for the Nike Hoop Summit. On April 21, he declared for the 2021 NBA draft. Santos was selected by the Golden State Warriors with the 55th overall pick in the 2022 NBA draft. He joined the Warriors for the 2022 NBA Summer League, and he later joined their NBA G League affiliate, the Santa Cruz Warriors. Santos was named to the G League's inaugural Next Up Game for the 2022–23 season.
           
           On November 7, 2023, Santos was signed by the Golden State Warriors to a three-year deal.
           """)
let Hield = PlayerInfo(playername: "Buddy Hield", age: 33, reboundScores: 56, assistScores: 45, threePointScores: 45, overallScores: 67, imageName: "hield", Description: """
           Chavano Rainer "Buddy" Hield (/hiːld/ HEELD; born December 17, 1992) is a Bahamian professional basketball player for the Golden State Warriors of the National Basketball Association (NBA). He played college basketball for the Oklahoma Sooners and was named the Big 12 Conference Men's Basketball Player of the Year in 2015 and 2016. In 2016, he received four major national player of the year awards: the John R. Wooden Award, the Naismith Award, Sporting News Player of the Year, and the Oscar Robertson Trophy. Hield was selected with the sixth overall pick in the 2016 NBA draft by the New Orleans Pelicans and was traded to the Sacramento Kings for DeMarcus Cousins in 2017. He was dealt to the Indiana Pacers in a package for Domantas Sabonis in 2022. In February 2024, he was traded to the Philadelphia 76ers. In July 2024, Hield was involved in a 6-team trade that involved him getting traded to the Golden State Warriors.
           """)

let allplayers = [
    Curry,
    Anderson,
    Santos,
    Hield
]
