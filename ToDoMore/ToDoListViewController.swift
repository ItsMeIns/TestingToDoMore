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

    //MARK: - TableViewDataSource -
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK: - TableViewDelegate -
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            print("\(itemArray[indexPath.row]) delete checkmark.")
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            print("\(itemArray[indexPath.row]) add checkmark.")
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

