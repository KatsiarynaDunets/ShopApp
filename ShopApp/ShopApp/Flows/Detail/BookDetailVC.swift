//
//  BookDetailVC.swift
//  ShopApp
//
//  Created by Kate on 24/09/2023.
//

import UIKit

class BookDetailVC: UIViewController {
    var index: Int!
    var book: Book {
        BooksData.shared.books[index]
    }

    @IBOutlet var booksStackView: UIStackView!
    @IBOutlet var bookNameLbl: UILabel!
    @IBOutlet var bookPriceLbl: UILabel!
    @IBOutlet var ratingLbl: UILabel!
    @IBOutlet var showReviewBtn: UIButton!
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(with: view.bounds.size)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        updateUI(with: size)
    }

    private func updateUI(with size: CGSize) {
        let isVertival = size.width < size.height
        booksStackView.axis = isVertival ? .vertical : .horizontal
        title = book.name
        imageView.image = book.image
        bookNameLbl.text = book.name
        ratingLbl.text = book.rating
        bookPriceLbl.text = book.price.description + " $"
        showReviewBtn.setTitle("Посмотреть (\(book.feedBacks.count)) отзывов", for: .normal)
        showReviewBtn.isEnabled = book.feedBacks.count != 0
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {}
}
