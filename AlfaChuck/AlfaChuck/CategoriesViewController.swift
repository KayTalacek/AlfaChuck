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
    var categories: [String] = ["animal","career","celebrity","dev","explicit","fashion","food","history","money","movie","music","political","religion","science","sport","travel"]
     
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel!.text = categories[indexPath.row]
        
        /*
        func prepare(for segue: UIStoryboardSegue, sender: Any?)
        {
            if segue.destination is CategoryViewController
            {
                let vc = segue.destination as? CategoryViewController
                vc?.category = cell.textLabel!.text ?? 
            }
        }
        */
        return cell
    }
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is CategoryViewController
        {
            let vc = segue.destination as? CategoryViewController
            vc?.category = myCell.textLabel!.text
        }
    }
    */

  }

