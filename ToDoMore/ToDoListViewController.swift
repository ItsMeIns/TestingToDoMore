//
//  ViewController.swift
//  ToDoMore
//
//  Created by macbook on 20.04.2023.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["bye milk", "destroy demogorgone", "eat apple"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
}

