//
//  NewsAppApp.swift
//  NewsApp
//
//  Created by Dona Weiner on 05.04.2026..
//

import SwiftUI

@main
struct NewsAppApp: App {
    var body: some Scene {
        WindowGroup {
            ArticleListView(articles: Article.mock)
        }
    }
}
