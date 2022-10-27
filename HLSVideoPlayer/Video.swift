//
//  Video.swift
//  HLSVideoPlayer
//
//  Created by Andy M on 10/27/22.
//

import Foundation
import AVKit
struct Video{
    let urlString : String
    let title: String
    
    var asAVPlayerItem : AVPlayerItem{
        return AVPlayerItem(url: URL(string: urlString)!)
    }
}
