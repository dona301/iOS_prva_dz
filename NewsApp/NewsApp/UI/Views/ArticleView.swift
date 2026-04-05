import SwiftUI
import Kingfisher
struct ArticleView: View {
    let article: Article
    
    var body: some View {
        GeometryReader { proxy in
            let imageWidth = proxy.size.width * 0.3
            HStack(alignment: .center, spacing: 12) {
                KFImage(article.imageURL)
                    .placeholder {
                        ProgressView()
                    }
                    .resizable()
                    .scaledToFill()
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
                        Text(makeArticleInfo(article: article))
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
}

#Preview {
    ArticleView(article: Article.mock[0])
        .padding()
}

