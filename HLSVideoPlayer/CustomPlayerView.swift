//
//  ContentView.swift
//  HLSVideoPlayer
//
//  Created by Andy M on 10/27/22.
//
import SwiftUI
import AVKit

struct CustomPlayerView: View {
    @ObservedObject var viewModel: PlayerViewModel = PlayerViewModel()
    var video: Video
    
    var body: some View {
        VStack{
            PlayerViewController(viewModel: viewModel)
            Text(video.title)
            CustomControlsView(viewModel: viewModel)
        }
        .onAppear{
            viewModel.setCurrentItem(video.asAVPlayerItem)
        }
        .padding()
        .background(.thinMaterial)
    }
}
