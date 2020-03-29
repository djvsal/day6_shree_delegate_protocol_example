//
//  SecondViewController.swift
//  day6_shree_delegate_protocol_example
//
//  Created by Bishal on 3/29/20.
//  Copyright © 2020 Bishal. All rights reserved.
//

import UIKit

protocol protocolstructure {
    func protocoldata(name: String, address: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    var delegate:protocolstructure!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func savebackButton(_ sender: AnyObject) {
        
        if nameTextField.text?.isEmpty == true || addressTextField.text?.isEmpty == true{
            let alert = UIAlertController(title: "Enter both TextField", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        
        }
        else{
        delegate.protocoldata(name: nameTextField.text!, address: addressTextField.text!)
        self.navigationController?.popViewController(animated: true)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
