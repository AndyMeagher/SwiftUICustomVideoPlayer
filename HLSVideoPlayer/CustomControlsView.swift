//
//  CustomControlsView.swift
//  HLSVideoPlayer
//
//  Created by Andy M on 10/27/22.
//

import SwiftUI

struct CustomControlsView: View {
    @ObservedObject var viewModel: PlayerViewModel

    var body: some View {
        HStack {
            if viewModel.isPlaying == false {
                Button(action: {
                    viewModel.player.play()
                }, label: {
                    Image(systemName: "play.circle")
                        .imageScale(.large)
                })
            } else {
                Button(action: {
                    viewModel.player.pause()
                }, label: {
                    Image(systemName: "pause.circle")
                        .imageScale(.large)
                })
            }
            
            if let duration = viewModel.duration {
                Slider(value: $viewModel.currentTime, in: 0...duration, onEditingChanged: { isEditing in
                    viewModel.isEditingCurrentTime = isEditing
                })
            } else {
                Spacer()
            }
        }
    }
}
