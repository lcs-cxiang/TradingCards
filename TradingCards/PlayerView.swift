//
//  ContentView.swift
//  TradingCards
//
//  Created by Chujun Xiang on 2024-11-17.
//

import SwiftUI

struct PlayerView: View {
    let player: String
    let age:Int
    let reboundScores:Int
    let assistScores:Int
    let threePointScores:Int
    let overallScores:Int
    let imageName:String
    let Description:String
    
    var body: some View {
        NavigationStack{
            //Blue Background
            ZStack{
                
                Color.blue
                    .ignoresSafeArea(edges:.top)
                    
                //Image and Background
                VStack{
                    ZStack{
                        Color.white
                            .frame(width:360,height:430)
                        Color.yellow
                            .frame(width:340,height:410)
                        Image(imageName)
                            .resizable()
                            .frame(width:320,height:390)
                        HStack{
                            Spacer()
                            VStack{
                                Spacer()
                                Image("gstate")
                                    .resizable()
                                    .frame(width:200,height:120)
                                    .offset(x:50,y:40)
                            }
                        }
                    }
                    .padding(.bottom,25)
                    //Bottom half "Statistics
                    ScrollView(.vertical){
                        VStack{
                            Text("Statistics")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.yellow)
                            //Added another Vstack to make the whole top part of the Statistics into an aggregate part so that it can be modified as one sector
                            VStack{
                                HStack{
                                    Text("Name: "+player)
                                        .foregroundColor(.green)
                                    Spacer()
                                }
                                Divider()
                                HStack{
                                    Text("Age: "+"\(age)")
                                        .foregroundColor(.orange)
                                    Spacer()
                                }
                                Divider()
                                HStack{
                                    Text("Rebound Rating: "+"\(reboundScores)")
                                        .foregroundColor(.red)
                                    Spacer()
                                }
                                Divider()
                                HStack{ Text("Assist Rating:  "+"\(assistScores)")
                                        .foregroundColor(.gray)
                                    Spacer()
                                }
                                Divider()
                                HStack{
                                    Text("Three Point Scores: "+"\(threePointScores)")
                                        .foregroundColor(.purple)
                                    Spacer()
                                }
                                Divider()
                                HStack{
                                    Text("Overall Scores: "+"\(overallScores)")
                                        .foregroundColor(.blue)
                                    Spacer()
                                }
                            }
                            // added padding to the top part of the Statistics page, just before descriptions
                            .padding(.bottom,40)
                            .padding(.leading,20)
                            VStack{
                                Text("Description: ")
                                    .fontWeight(.bold)
                                    .font(.system(size: 25))
                                Text(Description)
                            }
                        }.background(Color.white) //changed background color of the whole statistics page into white
                    }
                }
            }// the Bracket for the BIG Vstack just before Nav Stack
            .navigationTitle(player)
            
        }//Nav stack

    }
    
}

#Preview {
    PlayerView(player: "Stephen Curry", age: 37, reboundScores: 87, assistScores: 70, threePointScores: 97, overallScores:95 , imageName: "curry", Description: """
               Wardell Stephen Curry II (/ˈstɛfən/ STEF-ən;[1] born March 14, 1988) is an American professional basketball player and point guard for the Golden State Warriors of the National Basketball Association (NBA). Often considered the greatest shooter of all time,[2][3] Curry is credited with revolutionizing the sport by inspiring teams and players at all levels to more prominently utilize the three-point shot.[4][5][6][7] He is a four-time NBA champion, a two-time NBA Most Valuable Player (MVP), an NBA Finals MVP, an NBA All-Star Game MVP, an NBA Clutch Player of the Year, and the inaugural NBA Western Conference finals MVP. He is also a two-time NBA scoring champion, a ten-time NBA All-Star, and a ten-time All-NBA selection (including four on the First Team). Internationally, he has won two gold medals at the FIBA World Cup and a gold medal at the 2024 Summer Olympics as part of the U.S. men's national team.
               """)
}
#Preview {
    PlayerView(player: "Kyle Anderson", age: 31, reboundScores: 82, assistScores: 91, threePointScores: 72, overallScores: 89, imageName: "anderson", Description: """
               Current team: Golden State Warriors (#1 / Power forward, Small forward)
               Education: University of California, Los Angeles, St. Anthony High School, Paterson Catholic High School
               Height: 2.06 m
               Parents: Suzanne Anderson, Kyle Anderson
               NBA draft: 2014: 1st round, 30th overall pick
               Siblings: Tai Wilkins, Dueane Guilliod, Brittany Anderson, Jamar Wilkins
               """)
}
