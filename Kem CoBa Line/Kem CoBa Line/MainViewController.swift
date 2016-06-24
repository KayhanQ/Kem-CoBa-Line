//
//  MainView.swift
//  Kem CoBa Line
//
//  Created by Kayhan Qaiser on 2016-06-23.
//  Copyright © 2016 Paddy Crab. All rights reserved.
//

import Foundation
import UIKit
import SwiftGifOrigin

class MainViewController: UIViewController {
    
    @IBOutlet var storefrontView: UIView!
    @IBOutlet var peopleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("loaded main view");
        
        let storefront = UIImage.gifWithName("storefront_1")
        storefrontView.addSubview(UIImageView(image: storefront))

        var populator = PeoplePopulator(numPeople: 20)
        
        populator.populate(peopleView)
        
//        self.view.addSubview(sView)
        
//        let peopleView = PeopleView(frame:CGRectMake(0, 0, 500, 400))
//        
//        self.view.addSubview(peopleView)
//        peopleView.populate(10)
    
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}