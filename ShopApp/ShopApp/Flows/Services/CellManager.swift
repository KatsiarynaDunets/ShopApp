//
//  CellManager.swift
//  ShopApp
//
//  Created by Kate on 24/09/2023.
//

import UIKit

class CellManager {
    static func configure(_ cell: UITableViewCell, with book: Book ) {
        cell.textLabel?.text = book.name
        cell.detailTextLabel?.text = String(book.price) + " USD\n" + book.rating
        cell.imageView?.image = book.image
    }
}
