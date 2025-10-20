//
//  ButtonView.swift
//  SpotifyOverlay
//
//  Created by Alex Ruddell on 20/10/2025.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Text("Prev")
            }
            Button {
                
            } label: {
                Image(systemName: "pause.fill")
                Image(systemName: "play.fill")
            }
            Button {
                
            } label: {
                Text("Next")
            }
        }
    }
}
