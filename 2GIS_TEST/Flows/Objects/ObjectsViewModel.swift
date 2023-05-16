import Combine
import SwiftUI

final class ObjectViewModel: ObservableObject {
    
    @Published var objectModel = ObjectsModel.skelet
    
    private var disposeBag = Set<AnyCancellable>()
    
    init(objects: [Object], categotyType: String) {
        self.objectModel = ObjectsModel(category: categotyType, objectsItems: objects)
    }
}
