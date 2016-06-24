//
//  PeopleView.swift
//  Kem CoBa Line
//
//  Created by Kayhan Qaiser on 2016-06-23.
//  Copyright © 2016 Paddy Crab. All rights reserved.
//

import Foundation
import UIKit

class PeoplePopulator {
    
    var numPeople = 0
    
    init(numPeople: Int) {
        self.numPeople = numPeople
    }
    
    // Populates a UIView with people
    // #TODO: Trim graphics so the layout code can be simplified and
    // doesn't need all these variables. Everything will be vastly cleaner then.
    func populate(view: UIView) {
        let width:CGFloat = 400
        var current_x:CGFloat = 150
        var current_y: CGFloat = 0
        
        var direction: CGFloat = 1
        let person_width:CGFloat = 120
        let person_height:CGFloat = 200
        let actual_width:CGFloat = 60
        let row_height:CGFloat = numPeople > 30 ? max(CGFloat(45-((numPeople-30)/6)*6), 2) : 45
        let min_x_closeness:CGFloat = 5

        for _ in 1 ... numPeople {
            current_x = current_x + (actual_width * direction)
            if (current_x > width - actual_width*1.5 || current_x < -actual_width/1.3) {
                direction *= -1
                current_y += row_height
                current_x = current_x < 150 ? -40 : width - 100
            }
            let imageView = getCharacter(1)
            if direction == 1 {
                imageView.transform = CGAffineTransformMakeScale(-1, 1)
            }
            
            current_x = current_x + (CGFloat.random(min: -min_x_closeness, max: min_x_closeness))
            imageView.frame = CGRect(x: current_x + 8, y: current_y, width: person_width, height: person_height)
            view.addSubview(imageView)
        }
    }
    
    func getCharacter(cType: Int) -> UIImageView {
        let image = UIImage.gifWithName("man")
        let imageView = UIImageView(image: image)
        return imageView
    }
    
    
}