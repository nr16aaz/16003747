//
//  ViewController.swift
//  plane
//  16003747
// 
//  Copyright © 2019 niyaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageHolder: UIImageView!
    @IBOutlet weak var planeHolder: UIImageView!
    @IBOutlet weak var treesHolder: UIImageView!
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicItemBehavior: UIDynamicItemBehavior!
    var coinTimer : Timer?
    var coinTimer2 : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var imageArray: [UIImage]!
        var imageArray1: [UIImage]!
        var imageArray2: [UIImage]!
        
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
                      UIImage(named: "road16.png")!,
                      UIImage(named: "road17.png")!,
                      UIImage(named: "road18.png")!,
                      UIImage(named: "road19.png")!]
        
        let road = UIImage.animatedImage(with: imageArray, duration: 0.5)
        imageHolder.image = road
        
        imageArray1 = [UIImage(named: "plane1.png")!,
                      UIImage(named: "plane2.png")!,
                      UIImage(named: "plane3.png")!,
                      UIImage(named: "plane4.png")!,
                      UIImage(named: "plane5.png")!,
                      UIImage(named: "plane6.png")!,
                      UIImage(named: "plane7.png")!,
                      UIImage(named: "plane8.png")!,
                      UIImage(named: "plane9.png")!,
                      UIImage(named: "plane10.png")!,
                      UIImage(named: "plane11.png")!,
                      UIImage(named: "plane12.png")!,
                      UIImage(named: "plane13.png")!,
                      UIImage(named: "plane14.png")!,
                      UIImage(named: "plane15.png")!]
        let aircraft = UIImage.animatedImage(with: imageArray1, duration: 0.5)
        planeHolder.image = aircraft
        
        
        imageArray2 = [UIImage(named: "tree1.png")!,
                       UIImage(named: "tree2.png")!,
                       UIImage(named: "tree3.png")!,
                       UIImage(named: "tree4.png")!,
                       UIImage(named: "tree5.png")!,
                       UIImage(named: "tree6.png")!,
                       UIImage(named: "tree7.png")!,
                       UIImage(named: "tree8.png")!,
                       UIImage(named: "tree9.png")!,
                       UIImage(named: "tree10.png")!,
                       UIImage(named: "tree11.png")!,
                       UIImage(named: "tree12.png")!,
                       UIImage(named: "tree13.png")!,
                       UIImage(named: "tree14.png")!,
                       UIImage(named: "tree15.png")!,
                       UIImage(named: "tree16.png")!,
                       UIImage(named: "tree17.png")!]
        let trees = UIImage.animatedImage(with: imageArray2, duration: 0.5)

        treesHolder.image = trees
        
        coinTimer = Timer.scheduledTimer(withTimeInterval: 2.4, repeats: true, block: { (timer) in
            self.createCoins()
        })
       
    }

    func createCoins(){
        let n = arc4random_uniform(300)//making random number for coin height in view
        let m = Int(n)//converting to int for further use in creating coins
        let b = Int(view.frame.size.width + 35)//making coin start from the end of the view
        let coins = UIImageView(frame: CGRect(x: b, y: m, width: 35, height: 40))
        coins.image = UIImage(named: "coin")
        view.addSubview(coins)
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        dynamicItemBehavior = UIDynamicItemBehavior(items: [coins])
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -350, y: 0), for: coins)
        dynamicAnimator.addBehavior(dynamicItemBehavior)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch! = touches.randomElement()
        let location = touch.location(in: self.view)
        planeHolder.center = location
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch! = touches.randomElement()
        let location = touch.location(in: self.view)
        planeHolder.center = location
    }
}

