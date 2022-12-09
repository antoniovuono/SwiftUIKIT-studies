//
//  SecondViewController.swift
//  MyProject
//
//  Created by Antonio Vuono on 09/12/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goToNextPage(_ sender: Any) {
     performSegue(withIdentifier: "third", sender: nil)
        
    }
}

//Extendemos a second view controller e passamos nosso delegate que esta em outro arquivo.
extension SecondViewController: ThirdViewControllerDelegate {
    func notification(msg: String) {
        print("Segunda tela !")
    }
}
