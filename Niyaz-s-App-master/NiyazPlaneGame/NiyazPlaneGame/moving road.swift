//
//  moving road.swift
//  NiyazPlaneGame
//
//  Created by nr16aaz on 15/11/2018.
//  Copyright © 2018 CSStestuser. All rights reserved.
//

import UIKit

class road: UIViewController {
    
    @IBOutlet weak var roadImage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()

var imageArray: [UIImage]!

imageArray = [UIImage(named: "road1.png")!,
            UIImage(named: "road2.png")!,
            UIImage(named: "road3.png")!,
            UIImage(named: "road4.png")!,
            UIImage(named: "road5.png")!,
            UIImage(named: "road6.png")!,
            UIImage(named: "road7.png")!,
            UIImage(named: "road8.png")!,
            UIImage(named: "road9.png")!,
            UIImage(named: "road10.png")!,
            UIImage(named: "road11.png")!,
            UIImage(named: "road12.png")!,
            UIImage(named: "road13.png")!,
            UIImage(named: "road14.png")!,
            UIImage(named: "road15.png")!,
            UIImage(named: "road17.png")!,
            UIImage(named: "road18.png")!,
            UIImage(named: "road19.png")!]

        roadImage.image = UIImage.animatedImage(with: imageArray, duration: 0.3)
}
}
