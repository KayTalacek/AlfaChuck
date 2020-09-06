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
        /*
         let myColor = UIColor.black
         textField.layer.borderColor = myColor.cgColor
         textField.layer.borderWidth = 1.0
         */
        
        }
    
    @IBAction func jokeBTN(_ sender: Any) {
        getData()
    }
  
    func getData() {
        let url = "https://api.chucknorris.io/jokes/random"
        //var returnData: String = ""
        URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            guard let data = data, error == nil else {
                print("Chyba")
                return
            }
            
            //have data
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
                 self.textField.text = json.value
             }
             
            
            print("LOG output:" + json.value)
        }).resume()
    }

}

 struct Response: Codable {
 let categories: [String] = []
 let created_at: String
 let icon_url: String
 let id: String
 let updated_at: String
 let url: String
 let value: String
 }

