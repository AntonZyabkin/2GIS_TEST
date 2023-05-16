import Foundation

// MARK: - Categories
struct Categories: Codable {
    let success: Bool
    let time: String
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let categories: [Category]
    let objects: [Object]
}

// MARK: - Category
struct Category: Codable {
    let name, type, color: String
    let count: Int
}

// MARK: - Object
struct Object: Codable, Identifiable {
    let id: Int
    let name, description: String
    let image: String
    let type: String
    let lat, lon: Double

    enum CodingKeys: String, CodingKey {
        case id, name, description, image, type, lat, lon
    }
}
