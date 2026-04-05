import SwiftUI
import Kingfisher
struct ArticleDetailView: View {
    let article: Article
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                
                KFImage(article.imageURL)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                
                CategoryBadgeView(category: article.category)
                
                Text(article.title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(makeArticleInfo(article: article))
                
                Text(article.content)
                    .font(.body)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ArticleView(article: Article.mock[0])
        .padding()
}
