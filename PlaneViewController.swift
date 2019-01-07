//
//  PlaneViewController.swift
//  plane
//  Niyaz's App Master
//
//  Copyright © 2019 niyaz. All rights reserved.
//

import UIKit

class PlaneViewController: UIImageView {
    
    var startLocation: CGPoint?
    var mydelegate: subviewdelegate?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        startLocation = touches.first?.location(in:self)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.mydelegate?.changesomething()
        
        let currentLocation = touches.first?.location(in:self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        self.center = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        
}
}
