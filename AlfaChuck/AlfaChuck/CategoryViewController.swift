//
//  CategoryViewController.swift
//  AlfaChuck
//
//  Created by Lukas Talacek on 05.09.2020.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDelegate {

    var passedVal = ""
    
    @IBOutlet weak var jokeView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        passedVal = passedVal.lowercased()
        let url = "https://api.chucknorris.io/jokes/random?category=\(passedVal)"
        getData(from: url)
    }
    
    @IBAction func loadBTN(_ sender: Any) {
        let url = "https://api.chucknorris.io/jokes/random?category=\(passedVal)"
        getData(from: url)
    }
    
    func getData(from url: String) {
        
        URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            guard let data = data, error == nil else {
                print("Chyba")
                return
            }

            var result: Response?
            do {
                result = try JSONDecoder().decode(Response.self, from: data)
            }
            catch{
                print("failed to convert \(error.localizedDescription)")
            }
            
            guard let json = result else {
                return
            }
            
            DispatchQueue.main.async {
                self.jokeView.text = json.value
            }
        }).resume()
    }

    struct Response: Codable {
        var categories: [String] = []
        let created_at: String
        let icon_url: String
        let id: String
        let updated_at: String
        let url: String
        let value: String
    }
}
