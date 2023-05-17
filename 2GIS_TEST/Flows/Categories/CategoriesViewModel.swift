import Combine
import SwiftUI

final class CategoriesViewModel: ObservableObject {
    
    @Published var categoriesModel = CategoriesModel(categoryItems: [])
    @Published var showingAlert = false
    
    private var objects: [Object] = []
    private let apiService: CategoriesAPIServicable
    private var disposeBag = Set<AnyCancellable>()
    
    
    init(apiService: CategoriesAPIServicable) {
        self.apiService = apiService
        start()
    }
    
    func start() {
        Task(priority: .userInitiated) {
            do {
                let categories = try await apiService.getLatestViewed()
                let categoriesItems = categories.data.categories.map { CategoryItem(data: $0)}
                objects = categories.data.objects
                await MainActor.run {
                    categoriesModel = CategoriesModel(categoryItems: categoriesItems)
                }
            } catch let error as NetworkError {
                await showError(error)
            }
        }
    }
    
    func getObjects(type: String) -> [Object] {
        return objects.filter { $0.type == type }
    }
    
    private func showError(_ error: Error) async {
        await MainActor.run {
            print(error)
            showingAlert.toggle()
        }
    }
}
