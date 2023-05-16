import Foundation

struct CategoriesModel {
    static let skelet = CategoriesModel(categoryItems: [
        CategoryItem(data: Category(name: "test2", type: "test", color: "test", count: 10)),
        CategoryItem(data: Category(name: "test2", type: "test", color: "test", count: 10)),
        CategoryItem(data: Category(name: "test2", type: "test", color: "test", count: 10)),
        CategoryItem(data: Category(name: "test2", type: "test", color: "test", count: 10)),
        CategoryItem(data: Category(name: "test2", type: "test", color: "test", count: 10)),
    ])
    
    var categoryItems: [CategoryItem]
}

struct CategoryItem: Identifiable {
    let id = UUID()
    let data: Category
}
