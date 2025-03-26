//
//  FavoriteItemView.swift
//  AboutMe-Advanced
//
//  Created by Allicia Viona Sagi on 24/03/25.
//

import SwiftUI

struct FavoriteItemView: View {
    
    
    let favoriteItems: [FavoriteItem] = FavoriteItemSeeder.seed()

    var body: some View {
            List(favoriteItems) { item in
                Text(item.name)
            }
            .navigationTitle("My Favorites")
    }
}

#Preview {
    FavoriteItemView()
}
