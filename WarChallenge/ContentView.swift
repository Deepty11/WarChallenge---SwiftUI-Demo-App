//
//  ContentView.swift
//  WarChallenge
//
//  Created by Rehnuma Reza on 16/8/22.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Image("card2")
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    
                }
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Image("dealbutton")
                }

                //Image("dealbutton").padding()
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("Player")
                            .foregroundColor(Color.white)
                            .bold()
                            .padding(.bottom, 10.0)
                            .font(.headline)
                        Text("0")
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
                        Text("0")
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
