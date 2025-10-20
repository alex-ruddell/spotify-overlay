//
//  CurrentSong.swift
//  SpotifyOverlay
//
//  Created by Alex Ruddell on 20/10/2025.
//

import Foundation

struct CurrentSong : Codable, Identifiable {
    var id = UUID()
    var name: String
    var url: String
}
