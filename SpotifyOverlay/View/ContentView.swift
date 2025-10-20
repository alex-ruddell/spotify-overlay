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
    var currentSong = CurrentSong(name: "Song Name", url: "https://i.scdn.co/image/ab67616d0000b273c58b581c98eafab982391a6d.jpg")
    
    var body: some View {
        VStack {
            Text("Connect to Spotify!")
            Text(currentSong.name)
            
            AsyncImage(url: URL(string: currentSong.url)) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } else if phase.error != nil {
                    Text("Error loading image")
                    Text(phase.error?.localizedDescription ?? "Error")
                     // Display an error message
                } else {
                    ProgressView() // Show a loading indicator
                }
            }
            
            WebImage(url:URL(string: currentSong.url))
                .resizable()
                .indicator(.activity)
                .scaledToFit()
                .frame(width: 250, height: 250)

        }
        .padding()
        
        ButtonView()
    }
}

#Preview {
    ContentView()
}
