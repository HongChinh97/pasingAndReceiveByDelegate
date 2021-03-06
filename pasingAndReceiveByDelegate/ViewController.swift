//
//  ViewController.swift
//  pasingAndReceiveByDelegate
//
//  Created by admin on 7/17/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
   var delegate: Delegate?
    var name: String?
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func botton(_ sender: UIButton) {
        if delegate != nil {
            if textField.text != nil {
                let nametext = textField.text
                delegate?.didChose(number: Int(nametext ?? "") ?? 0)
            }
        }
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if name != nil {
            textField.text = name
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
