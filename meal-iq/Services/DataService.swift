//
//  DataService.swift
//  meal-iq
//
//  Created by Ian Value on 11/8/17.
//  Copyright © 2017 intoTheElements. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let menuItems = [
        Menu(title: "Breakfast", imageName: "breakfast.jpg"),
        Menu(title: "Lunch", imageName: "lunch1.jpg"),
        Menu(title: "Dinner", imageName: "dinner.jpg"),
        Menu(title: "Dessert", imageName: "dessert.jpg")
        
    ]
    
    func getMenu() -> [Menu] {
        return menuItems
        
    }
    
}
