//
//  DragPlane.swift
//  NiyazFlightGame
//
//  Created by nr16aaz on 23/11/2018.
//  Copyright © 2018 nr16aaz. All rights reserved.
//

import UIKit

class DragPlane: UIImageView {
    
    var startPoint: CGPoint
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startPoint = (touches.first?.location(in: self))!
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
