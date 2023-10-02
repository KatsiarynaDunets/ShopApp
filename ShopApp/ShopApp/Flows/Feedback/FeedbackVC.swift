//
//  FeedbackVC.swift
//  ShopApp
//
//  Created by Kate on 25/09/2023.
//

import UIKit
class FeedbackVC: UIViewController {
    
    @IBOutlet weak var reviewTV: UITextView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var notificationLbl: UILabel!
    override func viewDidLoad() {
           super.viewDidLoad()
       }
       
    @IBAction func submitReview(_ sender: Any) {
           let reviewText = reviewTV.text ?? ""
           let rating = segmentedControl.selectedSegmentIndex + 1 //  индексы начинаются с 0
           
           if reviewText.count >= 20 {
               saveReview(text: reviewText, rating: rating)
               calculateAverageRating()
           } else {
               let alert = UIAlertController(title: "Ошибка", message: "Отзыв должен содержать минимум 20 символов.", preferredStyle: .alert)
                  alert.addAction(UIAlertAction(title: "ОК", style: .default, handler: nil))
                  self.present(alert, animated: true, completion: nil)
              }
       }
       
       func saveReview(text: String, rating: Int) {
           // Сохранение отзыва и рейтинга в FeedbackData
           var reviews = UserDefaults.standard.array(forKey: "reviews") as? [[String: Any]] ?? []
           let newReview = ["text": text, "rating": rating] as [String : Any]
           reviews.append(newReview)
           UserDefaults.standard.set(reviews, forKey: "reviews_\(String(describing: index))")
       }
       
       func calculateAverageRating() {
           let reviews = UserDefaults.standard.array(forKey: "reviews") as? [[String: Any]] ?? []
           let totalRating = reviews.reduce(0) { sum, review in
               return sum + (review["rating"] as? Int ?? 0)
           }
           let averageRating = Double(totalRating) / Double(reviews.count)
           
           // Сохранить или использовать средний рейтинг
           print("Рейтинг книги: \(averageRating)")
       }
    
    
}

      // MARK: - Navigation
//
//func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//   guard let indexPath = tableView.indexPathForSelectedRow,
//    let bookDetailVC = segue.destination as? BookDetailVCelse { return }
//    bookDetailVC.index = indexPath.row }
//
