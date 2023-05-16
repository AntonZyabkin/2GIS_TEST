import Foundation

struct ObjectsModel {
    static let skelet = ObjectsModel(category: "testCategory", objectsItems: [
        Object(id: 123, name: "test", description: "some data to description object", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Test-Logo.svg/783px-Test-Logo.svg.png?20150906031702", type: "rest", lat: 1231, lon: 12412),
        Object(id: 123, name: "test", description: "some data to description object", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Test-Logo.svg/783px-Test-Logo.svg.png?20150906031702", type: "rest", lat: 1231, lon: 12412),
        Object(id: 123, name: "test", description: "some data to description object", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Test-Logo.svg/783px-Test-Logo.svg.png?20150906031702", type: "rest", lat: 1231, lon: 12412),
        Object(id: 123, name: "test", description: "some data to description object", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Test-Logo.svg/783px-Test-Logo.svg.png?20150906031702", type: "rest", lat: 1231, lon: 12412),
        Object(id: 123, name: "test", description: "some data to description object", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Test-Logo.svg/783px-Test-Logo.svg.png?20150906031702", type: "rest", lat: 1231, lon: 12412),
        Object(id: 123, name: "test", description: "some data to description object", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Test-Logo.svg/783px-Test-Logo.svg.png?20150906031702", type: "rest", lat: 1231, lon: 12412)
    ])
    
    var category: String
    var objectsItems: [Object]
}

