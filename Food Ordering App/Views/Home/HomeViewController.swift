//
//  HomeViewController.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 17.03.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularDishesCollectionView: UICollectionView!
    @IBOutlet weak var specialsCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        
        .init(id: "id1", name: "Turkish Dish1", image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "Turkish Dish2", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "Turkish Dish3", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "Turkish Dish4", image: "https://picsum.photos/100/200"),
        .init(id: "id5", name: "Turkish Dish5", image: "https://picsum.photos/100/200")
    
    ]
    
    var popularDishes: [Dish] =  [
        
        .init(id: "id1", name: "Pizza", image: "https://picsum.photos/100/200", description: "The best thing i have ever eaten", calories: 384),
        .init(id: "id2", name: "Hamburger", image: "https://picsum.photos/100/200", description: "The best thing i have ever eaten", calories: 94),
        .init(id: "id3", name: "Chicken", image: "https://picsum.photos/100/200", description: "The best thing i have ever eaten", calories: 1014),
        .init(id: "id4", name: "Meat", image: "https://picsum.photos/100/200", description: "The best thing i have ever eaten", calories: 190)
    
    ]
    
    var specials: [Dish] = [
        
        .init(id: "id1", name: "Duck", image: "https://picsum.photos/100/200", description: "This is the my favourite dish", calories: 268),
        .init(id: "id2", name: "Steak", image: "https://picsum.photos/100/200", description: "The best thing i have ever tasted", calories: 416),
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCells()

    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        popularDishesCollectionView.register(UINib(nibName: DishCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishCollectionViewCell.identifier)
        
        specialsCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
    }
    
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularDishesCollectionView:
            return popularDishes.count
        case specialsCollectionView:
            return specials.count
        default: return 0
            
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            
            return cell
        case popularDishesCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishCollectionViewCell.identifier, for: indexPath) as! DishCollectionViewCell
            cell.setup(dish: popularDishes[indexPath.row])
            
            return cell
        case specialsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as! DishLandscapeCollectionViewCell
            cell.setup(dish: specials[indexPath.row])
            
            return cell
        default: return UICollectionViewCell()
            
        }
        
    }
    
}
