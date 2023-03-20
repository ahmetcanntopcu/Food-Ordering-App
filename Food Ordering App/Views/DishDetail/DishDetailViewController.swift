//
//  DishDetailViewController.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 19.03.2023.
//

import UIKit

class DishDetailViewController: UIViewController {
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var dishTitleLbl: UILabel!
    @IBOutlet weak var dishCaloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        populateView()
    }
    
    private func populateView() {
        
        dishImageView.kf.setImage(with: dish.image?.asURL)
        dishTitleLbl.text = dish.name
        dishCaloriesLbl.text = dish.formattedCalories
        descriptionLbl.text = dish.description
        
    }
    
    @IBAction func placeOrderBtnClicked(_ sender: UIButton) {
        
        
    }
    
}
