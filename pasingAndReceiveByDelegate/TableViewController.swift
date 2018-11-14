//
//  TableViewController.swift
//  pasingAndReceiveByDelegate
//
//  Created by admin on 7/17/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
protocol Delegate {
    func didChose(number: Int)
}
class TableViewController: UITableViewController, Delegate{
    var numbers = Array(1...3)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sectionsta
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numbers.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = String(numbers[indexPath.row])
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ViewController {
            viewController.delegate = self
         //   if segue.identifier == "edit" {
                if let index = tableView.indexPathForSelectedRow {
                    viewController.name = String(numbers[index.row])
  //              }
            }
            
            tableView.reloadData()
        }
    }
    func didChose(number: Int) {
        if let index = tableView.indexPathForSelectedRow {
            numbers[index.row] = number
        }else {
            numbers.append(number)
        }
        tableView.reloadData()
    }
    
    
    
}
