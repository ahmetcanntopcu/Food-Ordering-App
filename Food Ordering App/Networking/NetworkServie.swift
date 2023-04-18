//
//  NetworkServie.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 18.04.2023.
//

import Foundation

struct NetworkService {
    
    /// This function helps generate the UrlRequest
    /// - Parameters:
    ///   - route: The path the resource in backend
    ///   - method: type of request to be made
    ///   - paramaters: whatever extra information you need to pass to the backend
    /// - Returns: UrlRequest
     func createRequest(route: Route, method: Method, paramaters: [String:Any]? = nil) -> URLRequest? {
        
        let urlString = Route.baseURl + route.description
        // "https://yummie.glitch.me/temp"
        
        guard let url = urlString.asURL else {
            return nil
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = method.rawValue
        
        if let params = paramaters {
            switch method {
                
            case .get:
                var urlComponent = URLComponents(string: urlString)
                urlComponent?.queryItems = params.map {
                    URLQueryItem(name: $0, value: "\($1)")
                }
                urlRequest.url = urlComponent?.url
                
            case .post, .delete, .patch:
                
                let bodyData = try? JSONSerialization.data(withJSONObject: params, options: [])
                urlRequest.httpBody = bodyData
            
            }
        }
        return urlRequest
    }
}
