//
//  CategoryCollectionViewCell.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 18.03.2023.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: CategoryCollectionViewCell.self)
    
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLbl: UILabel!
    
    
    func setup(category: DishCategory) {
        
        categoryTitleLbl.text = category.name
        categoryImageView.kf.setImage(with: category.image.asURL)
        
    }
    
}
