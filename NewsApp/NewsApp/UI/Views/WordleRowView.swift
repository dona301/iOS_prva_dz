import SwiftUI
struct WordleRowView: View {
    let guess: WordleGuess
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<5, id: \.self) { i in
                Text(String(guess.letters[i]))
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(width: 50, height: 50)
                    .background(Color(.systemGray5))
                    .cornerRadius(6)
            }
        }
    }
}
