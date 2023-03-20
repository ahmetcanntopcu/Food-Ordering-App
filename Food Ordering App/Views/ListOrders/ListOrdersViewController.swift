//
//  ListOrdersViewController.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 20.03.2023.
//

import UIKit

class ListOrdersViewController: UIViewController {
    
    @IBOutlet weak var ordersTableView: UITableView!
    
    var orders: [Orders] = [
    
        .init(id: "id1", name: "Ahmet Can Topçu", dish: .init(id: "id1", name: "Pizza", image: "https://picsum.photos/100/200", description: "The best thing i have ever eaten", calories: 384)),
        .init(id: "id2", name: "Nisa Gürbulak", dish: .init(id: "id2", name: "Hamburger", image: "https://picsum.photos/100/200", description: "The best thing i have ever eaten", calories: 94)),
        .init(id: "id3", name: "Ömer Arda Topçu", dish: .init(id: "id3", name: "Chicken", image: "https://picsum.photos/100/200", description: "The best thing i have ever eaten", calories: 1014)),
        .init(id: "id4", name: "Berkcan Meriç", dish: .init(id: "id4", name: "Meat", image: "https://picsum.photos/100/200", description: "The best thing i have ever eaten", calories: 190))
            
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        registerCells()
    }
    
    private func registerCells() {
        ordersTableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    
    
}

extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}
