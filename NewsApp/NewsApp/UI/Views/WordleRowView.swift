import SwiftUI
struct WordleRowView: View {
    let guess: WordleGuess
    
    var body: some View {
        HStack(spacing: 5) {
            ForEach(0..<guess.letters.count, id: \.self) { i in
                Text(String(guess.letters[i]))
                    .frame(width: 40, height: 40)
                    .background(guess.colors[i])
                    .foregroundColor(.white)
                    .cornerRadius(5)
            }
        }
    }
}
