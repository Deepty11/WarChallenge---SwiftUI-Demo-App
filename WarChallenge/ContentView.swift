//
//  ContentView.swift
//  WarChallenge
//
//  Created by Rehnuma Reza on 16/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                HStack {
                    Image(playerCard)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Image(cpuCard)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    
                }
                
                Spacer()
                
                Button {
                    // Update score
                    let playerCardNo = getCardNumber(from: playerCard)
                    let cpuCardNo = getCardNumber(from: cpuCard)
                    
                    if playerCardNo > cpuCardNo {
                        playerScore += 1
                    } else if playerCardNo < cpuCardNo {
                        cpuScore += 1
                    }
                    
                    // Update cards for the next round
                    playerCard = "card" + String(randomNumber)
                    cpuCard = "card" + String(randomNumber)
                    
                } label: {
                    Image("dealbutton")
                }
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("Player")
                            .foregroundColor(Color.white)
                            .bold()
                            .padding(.bottom, 10.0)
                            .font(.headline)
                        Text(String(playerScore))
                            .foregroundColor(Color.white)
                            .bold()
                            .font(.headline)
                        
                        
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .foregroundColor(Color.white)
                            .bold()
                            .padding(.bottom, 10.0)
                            .font(.headline)
                        Text(String(cpuScore))
                            .foregroundColor(Color.white)
                            .bold()
                            .font(.headline)
                        
                    }
                    Spacer()
                    
                }
                
                Spacer()
                
            }
        }
        
    }
    
    var randomNumber: Int {
        Int.random(in: 2...14)
    }
    
    func getCardNumber(from card: String) -> Int {
        return Int(card.replacingOccurrences(of: "card",
                                  with: ""))!
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
