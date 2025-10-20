//
//  SpotifyOverlayApp.swift
//  SpotifyOverlay
//
//  Created by Alex Ruddell on 20/10/2025.
//

import SwiftUI
import AppKit

@main
struct SpotifyOverlayApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    // Set the window to be always on top
                    if let window = NSApplication.shared.windows.first {
                        window.level = .floating
                        window.standardWindowButton(.closeButton)?.isHidden = true
                        window.standardWindowButton(.miniaturizeButton)?.isHidden = true
                        window.standardWindowButton(.zoomButton)?.isHidden = true
                    }
                }
        }
        // Use Settings to create a non-standard window
        //Settings {
        //    EmptyView()
        //}
        .windowStyle(.hiddenTitleBar)
    }
}
