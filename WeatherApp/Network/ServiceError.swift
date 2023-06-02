
import Foundation

enum ServiceError: Error {
    case unauthorized
    case decode
    case unexpectedStatusCode
    case badStatusCode
    case noResponse
    case unknown
    var message: String {
        switch self {
        case .unauthorized:
            return "Unauthorized access"
        case .decode:
            return "Deocding error"
        case .unexpectedStatusCode:
            return "Unexpected error"
        case .badStatusCode, .unknown:
            return "Something went wrong!"
        case .noResponse:
            return "no response from server"
        }
    }
}
