//
//  YourTab.swift
//  AboutMe
//
//  Created by Allicia Viona Sagi on 26/02/25.
//

import SwiftUI

struct YourTab: View {

    @State private var searchText = ""
    
    let items = ["The Breeze", "Aeon", "Intermoda", "Foresta", "ICE BSD", "SML Plaza", "Greenwich"]
    
    var rute: Rute = Rute(
        name: "The Breeze",
        haltelist: [
            Halte (name: "Halte 1", eta: 10, latitude: 48.856614, longitude: 2.352222), Halte (name: "Halte 2", eta: 15, latitude: 48.856614, longitude: 2.352222), Halte (name: "Halte 3", eta: 20, latitude: 48.856614, longitude: 2.352222)
        ]
    )
    // Filtered list based on search text
    var filteredItems: [String] {
        if searchText.isEmpty {
            return items
        } else {
            return items.filter { $0.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                // Search bar
                TextField("Search Route...", text: $searchText)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                ScrollView {
                    VStack {
                        ForEach(filteredItems, id: \.self) { item in
                            VStack(alignment: .leading) {
                                DisclosureGroup() {
                                    ForEach(rute.haltelist, id: \.name) { halte in
                                        HStack {
                                            Circle()
                                                .fill(Color.orange)
                                                .frame(width: 8, height: 8)
                                                .padding(EdgeInsets.init(top: 0, leading: 32, bottom: 0, trailing: 0))
                                            Text(halte.name)
                                            Spacer()
                                            Text("\(halte.eta) min")
                                        }
                                    }
                                    
                                } label: {
                                    HStack(alignment: .top) {
                                        Image(systemName: "bus")
                                            .foregroundStyle(.orangee)
                                        VStack(alignment: .leading) {
                                            Text(item)
                                                .font(.headline)
                                        }
                                    }
                                }.padding()
                            }
                        }
                    }
                }
                Spacer()
            }
        }
    }
}
var previews: some View {
            ContentView()
        }
#Preview {
    YourTab()
}

struct Halte {
    let name: String
    let eta: Int
    let latitude: Double
    let longitude: Double
    
    init( name: String, eta: Int, latitude: Double, longitude: Double) {
        self.name = name
        self.eta = eta
        self.latitude = latitude
        self.longitude = longitude
    }
}
struct Rute{
    let name: String
    let haltelist: [Halte]
    
    init( name: String, haltelist: [Halte]) {
        self.name = name
        self.haltelist = haltelist
    }
}

