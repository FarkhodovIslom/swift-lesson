enum TitsSizeCategory {
    case small, average, big, legendary
    
    var description: String {
        switch self {
        case .small: return "маленькие 🍒"
        case .average: return "средние 🍈"
        case .big: return "большие 🍉"
        case .legendary: return "легендарные 🍑"
        }
    }
}

let titsSize = Int.random(in: 1...30)
print("Размер: \(titsSize) см")

let titsCategory: TitsSizeCategory
if titsSize < 10 {
    titsCategory = .small
} else if titsSize < 15 {
    titsCategory = .average
} else if titsSize < 20 {
    titsCategory = .big
} else {
    titsCategory = .legendary
}

print("Твои сиськи — \(titsCategory.description)")

