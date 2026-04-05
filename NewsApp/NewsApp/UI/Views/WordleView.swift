import SwiftUI
struct WordleView: View {
    let possibleWords = ["APPLE", "GRAPE", "BERRY", "PEACH", "MANGO"]
    @State private var solution: String = "APPLE"
    @State private var currentWord: String = ""
    @State private var guesses: [WordleGuess] = []
    
    init() {
        _solution = State(initialValue: possibleWords.randomElement() ?? "APPLE")
    }
    
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
        let colors = computeColors(for: word)
        let newGuess = WordleGuess(letters: Array(word), colors: colors)
        guesses.append(newGuess)
        currentWord = ""
    }
    func computeColors(for guess: String) -> [Color] {
        let guessLetters = Array(guess)
        let solutionLetters = Array(solution)
        var colors: [Color] = Array(repeating: .gray, count: 5)
        
        for i in 0..<5 {
            if guessLetters[i] == solutionLetters[i] {
                colors[i] = .green
            }
        }
        
        for i in 0..<5 {
            if colors[i] == .green { continue }
            if solutionLetters.contains(guessLetters[i]) {
                let solutionCount = solutionLetters.filter { $0 == guessLetters[i] }.count
                let greenCount = zip(guessLetters, colors).filter { $0.0 == guessLetters[i] && $0.1 == .green }.count
                if greenCount < solutionCount {
                    colors[i] = .yellow
                }
            }
        }
        
        return colors
    }
}

#Preview {
    WordleView()
}
