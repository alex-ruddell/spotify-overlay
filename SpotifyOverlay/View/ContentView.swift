//
//  ContentView.swift
//  SpotifyOverlay
//
//  Created by Alex Ruddell on 20/10/2025.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct ContentView: View {
    let imageUrl = "https://i.scdn.co/image/ab67616d0000b273c58b581c98eafab982391a6d.jpg"
    
    var body: some View {
        VStack {
            Text("Connect to Spotify!")
            Text("Insert album art here")
            
            WebImage(url:URL(string: imageUrl))
                .resizable()
                .indicator(.activity)
                .scaledToFit()
                .frame(width: 100.0, height:100.0)

        }
        .padding()
        
        ButtonView()
    }
}

#Preview {
    ContentView()
}
