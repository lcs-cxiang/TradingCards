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
                LinearGradient(gradient: Gradient(colors:[Color.yellow, Color.blue,Color.white]), startPoint: .leading, endPoint: .trailing)
                    .ignoresSafeArea(edges:.top)
                    
                //Image and Background
                VStack{
                    VStack {
                        
                        LinearGradient(gradient: Gradient(colors:[Color.yellow, Color.blue,Color.white]), startPoint: .leading, endPoint: .trailing)
                                                .ignoresSafeArea()
                            .ignoresSafeArea(edges:.top)
                        ZStack{
                            Color.white
                                .frame(width:360,height:430)
                            Color.yellow
                                .frame(width:340,height:410)
                            Image(player.imageName)
                                .resizable()
                                .frame(width:420,height:370)
                                .offset(y:10)
                            HStack{
                                VStack{
                                    Star()
                                        .fill(
                                            LinearGradient(colors: [.yellow, .blue], startPoint: .top, endPoint: .bottom)
                                        )
                                        .aspectRatio(1, contentMode: .fit)
                                        .offset(x:40,y:20)
                                        .shadow(radius: 5.0)
                                    Star()
                                        .fill(
                                            LinearGradient(colors: [.yellow, .blue], startPoint: .top, endPoint: .bottom)
                                        )
                                        .aspectRatio(1, contentMode: .fit)
                                        .offset(x:255,y:-110)
                                        .shadow(radius: 5.0)
                                
                                    Spacer()
                                }
                                Spacer(minLength: 100)
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
                            //Added another Vstack to make the whole top part of the Statistics into an aggregate part so that it can be modified as one sector
                            VStack{
                                HStack{
                                    Text("Name: "+player.playername)
                                    Spacer()
                                }
                                Divider()
                                HStack{
                                    Text("Age: "+"\(player.age)")
                                    Spacer()
                                }
                                Divider()
                                HStack{
                                    Text("Rebound Rating: "+"\(player.reboundScores)")
                                    Spacer()
                                }
                                Divider()
                                HStack{ Text("Assist Rating:  "+"\(player.assistScores)")
                                    Spacer()
                                }
                                Divider()
                                HStack{
                                    Text("Three Point Scores: "+"\(player.threePointScores)")
                                    Spacer()
                                }
                                Divider()
                                HStack{
                                    Text("Overall Scores: "+"\(player.overallScores)")
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
                        } .background( LinearGradient(gradient: Gradient(colors:[Color.yellow, Color.blue,Color.white]), startPoint: .leading, endPoint: .trailing))
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
