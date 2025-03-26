//
//  HomeView.swift
//  AboutMe
//
//  Created by Allicia Viona Sagi on 26/02/25.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        VStack {
            Text("All About")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Image("Placeholder")
                .resizable()
                .scaledToFit()
            Text("Write Name Here")
                .font(.title)
        }
        
        
        .padding()
        
        
    }
    
}

#Preview {
    HomeView()
}


struct FontNames {
    static var americanTypwriter = "American Typewriter"
    static var arial = "Arial"
    static var baskerville = "Baskerville"
    static var chalkduster = "Chalkduster"
    static var courier = "Courier"
    static var georgia = "Georgia"
    static var helvetica = "Helvetica"
    static var palatino = "Palatino"
    static var zapfino = "Zapfino"
}

