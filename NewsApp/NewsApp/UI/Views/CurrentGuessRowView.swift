import SwiftUI

struct CurrentGuessRowView: View {
    @Binding var currentWord: String
    let maxLength: Int = 5
    
    var body: some View {
        HStack(spacing: 5) {
            ForEach(0..<maxLength, id: \.self) { i in
                let letter = i < currentWord.count ? String(currentWord[currentWord.index(currentWord.startIndex, offsetBy: i)]) : ""
                
                Text(letter)
                    .frame(width: 40, height: 40)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(5)
                    .onTapGesture {
                        if i < currentWord.count {
                            var letters = Array(currentWord)
                            letters.remove(at: i)
                            currentWord = String(letters)
                        }
                    }
            }
        }
    }
}
