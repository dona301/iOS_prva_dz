import SwiftUI
struct WordleView: View {
    let possibleWords = ["APPLE", "GRAPE", "BERRY", "PEACH", "MANGO"]
    @State private var solution: String = "APPLE"
    @State private var currentWord: String = ""
    @State private var guesses: [WordleGuess] = []
    @State private var gameOver: Bool = false
    @State private var gameWon: Bool = false
    
    init() {
        _solution = State(initialValue: possibleWords.randomElement() ?? "APPLE")
    }
    
    var body: some View {
        ZStack {
            VStack {
                
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach(guesses) { guess in
                            WordleRowView(guess: guess)
                        }
                        CurrentGuessRowView(currentWord: $currentWord)
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
            }                .padding()
                .background(Color(.systemBackground))
                .overlay(
                    Group {
                        if gameOver {
                            VStack(spacing: 20) {
                                Text(gameWon ? "You Won!" : "Game Over")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                
                                Text("The word was: \(solution)")
                                    .font(.title2)
                                
                                Button("Play Again") {
                                    resetGame()
                                }
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color.black.opacity(0.7))
                        }
                    }
                )
        }
        
    }
    func addGuess() {
        guard currentWord.count == 5 else { return }

        let newGuess = currentWord.uppercased()
        guesses.append(WordleGuess(letters: Array(newGuess), colors: computeColors(for: newGuess)))
        
        if newGuess == solution {
            gameWon = true
            gameOver = true
        }
        
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
    func resetGame() {
        guesses = []
        currentWord = ""
        solution = possibleWords.randomElement() ?? "APPLE"
        gameOver = false
        gameWon = false
    }
}

#Preview {
    WordleView()
}
