import Combine
import SwiftUI

final class ObjectViewModel: ObservableObject {
    
    @Published var objectModel = ObjectsModel.skelet
    let categoryName: String
    private var disposeBag = Set<AnyCancellable>()
    
    init(categoryType: String, categoryName: String, objectsItems: [Object]) {
        self.objectModel = ObjectsModel(category: categoryType, objectsItems: objectsItems)
        self.categoryName = categoryName
    }
    
    convenience init() {
        self.init(categoryType: "", categoryName: "", objectsItems: [])
        objectModel = ObjectsModel.skelet
    }
    
    func open2GIS(_ item: Object) {
        let lond = Float(item.lon)
        let latd = Float(item.lat)
        guard let url = URL(string: "dgis://2gis.ru/routeSearch/rsType/car/to/\(lond),\(latd)") else {
            print("URL error")
            return
        }

        if UIApplication.shared.canOpenURL(url) {

            UIApplication.shared.open(url)

        } else {
            UIApplication
                .shared
                .open(URL(string: "https://apps.apple.com/ru/app/2%D0%B3%D0%B8%D1%81-%D0%BA%D0%B0%D1%80%D1%82%D1%8B-%D0%B8-%D0%BD%D0%B0%D0%B2%D0%B8%D0%B3%D0%B0%D1%82%D0%BE%D1%80/id481627348")!)
        }
    }
}


