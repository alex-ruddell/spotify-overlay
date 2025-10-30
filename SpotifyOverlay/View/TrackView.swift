//
//  TrackView.swift
//  SpotifyOverlay
//
//  Created by Alex Ruddell on 30/10/2025.
//

import SwiftUI

struct TrackView: View {
    var currentSong = CurrentSong(
        name: "Faded Blue",
        artist: "Fred V",
        url: "https://i.scdn.co/image/ab67616d0000b273f90a6419766f58e111249110")
    
    var body: some View {
        VStack {
            Text(currentSong.name)
            Text(currentSong.artist)
            
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
            .frame(width: 128, height: 128)
            .clipShape(.rect(cornerRadius: 25))

        }
        .padding()
        .frame(maxWidth: 512, maxHeight: 256)
    }
}
