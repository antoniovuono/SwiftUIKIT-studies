//
//  ViewController.swift
//  MyProject
//
//  Created by Antonio Vuono on 09/12/22.
//

import UIKit

class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextPage(_ sender: Any) {
        performSegue(withIdentifier: "second", sender: nil)
    }
}

