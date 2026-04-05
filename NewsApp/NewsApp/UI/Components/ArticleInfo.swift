import Foundation

@resultBuilder
struct ArticleInfoBuilder {
    static func buildBlock(_ components: String...) -> String {
        components
            .filter { !$0.isEmpty }
            .joined(separator: " • ")
    }
}

@ArticleInfoBuilder
func makeArticleInfo(article: Article) -> String {
    {
        let df = DateFormatter()
        df.dateFormat = "d. MMMM"
        df.locale = Locale(identifier: "hr_HR")
        return df.string(from: article.timePosted)
    }()
    [article.authorName, article.authorSurName]
        .compactMap { $0 }
        .joined(separator: " ")
    String(format: "%.1f", article.averageRating)
}
