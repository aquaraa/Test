//
//  FunFactsView.swift
//  AboutMe
//
//  Created by Allicia Viona Sagi on 26/02/25.
//

import SwiftUI

struct FunFactsView: View {
    
    var allFunFacts =
    [
        "There are 12,600 people in my town.",
        "There is a farmers market every Wednesday in the summer.",
        "There is a creek that runs through town."
    ]
    
    @State private var funFact = ""
    
    
    var body: some View {
        ZStack {
            VStack {
                
                Text("Fun Facts")
                    .font(.largeTitle)
                
                Text(funFact)
                    .font(.title)
                    .frame(maxWidth: 400, minHeight: 300)
                
                Button("Show Random Fact") {
                    funFact = allFunFacts.randomElement() ?? "No Fun."
                }
                
            }
            .padding()
        }
        
    }
}

#Preview {
    FunFactsView()
}
