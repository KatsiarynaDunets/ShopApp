//
//  BooksData.swift
//  ShopApp
//
//  Created by Kate on 24/09/2023.
//

import Foundation

class BooksData {
    
   static let shared = BooksData()
    
var books: [Book] = [Book(name: "Harry Potter and the sorcers stone", price: 15.0, image: #imageLiteral(resourceName: "11.png")),
                 Book(name: "Harry Potter and the chamber of secrets", price: 16.0, image: #imageLiteral(resourceName: "22.png")),
                 Book(name: "Harry Potter and the prisonerof Azkaban", price: 14.0, image: #imageLiteral(resourceName: "33.png"))]
    }


