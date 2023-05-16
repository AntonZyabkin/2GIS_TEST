import Moya
import Foundation

enum HomeEndpoints {
    case getCategories
}

extension HomeEndpoints: TargetType {
    var headers: [String : String]? {
        switch self {
        case .getCategories:
            return [:]
        }
    }
    var baseURL: URL {
        switch self {
        case .getCategories:
            return URL(string: "https://rsttur.ru/api")!
        }
    }
    var path: String {
        switch self {
        case .getCategories:
            return "/base-app/map"
        }
    }
    var method: Moya.Method {
        switch self {
        case .getCategories:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .getCategories:
            return .requestPlain
        }
    }
}
