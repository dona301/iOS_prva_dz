import SwiftUI
struct WordleView: View {
    
    @State private var currentWord: String = ""
    @State private var guesses: [WordleGuess] = [
        WordleGuess(letters: Array("APPLE")),
        WordleGuess(letters: Array("GRAPE"))
    ]
    
    var body: some View {
        VStack {
            
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(guesses) { guess in
                        WordleRowView(guess: guess)
                    }
                }
                .padding()
            }
            
            HStack {
                TextField("Enter word", text: $currentWord)
                    .textFieldStyle(.roundedBorder)
                
                Button("Submit") {
                    addGuess()
                }
                .buttonStyle(.borderedProminent)
                .disabled(currentWord.count != 5)
            }
            .padding()
            .background(Color(.systemBackground))
        }
    }
    private func addGuess() {
        let word = currentWord.uppercased()
        guard word.count == 5 else { return }
        let newGuess = WordleGuess(letters: Array(word))
        guesses.append(newGuess)
        currentWord = ""
    }
}

#Preview {
    WordleView()
}
