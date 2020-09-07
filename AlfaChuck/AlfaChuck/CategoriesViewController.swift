//
//  CategoriesViewController.swift
//  AlfaChuck
//
//  Created by Lukas Talacek on 04.09.2020.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var catTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        catTable.delegate = self
        catTable.dataSource = self
    }
    var categories: [String] = ["Animal","Career","Celebrity","Dev","Explicit","Fashion","Food","History","Money","Movie","Music","Political","Religion","Science","Sport","Travel"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as? CatCellTableViewCell
        cell?.categoryName.text = categories[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CategoryViewController") as? CategoryViewController
        vc?.passedVal = categories[indexPath.row]
        vc?.navigationItem.title = categories[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }

  }
struct Category: Codable {
   var name: String
}
