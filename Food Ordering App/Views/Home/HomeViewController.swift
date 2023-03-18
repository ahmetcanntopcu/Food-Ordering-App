//
//  HomeViewController.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 17.03.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        
        .init(id: "id1", name: "Turkish Dish1", image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "Turkish Dish2", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "Turkish Dish3", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "Turkish Dish4", image: "https://picsum.photos/100/200"),
        .init(id: "id5", name: "Turkish Dish5", image: "https://picsum.photos/100/200")
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryCollectionView.dataSource = self
        categoryCollectionView.delegate = self
        
        registerCells()
        

    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }
    


}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setup(category: categories[indexPath.row])
        
        return cell
    }
    
}
