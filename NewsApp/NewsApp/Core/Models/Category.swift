enum Category: Equatable {
    case sport(Sport)
    case lifestyle(Lifestyle)
    case technology(Technology)
    
    enum Sport: Equatable {
        case football
        case basketball
        case tennis
        case swimming
    }
    
    enum Lifestyle: Equatable {
        case travel
        case health
        case fashion
    }
    
    enum Technology: Equatable {
        case ai
        case mobile
        case programming
        case energy
        case space
    }
}
