//
//  ContentView.swift
//  TradingCards
//
//  Created by Chujun Xiang on 2024-11-17.
//

import SwiftUI

struct PlayerView: View {
    let player:PlayerInfo
    
    var body: some View {
        NavigationStack{
            //Blue Background
            ZStack{
                Color.blue
                    .ignoresSafeArea(edges:.top)
                    
                //Image and Background
                VStack{
                    VStack {
                        
                        LinearGradient(gradient: Gradient(colors:[Color.yellow, Color.blue]), startPoint: .leading, endPoint: .trailing)
                                                .ignoresSafeArea()
                            .ignoresSafeArea(edges:.top)
                        ZStack{
                            Color.white
                                .frame(width:360,height:430)
                            Color.yellow
                                .frame(width:340,height:410)
                            Image(player.imageName)
                                .resizable()
                                .frame(width:405,height:390)
                                .offset(y:10)
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
                    }
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
                                    Text("Name: "+player.playername)
                                        .foregroundColor(.green)
                                    Spacer()
                                }
                                Divider()
                                HStack{
                                    Text("Age: "+"\(player.age)")
                                        .foregroundColor(.orange)
                                    Spacer()
                                }
                                Divider()
                                HStack{
                                    Text("Rebound Rating: "+"\(player.reboundScores)")
                                        .foregroundColor(.red)
                                    Spacer()
                                }
                                Divider()
                                HStack{ Text("Assist Rating:  "+"\(player.assistScores)")
                                        .foregroundColor(.gray)
                                    Spacer()
                                }
                                Divider()
                                HStack{
                                    Text("Three Point Scores: "+"\(player.threePointScores)")
                                        .foregroundColor(.purple)
                                    Spacer()
                                }
                                Divider()
                                HStack{
                                    Text("Overall Scores: "+"\(player.overallScores)")
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
                                Text(player.Description)
                            }
                        }.background(Color.white) //changed background color of the whole statistics page into white
                    }
                }
            }// the Bracket for the BIG Vstack just before Nav Stack
            .navigationTitle(player.playername)
            
        }//Nav stack
    }
    
}


#Preview {
    PlayerView(player: Curry)
}
