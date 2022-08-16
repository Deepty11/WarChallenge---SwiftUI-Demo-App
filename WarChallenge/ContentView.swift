//
//  ContentView.swift
//  WarChallenge
//
//  Created by rehnuma.deepty on 16/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .aspectRatio(contentMode: .fit)
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
