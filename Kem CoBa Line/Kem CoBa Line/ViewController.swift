//
//  ViewController.swift
//  Kem CoBa Line
//
//  Created by Kayhan Qaiser on 2016-06-23.
//  Copyright © 2016 Paddy Crab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTouchUpLoadView(sender: AnyObject) {
        self.performSegueWithIdentifier("loadMainViewID", sender: self)
    }

}

