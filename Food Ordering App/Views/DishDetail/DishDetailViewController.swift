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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func placeOrderBtnClicked(_ sender: UIButton) {
        
        
    }
    
}
