import SwiftUI

struct ArticleView: View {
    let article: Article
    
    var body: some View {
        GeometryReader { proxy in
            let imageWidth = proxy.size.width * 0.3
            HStack(alignment: .center, spacing: 12) {
                AsyncImage(url: article.imageURL) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: imageWidth, height: 100)
                .clipped()
                .cornerRadius(12)
                
                VStack(alignment: .leading) {
                    CategoryBadgeView(category: article.category)
                    
                    Text(article.title)
                        .font(.headline)
                        .foregroundColor(article.category.color)
                        .lineLimit(2)
                    
                    Text(article.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineLimit(3)
                    
                    HStack {
                        Text(formattedDate)
                        Spacer()
                        Text(String(format: "%.1f ★", article.averageRating))
                    }
                    .font(.caption)
                    .foregroundColor(.gray)
                }
            }
        }
        .frame(height: 120)
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(radius: 2)
    }
    
    private var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: article.timePosted)
    }
}

#Preview {
    ArticleView(article: Article.mock[0])
        .padding()
}
