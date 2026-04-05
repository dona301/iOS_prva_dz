import Foundation
import SwiftUI
struct WordleGuess: Identifiable {
    let id = UUID()
    let letters: [Character]
    let colors: [Color]
}
