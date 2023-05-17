import Foundation

struct CategoriesModel {
    static let skelet = CategoriesModel(categoryItems: [
        CategoryItem(data: Category(name: " ", type: " ", color: " ", count: 0)),
        CategoryItem(data: Category(name: " ", type: " ", color: " ", count: 0)),
        CategoryItem(data: Category(name: " ", type: " ", color: " ", count: 0)),
        CategoryItem(data: Category(name: " ", type: " ", color: " ", count: 0)),
        CategoryItem(data: Category(name: " ", type: " ", color: " ", count: 0)),
    ])
    
    var categoryItems: [CategoryItem]
}

struct CategoryItem: Identifiable {
    let id = UUID()
    let data: Category
}
