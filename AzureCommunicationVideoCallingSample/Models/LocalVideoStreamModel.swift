//
//  LocalVideoStreamModel.swift
//  AzureCommunicationVideoCallingSample
//
//  Created by Hyounwoo Sung on 2021/02/04.
//

import SwiftUI
import AzureCommunicationCalling

class LocalVideoStreamModel: VideoStreamModel {
//    public var localVideoStream: LocalVideoStream?

//    public init(id: String, identity: CommunicationUserIdentifier?, displayName: String?, localVideoStream: LocalVideoStream?) {
//        super.init(id: id, identity: identity, displayName: displayName)
//        self.localVideoStream = localVideoStream
//    }

    public func createView(localVideoStream: LocalVideoStream?) {
        do {
            if let localVideoStream = localVideoStream {
                let renderer = try Renderer(localVideoStream: localVideoStream)
                self.renderer = renderer
                self.videoStreamView = VideoStreamView(view: (try renderer.createView()))
            }
        } catch {
            print("Failed starting VideoStreamView for \(String(describing: displayName)) : \(error.localizedDescription)")
        }
    }
}
