//
//  ViewController.swift
//  To Do List
//
//  Created by Patrick on 9/25/17.
//  Copyright © 2017 Patrick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
 var toDoArray = ["LEarn Swift", "Build Apps", "Other Stuff"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
tableView.delegate = self
tableView.dataSource = self
        
    }

  
    }

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoArray.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = toDoArray[indexPath.row]
        return cell
    }
}



