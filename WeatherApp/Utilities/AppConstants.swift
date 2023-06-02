
import Foundation
import UIKit

enum ServiceUrl {
    static let baseURL = "https://api.openweathermap.org/data/2.5/"

    enum EndPoints {
        static let weather = "/weather"
    }
}

struct AppConstant {
    static let appID = "ef0fd9866ca027e0dca474cee84c53be"
    
    enum Storyboards: String {
       case main = "Main"
    }
}
