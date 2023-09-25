//
//  BooksData.swift
//  ShopApp
//
//  Created by Kate on 24/09/2023.
//

import Foundation

class BooksData {
    
    static let shared = BooksData()
    
    var books: [Book]
    
    private init() {
        books = [Book(name: "Harry Porrer and philosopher stone", price: 15.0, image: #imageLiteral(resourceName: "11.png")), // imageLiteral
                 Book(name: "Harry Porrer and chamber of secrets", price: 16.0, image: #imageLiteral(resourceName: "22.png")),
                 Book(name: "Harry Porrer and Azkaban prisoner", price: 14.0, image: #imageLiteral(resourceName: "33.png"))]
    }
}

