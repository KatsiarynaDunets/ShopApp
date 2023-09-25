//
//  BookTableController.swift
//  ShopApp
//
//  Created by Kate on 24/09/2023.
//

import UIKit

class BookTableController: UITableViewController {

    var books: [Book] {
        BooksData.shared.books
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let book = books[indexPath.row]
        
        CellManager.configure(cell, with: book)

        cell.textLabel?.text = book.name
        cell.detailTextLabel?.text = String(book.price) + " $\n" + book.rating
        cell.imageView?.image = book.image

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
        let bookDetailVC = segue.destination as? BookDetailVC else { return }
        bookDetailVC.index = indexPath.row
    }
}

