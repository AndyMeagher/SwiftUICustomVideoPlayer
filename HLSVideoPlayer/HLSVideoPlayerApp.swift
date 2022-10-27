//
//  HLSVideoPlayerApp.swift
//  HLSVideoPlayer
//
//  Created by Andy M on 10/27/22.
//

import SwiftUI

@main
struct HLSVideoPlayerApp: App {
    var body: some Scene {
        WindowGroup {
            let video = Video(urlString: "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8", title: "Big Bunny")
            CustomPlayerView(video: video)
        }
    }
}
