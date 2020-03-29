//
//  ViewController.swift
//  day6_shree_delegate_protocol_example
//
//  Created by Bishal on 3/29/20.
//  Copyright © 2020 Bishal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, protocolstructure {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func protocoldata(name: String, address: String) {
        nameLabel.text = "Name: \(name)"
        addressLabel.text = "Address: \"(address)"
    }
    
    @IBAction func addNameAddressLabel(_ sender: AnyObject) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.delegate = self   //delegate calling
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

