//
//  RandomViewController.swift
//  AlfaChuck
//
//  Created by Lukas Talacek on 04.09.2020.
//

import UIKit

class RandomViewController: UIViewController {

    @IBOutlet weak var textField: UITextView!
    
    @IBOutlet weak var gifView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    @IBAction func jokeBTN(_ sender: Any) {
        getData()
    }
  
    func getData() {
        let url = "https://api.chucknorris.io/jokes/random"
        URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            guard let data = data, error == nil else {
                print("Error")
                return
            }
            
            var result: Response?
            do {
                result = try JSONDecoder().decode(Response.self, from: data)
            }
            catch{
                print("Failed to convert \(error.localizedDescription)")
            }
            
            guard let json = result else {
                return
            }
            
             DispatchQueue.main.async {
                 self.textField.text = json.value
             }
        }).resume()
    }
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

