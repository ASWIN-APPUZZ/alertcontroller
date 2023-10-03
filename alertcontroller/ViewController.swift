//
//  ViewController.swift
//  alertcontroller
//
//  Created by ASWIN A on 27/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alert_open(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "This is an alert Message", preferredStyle: .alert)
        present(alert, animated: true)
        
        let cancelbtn = UIAlertAction(title: "Cancel", style: .cancel){
            (action) in print("Cancel button is pressed")
        }
        alert.addAction(cancelbtn)
        alert.addTextField{(textfield) in textfield.placeholder = "enter name"}
        
        alert.addAction(UIAlertAction(title: "Display", style: .default){(action) in print(alert.textFields?.first?.text!)})
        present( alert, animated: true)
    }
    
}

