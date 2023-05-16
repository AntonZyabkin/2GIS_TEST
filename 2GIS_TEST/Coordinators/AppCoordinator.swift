import SwiftUI
import FlowStacks

struct AppCoordinator: View {
    enum Screen {
        case categories
        case objects
    }
    
    @State var routes: Routes<Screen> = [.root(.categories)]

    let decoderService: DecoderService
    let networkService: NetworkService

    init() {
        self.decoderService = DecoderService()
        self.networkService = NetworkService(decoderService: decoderService)
    }
    
    var body: some View {
        Router($routes) { screen, _ in
            switch screen {
            case .categories:
                CategoriesView(viewModel: CategoriesViewModel(apiService: CategoriesAPIService(networkService: networkService)))
            case .objects:
                Text("secont one")
            }
        }
    }
}
