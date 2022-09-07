//
//  Theme.swift
//  Scrumdinger
//
//  Created by Nguyen Phuc Kiet on 07/09/2022.
//

// mặc dù không tạo 1 view trong section này
// thêm Color properties từ SwiftUI framework
import Foundation
import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow, .purple: return .black
        case .indigo, .magenta, .navy, .oxblood:
            return .white
        }
    }
    
    var mainColor: Color {
        switch self {
        case .indigo:
            return .indigo
        case .orange:
            return .orange
        case .purple:
            return .purple
        case .teal:
            return .teal
        case .yellow:
            return .yellow
        case .bubblegum, .buttercup, .lavender, .magenta, .navy, .oxblood, .periwinkle, .poppy, .seafoam, .sky, .tan:
            return .black
        }
    }
    
    var name: String {
        rawValue.capitalized
    }
}
