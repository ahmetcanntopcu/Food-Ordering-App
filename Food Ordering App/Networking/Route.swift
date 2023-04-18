//
//  Route.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 18.04.2023.
//

import Foundation

enum Route {
    static let baseURl = "https://yummie.glitch.me"
    
    case temp
    
    var description: String {
        
        switch self {
            
        case .temp:
            return "/temp"
        }
    }
}
