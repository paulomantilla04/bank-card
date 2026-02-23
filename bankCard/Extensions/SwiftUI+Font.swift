//
//  SwiftUI+Font.swift
//  bankCard
//
//  Created by Paulo Mantilla on 22/02/26.
//

import SwiftUI

extension Font {
    static func sora (fontStyle: Font.TextStyle = .body, fontWeight: Weight = .regular) -> Font {
        return Font.custom(CustomFont(weight: fontWeight).rawValue, size: fontStyle.size)
    }
}

extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle: return 45
        case .title: return 30
        case .title2: return 27
        case .title3: return 25
        case .headline: return 18
        case .body: return 16
        case .callout: return 15
        case .subheadline: return 14
        case .footnote: return 13
        case .caption: return 12
        case .caption2: return 11
        @unknown default: return 8
        }
    }
}

enum CustomFont: String {
    case regular = "Sora-Regular"
    case semibold = "Sora-SemiBold"
    case bold = "Sora-Bold"
    case extrabold = "Sora-ExtraBold"
    
    init(weight: Font.Weight) {
        switch weight {
        case .regular:
            self = .regular
        case .semibold:
            self = .semibold
        case .bold:
            self = .bold
        case .black:
            self = .extrabold
        default:
            self = .regular
        }
    }
}
