
import SwiftUI
import Kingfisher
struct ArticleView: View {
    let article: Article
    let isRead: Bool

    var body: some View {
        GeometryReader { proxy in
            let imageWidth = proxy.size.width * 0.3
            HStack(alignment: .center, spacing: 12) {

                KFImage(article.imageURL)
                    .placeholder { ProgressView() }
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
                        .fontWeight(isRead ? .regular : .bold)
                    
                    Text(article.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineLimit(3)
                    
                    Text(makeArticleInfo(article: article))
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
        }
        .frame(height: 120)
        .padding()
        .background(Color(.systemBackground))
        .overlay(alignment: .topLeading) {
            if !isRead {
                Text("NEW")
                    .font(.caption2)
                    .fontWeight(.bold)
                    .padding(6)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(6)
                    .padding(8)
            }
        }
        .cornerRadius(16)
        .shadow(radius: 2)
    }
}
#Preview {
    ArticleView(article: Article.mock[0], isRead: true)
}
