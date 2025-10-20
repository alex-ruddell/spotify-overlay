//
//  SpotifyManager.swift
//  SpotifyOverlay
//
//  Created by Alex Ruddell on 20/10/2025.
//

import Foundation

class SpotifyManager {
    func getCurrentSong(completion: @escaping (CurrentSong) -> ()) {
        guard let url = URL(string: "INSERT SPOTIFY URL") else {
            return
        }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let currentSong = try! JSONDecoder().decode(CurrentSong.self, from: data)
            
            DispatchQueue.main.async {
                completion(currentSong)
            }
        }
        .resume()
    }
}
