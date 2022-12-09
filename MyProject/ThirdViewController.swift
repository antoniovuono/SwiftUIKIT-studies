//
//  ThirdViewController.swift
//  MyProject
//
//  Created by Antonio Vuono on 09/12/22.
//

import UIKit

// Criamos nosso delegate
protocol ThirdViewControllerDelegate: AnyObject {
    func notification(msg: String)
}

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var fontSlider: UISlider!
    @IBOutlet weak var titlepage: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    //Criamos a variavel delegate
    weak var delegate: ThirdViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Instanciamos o delegate
        delegate?.notification(msg: "Cheguei na terceira tela!!!")
    }
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeFontSize(_ sender: Any) {
        let fontSliderValue = fontSlider.value
        let convertSliderValue = Int(fontSliderValue)
        
        titlepage.font = UIFont(name: "helvetica", size: CGFloat(fontSliderValue))
        counterLabel.text = String(convertSliderValue)
    }
}
