import SwiftUI
struct RootView: View {
    var body: some View {
        TabView {
            NavigationStack {
                ArticleListView(articles: Article.mock)
            }
            .tabItem {
                Label("News", systemImage: "newspaper")
            }
            
            NavigationStack{
                WordleView()
            }
            .tabItem {
                Label("Games", systemImage: "gamecontroller")
            }
        }
    }
}
