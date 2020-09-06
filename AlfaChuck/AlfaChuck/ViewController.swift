//
//  ViewController.swift
//  AlfaChuck
//
//  Created by Lukas Talacek on 04.09.2020.
//

import UIKit

class RandomJokeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

/*
 
 func getData(from url: String){
     var returnData: String = ""
     let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
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
             //self.textField.text = json.value
         }
         
         returnData = json.value
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
 */
