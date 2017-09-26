//
//  DetailViewController.swift
//  To Do List
//
//  Created by Patrick on 9/26/17.
//  Copyright © 2017 Patrick. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var toDoField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
}

