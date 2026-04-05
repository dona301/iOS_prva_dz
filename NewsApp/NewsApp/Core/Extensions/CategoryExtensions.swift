import SwiftUI

extension Category {
    var color: Color {
        switch self {
        case .sport:
            return .green
        case .lifestyle:
            return .pink
        case .technology:
            return .blue
        }
    }
    
    var displayName: String {
        switch self {
        case .sport(let sub):
            return "Sport • \(sub)"
        case .lifestyle(let sub):
            return "Lifestyle • \(sub)"
        case .technology(let sub):
            return "Tech • \(sub)"
        }
    }
}
