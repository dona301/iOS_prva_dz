import SwiftUI

struct ArticleListView: View {
    let articles: [Article]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(articles) { article in
                        ArticleView(article: article)
                    }
                }
                .padding()
            }
            .navigationTitle("News")
        }
    }
}

#Preview {
    ArticleListView(articles: Article.mock)
}
