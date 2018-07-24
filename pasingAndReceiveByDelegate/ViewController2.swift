//
//  ViewController2.swift
//  pasingAndReceiveByDelegate
//
//  Created by admin on 7/17/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
protocol Delegate: class {
    func dosomething(with data: Data)
}
class ViewController2: UIViewController {
    
    weak var delegate: Delegate?
    
    func passDataBackwards() {
        let data = Data()
        delegate?.dosomething(with: data)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
