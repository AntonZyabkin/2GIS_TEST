import Foundation

struct CategoriesModel {
    var categoryItems: [CategoryItem]
}

struct CategoryItem: Identifiable {
    let id = UUID()
    let data: Category
}
