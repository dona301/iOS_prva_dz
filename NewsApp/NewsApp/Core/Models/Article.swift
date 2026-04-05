import Foundation

struct Article: Identifiable, Equatable {
    let id: UUID = UUID()
    
    let title: String
    let description: String
    let content: String
    let imageURL: URL
    let timePosted: Date
    
    let authorName: String?
    let authorSurName: String?
    
    let category: Category
    
    init(
        title: String,
        description: String,
        content: String,
        imageURL: URL,
        timePosted: Date,
        authorName: String?,
        authorSurName: String?,
        category: Category
    ) {
        self.title = title
        self.description = description
        self.content = content
        self.imageURL = imageURL
        self.timePosted = timePosted
        self.authorName = authorName
        self.authorSurName = authorSurName
        self.category = category
        self.ratings = []
    }
    
    private var ratings: [Int] = []
    
    var averageRating: Double {
        guard !ratings.isEmpty else { return 0.0 }
        return Double(ratings.reduce(0, +)) / Double(ratings.count)
    }
    
    mutating func addRating(_ value: Int) {
        ratings.append(value)
    }
}
