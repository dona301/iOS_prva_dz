import Foundation

extension Article {
    static let mock: [Article] = [
        Article(
            title: "AI is changing development",
            description: "Short overview of AI impact",
            content: "Full article content here...",
            imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/f/f8/Sam_Altman_TechCrunch_SF_2019_Day_2_Oct_3_%28cropped_3%29.jpg")!,
            timePosted: Date(),
            authorName: "John",
            authorSurName: "Doe",
            category: .technology(.ai)
        ),
        Article(
            title: "Football finals results",
            description: "Match summary",
            content: "Detailed match analysis...",
            imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/e/e9/ISL-HRV_%287%29.jpg")!,
            timePosted: Date(),
            authorName: nil,
            authorSurName: nil,
            category: .sport(.football)
        ),
        Article(
            title: "Advancements in Renewable Energy",
            description: "How solar and wind are transforming power",
            content: "Full article content here...",
            imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/e/eb/A_Wind_turbine_near_Kanyakumari.jpg")!,
            timePosted: Date(),
            authorName: "Alice",
            authorSurName: "Smith",
            category: .technology(.energy)
        ),
        Article(
            title: "Basketball League Highlights",
            description: "Top plays from the season",
            content: "Full article content here...",
            imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/06/Steph_Curry_%2851915116957%29.jpg")!,
            timePosted: Date(),
            authorName: "Michael",
            authorSurName: "Jordan",
            category: .sport(.basketball)
        ),
        Article(
            title: "New Culinary Trends",
            description: "Exploring plant-based cuisine",
            content: "Full article content here...",
            imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/4/4e/Vegetarian_diet.jpg")!,
            timePosted: Date(),
            authorName: "Emma",
            authorSurName: "Brown",
            category: .lifestyle(.health)
        ),
        Article(
            title: "SpaceX Mars Mission Update",
            description: "Latest progress on Mars colonization",
            content: "Full article content here...",
            imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/c/c8/Falcon_1_Flight_4_liftoff.jpg")!,
            timePosted: Date(),
            authorName: "Elon",
            authorSurName: "Musk",
            category: .technology(.space)
        ),
        Article(
            title: "Yoga for Mental Health",
            description: "Benefits of daily practice",
            content: "Full article content here...",
            imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/03/Gorakshanath.jpg")!,
            timePosted: Date(),
            authorName: "Sophia",
            authorSurName: "Lee",
            category: .lifestyle(.health)
        ),
        Article(
            title: "Top Travel Destinations 2026",
            description: "Must-visit cities around the world",
            content: "Full article content here...",
            imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/3/36/United_Airlines_Boeing_777-200_Meulemans.jpg")!,
            timePosted: Date(),
            authorName: "Liam",
            authorSurName: "Wilson",
            category: .lifestyle(.travel)
        ),
        Article(
            title: "Olympic Swimming Records Broken",
            description: "New world records set this year",
            content: "Full article content here...",
            imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/9/98/Phelps_400m_IM-crop.jpg")!,
            timePosted: Date(),
            authorName: nil,
            authorSurName: nil,
            category: .sport(.swimming)
        ),
        Article(
            title: "The Future of Electric Cars",
            description: "How EVs are shaping transport",
            content: "Full article content here...",
            imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/2/28/Hyundai_Ioniq_5_IMG_4854.jpg")!,
            timePosted: Date(),
            authorName: "Robert",
            authorSurName: "Taylor",
            category: .technology(.energy)
        ),
        Article(
            title: "Photography Tips for Beginners",
            description: "Master lighting and composition",
            content: "Full article content here...",
            imageURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/2/2b/Photographer_Photographing_Nevada_Mountains.jpg")!,
            timePosted: Date(),
            authorName: "Olivia",
            authorSurName: "Martinez",
            category: .lifestyle(.travel)
        )
    ]
}
