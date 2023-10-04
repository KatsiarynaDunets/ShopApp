//
//  ViewController.swift
//  ShopApp
//
//  Created by Kate on 24/09/2023.
//

import UIKit

struct Book {
    
    let name: String
    let price: Double
    let image: UIImage?
    
    var feedBacks: [Feedback] = []
    
    var rating = "⭐️⭐️⭐️"
    
}
