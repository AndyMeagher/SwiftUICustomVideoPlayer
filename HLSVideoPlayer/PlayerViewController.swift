//
//  PlayerViewController.swift
//  HLSVideoPlayer
//
//  Created by Andy M on 10/27/22.
//

import AVKit
import SwiftUI

struct PlayerViewController: UIViewControllerRepresentable {
    @ObservedObject var viewModel: PlayerViewModel

    private var player: AVPlayer {
        return viewModel.player
    }

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.modalPresentationStyle = .fullScreen
        controller.player = player
        controller.player?.play()
        
        return controller
    }

    func updateUIViewController(_ playerController: AVPlayerViewController, context: Context) {}
}
