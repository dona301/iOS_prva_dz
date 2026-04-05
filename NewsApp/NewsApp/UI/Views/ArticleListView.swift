import SwiftUI

struct ArticleListView: View {
    let articles: [Article]
    
    @State private var readArticles: Set<UUID> = []
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(articles) { article in
                        
                        NavigationLink(
                            destination: ArticleDetailView(article: article)
                                .onAppear {
                                    readArticles.insert(article.id)
                                }
                        ) {
                            ArticleView(
                                article: article,
                                isRead: readArticles.contains(article.id)
                            )
                        }
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
