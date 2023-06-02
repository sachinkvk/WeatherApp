
import Foundation

protocol ApiResource {
    var path: String { get }
    var method: HttpMethod { get }
    func getRequest() -> URLRequest?
}

enum RequestTypes {
    case weather(lat: Double, long: Double)
}

extension RequestTypes: ApiResource {
    private var baseUrl: String {
        return ServiceUrl.baseURL
    }

    var method: HttpMethod {
        switch self {
        case .weather:
            return .get
        }
    }

    var path: String {
        switch self {
        case .weather:
            return baseUrl + ServiceUrl.EndPoints.weather
        }
    }

    func getRequest() -> URLRequest? {
        guard let url = URL(string: path) else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        return request
    }
}
