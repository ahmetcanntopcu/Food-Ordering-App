//
//  ListDishesViewController.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 20.03.2023.
//

import UIKit

class ListDishesViewController: UIViewController {
    
    @IBOutlet weak var listDishesTableView: UITableView!
    
    var category: DishCategory!
    
    var dishes: [Dish] = [
    
        .init(id: "id1", name: "Pizza", image: "https://picsum.photos/100/200", description: "The best thing i have ever eaten", calories: 384),
        .init(id: "id2", name: "Hamburger", image: "https://picsum.photos/100/200", description: "The best thing i have ever eaten", calories: 94),
        .init(id: "id3", name: "Chicken", image: "https://picsum.photos/100/200", description: "The best thing i have ever eaten", calories: 1014),
        .init(id: "id4", name: "Meat", image: "https://picsum.photos/100/200", description: "The best thing i have ever eaten", calories: 190)
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = category.name
        
        registerCells()
        
    }
    
    private func registerCells() {
        listDishesTableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
        
    }
    

}

extension ListDishesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
    
    
}
