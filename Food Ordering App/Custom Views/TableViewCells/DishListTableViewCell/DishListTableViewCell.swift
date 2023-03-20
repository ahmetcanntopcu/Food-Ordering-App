//
//  DishListTableViewCell.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 20.03.2023.
//

import UIKit

class DishListTableViewCell: UITableViewCell {
    
    static let identifier = String(describing: DishListTableViewCell.self)
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var dishTitleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    func setup(dish: Dish) {
        dishImageView.kf.setImage(with: dish.image?.asURL)
        dishTitleLbl.text = dish.name
        descriptionLbl.text = dish.description
    }
    
    func setup(order: Orders) {
        dishImageView.kf.setImage(with: order.dish?.image?.asURL)
        dishTitleLbl.text = order.dish?.name
        descriptionLbl.text = order.name
    }
}
