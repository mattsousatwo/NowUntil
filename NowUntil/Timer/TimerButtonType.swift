//
//  TimerButtonType.swift
//  NowUntil
//
//  Created by Matthew Sousa on 11/18/21.
//

import Foundation
import SwiftUI

/// Types of timer buttons
enum TimerButtonType {
    case stop
    case pause
    case start
    
    var image: Image {
        switch self {
        case .stop:
//            return Image(systemName: "stop")
            return Image(systemName: "stop.fill")
        case .pause:
            return Image(systemName: "pause")
        case .start:
//            return Image(systemName: "play")
            return Image(systemName: "play.fill")
        }
    }
}
