//
//  ReviewsTVC.swift
//  ShopApp
//
//  Created by Kate on 24/09/2023.
//

import UIKit

class ReviewsTVC: UITableViewController {
   
    var index: Int!
   
    struct Review {
        let text: String
        let rating: Int
        let review: String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "ReviewTableViewCell", bundle: nil), forCellReuseIdentifier: "ReviewTableViewCell")

     
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return BooksData.shared.books[index].feedBacks.count // Количество строк равно количеству отзывов
       }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewTableViewCell", for: indexPath) as! ReviewTableViewCell
    //BooksData.shared.books[index].feedBacks[indexPath.row]
           return cell
       }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
    }

  
    
}
