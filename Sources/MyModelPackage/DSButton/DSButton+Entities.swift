import SwiftUI

public extension DSButton {
    
    public enum State {
        case normal
        case disable
        case loading
    }
    
    public enum `Type` {
        case accent
        case primary
        case secondary
        case negative
        case positive
        case staticLight
        case custom(fg: Color, bg: Color)
    }
    
    public enum Size {
        case s
        case m
        case l
        case custom(bh: CGFloat, vp: CGFloat, hp: CGFloat, f: Font)
        
        /// Spacing between icon and title
        var spacing: CGFloat {
            return switch self {
            case .s: 4
            case .m: 6
            case .l: 8
            case .custom(_, _, _, _): 6
            }
        }
        
        var buttonHeight: CGFloat {
            return switch self {
            case .s: 34
            case .m: 44
            case .l: 52
            case .custom(let bh, _, _, _): bh
            }
        }
        
        var iconSideLenght: CGFloat {
            return switch self {
            case .s: 16
            case .m: 20
            case .l: 24
            case .custom(_, _, _, _): 20
            }
        }
        
        /// Vertical padding between content and background
        var verticalPadding: CGFloat {
            return switch self {
            case .s: 8
            case .m: 12
            case .l: 14
            case .custom(_, let vp, _, _): vp
            }
        }
        
        /// Horizontal padding between content and background
        var horizontalPadding: CGFloat {
            return switch self {
            case .s: 12
            case .m: 20
            case .l: 24
            case .custom(_, _, let hp, _): hp
            }
        }
        
        var font: Font {
            return switch self {
            case .s: .system(size: 13, weight: .regular)
            case .m: .system(size: 15, weight: .regular)
            case .l: .system(size: 17, weight: .regular)
            case .custom(_, _, _, let f): f
            }
        }
        
        /// Progress bar scale value for ``RC_Pay_Stage/DSButton/State-swift.enum/loading`` state
        var progressScaleFactor: CGFloat {
            return switch self {
            case .s: 0.65
            case .m: 0.85
            case .l: 0.95
            case .custom(_, _, _, _): 0.85

            }
        }
        
    }
    
}

