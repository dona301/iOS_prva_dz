//
//  Article.swift
//  
//
//  Created by Dona Weiner on 04.04.2026..
// Definirajte Swift tip koji predstavlja jedan novinski članak.
// Članak mora imati naslov, opis, sadržaj, URL fotografije i vrijeme objave. Može, ali ne mora imati autora. Svaki članak pripada nekoj kategoriji, a neka kategorija može imati podkategoriju. Članci mogu imati ocjene, a prosječna ocjena mora biti dohvatljiva u svakom trenutku. Na kraju napišite nekoliko mock članaka za potrebe renderiranja sučelja.

class Article: Identifiable {
    var id: UUID = UUID()
    var title: String
    var content: String
    var description: String
    var imageURL: URL
    var timePosted : Date
    var authorName : String?
    var authorSurName : String?
    var rating : [Int] = []
}

class ArticleCategory: Identifiable {
    var id: UUID = UUID()
    var name: String
    var SubCategory : [ArticleCategory]?
}
