import SwiftUI

struct CategoryBadgeView: View {
    let category: Category
    
    var body: some View {
        Text(category.displayName)
            .font(.caption)
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(category.color.opacity(0.2))
            .foregroundColor(category.color)
            .cornerRadius(8)
    }
}
