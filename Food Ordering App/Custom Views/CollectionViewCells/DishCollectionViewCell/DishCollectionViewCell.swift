//
//  DishCollectionViewCell.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 18.03.2023.
//

import UIKit

class DishCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: DishCollectionViewCell.self)
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    func setup(dish: Dish) {
        
        titleLbl.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asURL)
        caloriesLbl.text = dish.formattedCalories
        descriptionLbl.text = dish.description
        
    }
    
    
    
}
