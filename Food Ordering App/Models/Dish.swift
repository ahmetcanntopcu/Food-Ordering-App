//
//  Dish.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 18.03.2023.
//

import Foundation

struct Dish {
    
    let id, name, image, description: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
}
