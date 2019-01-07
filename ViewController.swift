//
//  ViewController.swift
//  plane
//
// 
//  Copyright © 2019 niyaz. All rights reserved.
//

import UIKit

protocol subviewdelegate {
    func changesomething()
}

class ViewController: UIViewController, UICollisionBehaviorDelegate, subviewdelegate {
    
    
    @IBOutlet weak var planeHolder: PlaneViewController!
    @IBOutlet weak var imageHolder: UIImageView!
    @IBOutlet weak var treesHolder: UIImageView!
    @IBOutlet weak var coins: UIImageView!
    @IBOutlet weak var coin: UIImageView!
    @IBOutlet weak var coin1: UIImageView!
    @IBOutlet weak var coin2: UIImageView!
    @IBOutlet weak var coin3: UIImageView!
    @IBOutlet weak var coin4: UIImageView!
    @IBOutlet weak var coin5: UIImageView!
    @IBOutlet weak var coin6: UIImageView!
    @IBOutlet weak var coin7: UIImageView!
    @IBOutlet weak var coin8: UIImageView!
    @IBOutlet weak var coin9: UIImageView!
    @IBOutlet weak var coin10: UIImageView!
    @IBOutlet weak var coin11: UIImageView!
    @IBOutlet weak var coin12: UIImageView!
    @IBOutlet weak var coin13: UIImageView!
    @IBOutlet weak var bird: UIImageView!
    @IBOutlet weak var bird1: UIImageView!
    @IBOutlet weak var bird2: UIImageView!
    @IBOutlet weak var bird3: UIImageView!
    @IBOutlet weak var bird4: UIImageView!
    @IBOutlet weak var bird5: UIImageView!
    @IBOutlet weak var bird6: UIImageView!
    @IBOutlet weak var bird7: UIImageView!
    @IBOutlet weak var bird8: UIImageView!
    @IBOutlet weak var bird9: UIImageView!
    @IBOutlet weak var bird10: UIImageView!
    @IBOutlet weak var bird11: UIImageView!
    @IBOutlet weak var bird12: UIImageView!
    @IBOutlet weak var bird13: UIImageView!
    @IBOutlet weak var bird14: UIImageView!
    
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicAnimator1: UIDynamicAnimator!
    
    
    var dynamicItemBehavior: UIDynamicItemBehavior!
    var dynamicItemBehavior1: UIDynamicItemBehavior!
    
    var collisionBehavior: UICollisionBehavior!
    var collisionBehavior1: UICollisionBehavior!
    
    var coinTimer : Timer?
    var birdTimer : Timer?
    var imageArray: [UIImage]!
    var imageArray1: [UIImage]!
    var imageArray2: [UIImage]!
    var imageArray3: [UIImage]!
    
    func changesomething() {
        
        collisionBehavior.removeAllBoundaries()
        collisionBehavior.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: planeHolder.frame))
    }
    
    @IBOutlet weak var play: UIButton!
    
    @IBAction func playButton(_ sender: Any) {
        
        self.loadView()
        
        
        self.play.alpha = 0
        
        self.view.addSubview(self.imageHolder)
        self.view.addSubview(self.treesHolder)
        self.view.addSubview(planeHolder)
        self.view.addSubview(coins)
        self.view.addSubview(coin)
        self.view.addSubview(coin1)
        self.view.addSubview(coin2)
        self.view.addSubview(coin3)
        self.view.addSubview(coin4)
        self.view.addSubview(coin5)
        self.view.addSubview(coin6)
        self.view.addSubview(coin7)
        self.view.addSubview(coin8)
        self.view.addSubview(coin9)
        self.view.addSubview(coin10)
        self.view.addSubview(coin11)
        self.view.addSubview(coin12)
        self.view.addSubview(coin13)
        self.view.addSubview(bird)
        self.view.addSubview(bird13)
        self.view.addSubview(bird1)
        self.view.addSubview(bird2)
        self.view.addSubview(bird3)
        self.view.addSubview(bird4)
        self.view.addSubview(bird5)
        self.view.addSubview(bird6)
        self.view.addSubview(bird7)
        self.view.addSubview(bird8)
        self.view.addSubview(bird9)
        self.view.addSubview(bird10)
        self.view.addSubview(bird11)
        self.view.addSubview(bird12)
        self.view.addSubview(bird14)
        planeHolder.alpha = 1
        
        
        dynamicAnimator = UIDynamicAnimator (referenceView: self.view)
        
        dynamicAnimator1 = UIDynamicAnimator (referenceView: self.view)
        
        coins.frame = CGRect(x: 900, y: view.frame.size.height / 2, width: 35, height: 40)
        coin.frame = CGRect(x: view.frame.size.width / 1.5 + 70, y: view.frame.size.height / 2 - 30, width: 35, height: 40)
        coin1.frame = CGRect(x: view.frame.size.width / 1.5 + 150, y: view.frame.size.height / 2 + 10, width: 35, height: 40)
        coin2.frame = CGRect(x: view.frame.size.width / 1.5 + 380, y: view.frame.size.height / 2 - 50, width: 35, height: 40)
        coin3.frame = CGRect(x: view.frame.size.width / 1.5 + 900, y: view.frame.size.height / 2 - 20, width: 35, height: 40)
        coin4.frame = CGRect(x: view.frame.size.width / 1.5 + 2850, y: view.frame.size.height / 2 - 70, width: 35, height: 40)
        coin5.frame = CGRect(x: view.frame.size.width / 1.5 + 3980, y: view.frame.size.height / 2 + 15, width: 35, height: 40)
        coin6.frame = CGRect(x: view.frame.size.width / 1.5 + 7500, y: view.frame.size.height / 2 - 30, width: 35, height: 40)
        coin7.frame = CGRect(x: view.frame.size.width / 1.5 + 800, y: view.frame.size.height / 2 + 70, width: 35, height: 40)
        coin8.frame = CGRect(x: view.frame.size.width / 1.5 + 5800, y: view.frame.size.height / 2 - 110, width: 35, height: 40)
        coin9.frame = CGRect(x: view.frame.size.width / 1.5 + 4300, y: view.frame.size.height / 2 + 150, width: 35, height: 40)
        coin10.frame = CGRect(x: view.frame.size.width / 1.5 + 6200, y: view.frame.size.height / 2, width: 35, height: 40)
        coin11.frame = CGRect(x: view.frame.size.width / 1.5 + 1500, y: view.frame.size.height / 2 - 50, width: 35, height: 40)
        coin12.frame = CGRect(x: view.frame.size.width / 1.5 + 8380, y: view.frame.size.height / 2 - 120, width: 35, height: 40)
        coin13.frame = CGRect(x: view.frame.size.width / 1.5 + 3100, y: view.frame.size.height / 2 + 15, width: 35, height: 40)
        
        
        imageArray3 = [UIImage(named: "bird1.png")!,
                       UIImage(named: "bird2.png")!,
                       UIImage(named: "bird3.png")!,
                       UIImage(named: "bird4.png")!,
                       UIImage(named: "bird5.png")!,
                       UIImage(named: "bird6.png")!,
                       UIImage(named: "bird7.png")!,
                       UIImage(named: "bird8.png")!,
                       UIImage(named: "bird9.png")!,
                       UIImage(named: "bird10.png")!]
        let newImage = UIImage.animatedImage(with: imageArray3, duration: 0.5)
        
        bird.image = newImage
        bird1.image = newImage
        bird2.image = newImage
        bird3.image = newImage
        bird4.image = newImage
        bird5.image = newImage
        bird6.image = newImage
        bird7.image = newImage
        bird8.image = newImage
        bird9.image = newImage
        bird10.image = newImage
        bird11.image = newImage
        bird12.image = newImage
        bird13.image = newImage
        bird14.image = newImage
        
        bird.frame = CGRect(x: 5100, y: view.frame.size.height / 2, width: 50, height: 50)
        bird1.frame = CGRect(x: view.frame.size.width / 1.5 + 3000, y: view.frame.size.height / 2 - 30, width: 55, height: 55)
        bird2.frame = CGRect(x: view.frame.size.width / 1.5 + 5852, y: view.frame.size.height / 2 + 10, width: 55, height: 55)
        bird3.frame = CGRect(x: view.frame.size.width / 1.5 + 6000, y: view.frame.size.height / 2 - 50, width: 55, height: 55)
        bird4.frame = CGRect(x: view.frame.size.width / 1.5 + 100, y: view.frame.size.height / 2 - 20, width: 55, height: 55)
        bird5.frame = CGRect(x: view.frame.size.width / 1.5 + 1100, y: view.frame.size.height / 2 - 70, width: 55, height: 55)
        bird6.frame = CGRect(x: view.frame.size.width / 1.5 + 4000, y: view.frame.size.height / 2 + 15, width: 55, height: 55)
        bird7.frame = CGRect(x: view.frame.size.width / 1.5 + 4700, y: view.frame.size.height / 2 - 30, width: 55, height: 55)
        bird8.frame = CGRect(x: view.frame.size.width / 1.5 + 6600, y: view.frame.size.height / 2 + 70, width: 55, height: 55)
        bird9.frame = CGRect(x: view.frame.size.width / 1.5 + 2900, y: view.frame.size.height / 2 - 110, width: 55, height: 55)
        bird10.frame = CGRect(x: view.frame.size.width / 1.5 + 850, y: view.frame.size.height / 2 + 150, width: 55, height: 55)
        bird11.frame = CGRect(x: view.frame.size.width / 1.5 + 1500, y: view.frame.size.height / 2, width: 55, height: 55)
        bird12.frame = CGRect(x: view.frame.size.width / 1.5 + 2700, y: view.frame.size.height / 2 - 50, width: 55, height: 55)
        bird13.frame = CGRect(x: view.frame.size.width / 1.5 + 8380, y: view.frame.size.height / 2 - 120, width: 55, height: 55)
        bird14.frame = CGRect(x: view.frame.size.width / 1.5 + 900, y: view.frame.size.height / 2 + 15, width: 55, height: 55)
        
        
        
        dynamicItemBehavior = UIDynamicItemBehavior(items: [coins, coin, coin1, coin2, coin3, coin4, coin5, coin6, coin7, coin8, coin9, coin10, coin11, coin12, coin13])
        dynamicItemBehavior1 = UIDynamicItemBehavior(items: [bird, bird1, bird2, bird3, bird4, bird5, bird6, bird7, bird8, bird9, bird10, bird11, bird12, bird13, bird14])
        
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -180, y: 0), for: coins)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -150, y: 0), for: coin)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -150, y: 0), for: coin1)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -180, y: 0), for: coin2)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -220, y: 0), for: coin3)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -580, y: 0), for: coin4)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -680, y: 0), for: coin5)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -1000, y: 0), for: coin6)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -250, y: 0), for: coin7)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -800, y: 0), for: coin8)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -780, y: 0), for: coin9)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -800, y: 0), for: coin10)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -350, y: 0), for: coin11)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -1370, y: 0), for: coin12)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -480, y: 0), for: coin13)
        dynamicAnimator.addBehavior(dynamicItemBehavior)// adding movement for coins
        
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -650, y: 0), for: bird)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -680, y: 0), for: bird1)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -800, y: 0), for: bird2)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -150, y: 0), for: bird3)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -150, y: 0), for: bird4)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -400, y: 0), for: bird5)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -400, y: 0), for: bird6)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -650, y: 0), for: bird7)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -200, y: 0), for: bird8)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -170, y: 0), for: bird9)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -280, y: 0), for: bird10)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -450, y: 0), for: bird11)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -250, y: 0), for: bird12)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -400, y: 0), for: bird13)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -580, y: 0), for: bird14)
        dynamicAnimator1.addBehavior(dynamicItemBehavior1)//adding movement for birds
        
        collisionBehavior = UICollisionBehavior(items: [coins, coin, coin1, coin2, coin3, coin4, coin5, coin6, coin7, coin8, coin9, coin10, coin11, coin12, coin13])
        collisionBehavior1 = UICollisionBehavior(items: [bird, bird1, bird2, bird3, bird4, bird5, bird6, bird7, bird8, bird9, bird10, bird11, bird12, bird13, bird14])
        
        collisionBehavior1.action = {
            //adding behavior after collision to birds
            if self.planeHolder.frame.intersects(self.bird.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 40, y: 20), for: self.bird)
            }
            if self.planeHolder.frame.intersects(self.bird1.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 20, y: 40), for: self.bird)
            }
            if self.planeHolder.frame.intersects(self.bird14.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 10, y: -20), for: self.bird14)
            }
            if self.planeHolder.frame.intersects(self.bird2.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 40, y: -30), for: self.bird2)
            }
            if self.planeHolder.frame.intersects(self.bird3.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 50, y: 30), for: self.bird3)
            }
            if self.planeHolder.frame.intersects(self.bird4.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 30, y: 30), for: self.bird4)
            }
            if self.planeHolder.frame.intersects(self.bird5.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 40, y: -40), for: self.bird5)
            }
            if self.planeHolder.frame.intersects(self.bird6.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 10, y: 30), for: self.bird6)
            }
            if self.planeHolder.frame.intersects(self.bird7.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 50, y: 30), for: self.bird7)
            }
            if self.planeHolder.frame.intersects(self.bird8.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 40, y: -20), for: self.bird8)
            }
            if self.planeHolder.frame.intersects(self.bird9.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 30, y: 30), for: self.bird9)
            }
            if self.planeHolder.frame.intersects(self.bird10.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 40, y: 40), for: self.bird10)
            }
            if self.planeHolder.frame.intersects(self.bird11.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 20, y: 35), for: self.bird11)
            }
            if self.planeHolder.frame.intersects(self.bird12.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 30, y: 30), for: self.bird12)
            }
            if self.planeHolder.frame.intersects(self.bird13.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 20, y: 30), for: self.bird13)
            }
            
        }
        collisionBehavior.action = {
            //adding collision behavior for coins
            if self.planeHolder.frame.intersects(self.coin.frame){
                self.coin.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin1.frame){
                self.coin1.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coins.frame){
                self.coins.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin2.frame){
                self.coin2.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin3.frame){
                self.coin3.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin4.frame){
                self.coin4.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin5.frame){
                self.coin5.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin6.frame){
                self.coin6.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin7.frame){
                self.coin7.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin8.frame){
                self.coin8.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin9.frame){
                self.coin9.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin10.frame){
                self.coin10.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin11.frame){
                self.coin11.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin12.frame){
                self.coin12.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin13.frame){
                self.coin13.removeFromSuperview()
                
            }
            
        }
        collisionBehavior1.removeAllBoundaries()
        collisionBehavior.removeAllBoundaries()//removed boundaries so coins and birds can come out of view
        collisionBehavior1.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: planeHolder.frame))
        
        collisionBehavior.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: planeHolder.frame))//added frame for collision detection
        dynamicAnimator1.addBehavior(collisionBehavior1)
        dynamicAnimator.addBehavior(collisionBehavior)
        
        
        
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
        
        
        let when = DispatchTime.now() + 20
        DispatchQueue.main.asyncAfter(deadline: when) {
            
            
            self.play.alpha = 1
            self.play.updateConstraints()
            self.planeHolder.alpha = 0
            self.coins.updateConstraints()
            self.coins.removeFromSuperview()
            self.coins.updateConstraints()
            self.coin.removeFromSuperview()
            self.coins.updateConstraints()
            self.coin1.removeFromSuperview()
            self.coin2.removeFromSuperview()
            self.coin3.removeFromSuperview()
            self.coin4.removeFromSuperview()
            self.coin5.removeFromSuperview()
            self.coin6.removeFromSuperview()
            self.coin7.removeFromSuperview()
            self.coin8.removeFromSuperview()
            self.coin9.removeFromSuperview()
            self.coin10.removeFromSuperview()
            self.coin11.removeFromSuperview()
            self.coin12.removeFromSuperview()
            self.coin13.removeFromSuperview()
            self.bird.removeFromSuperview()
            self.bird14.removeFromSuperview()
            self.bird1.removeFromSuperview()
            self.bird2.removeFromSuperview()
            self.bird3.removeFromSuperview()
            self.bird4.removeFromSuperview()
            self.bird5.removeFromSuperview()
            self.bird6.removeFromSuperview()
            self.bird7.removeFromSuperview()
            self.bird8.removeFromSuperview()
            self.bird9.removeFromSuperview()
            self.bird10.removeFromSuperview()
            self.bird11.removeFromSuperview()
            self.bird12.removeFromSuperview()
            self.bird13.removeFromSuperview()
            self.imageHolder.removeFromSuperview()
            self.treesHolder.removeFromSuperview()
            
            print("Done")
        }
    }
    
    
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var score = 0
        planeHolder.mydelegate = self
        dynamicAnimator = UIDynamicAnimator (referenceView: self.view)
        
        dynamicAnimator1 = UIDynamicAnimator (referenceView: self.view)
        
        coins.frame = CGRect(x: 900, y: view.frame.size.height / 2, width: 35, height: 40)
        coin.frame = CGRect(x: view.frame.size.width / 1.5 + 70, y: view.frame.size.height / 2 - 30, width: 35, height: 40)
        coin1.frame = CGRect(x: view.frame.size.width / 1.5 + 150, y: view.frame.size.height / 2 + 10, width: 35, height: 40)
        coin2.frame = CGRect(x: view.frame.size.width / 1.5 + 380, y: view.frame.size.height / 2 - 50, width: 35, height: 40)
        coin3.frame = CGRect(x: view.frame.size.width / 1.5 + 900, y: view.frame.size.height / 2 - 20, width: 35, height: 40)
        coin4.frame = CGRect(x: view.frame.size.width / 1.5 + 2850, y: view.frame.size.height / 2 - 70, width: 35, height: 40)
        coin5.frame = CGRect(x: view.frame.size.width / 1.5 + 3980, y: view.frame.size.height / 2 + 15, width: 35, height: 40)
        coin6.frame = CGRect(x: view.frame.size.width / 1.5 + 7500, y: view.frame.size.height / 2 - 30, width: 35, height: 40)
        coin7.frame = CGRect(x: view.frame.size.width / 1.5 + 800, y: view.frame.size.height / 2 + 70, width: 35, height: 40)
        coin8.frame = CGRect(x: view.frame.size.width / 1.5 + 5800, y: view.frame.size.height / 2 - 110, width: 35, height: 40)
        coin9.frame = CGRect(x: view.frame.size.width / 1.5 + 4300, y: view.frame.size.height / 2 + 150, width: 35, height: 40)
        coin10.frame = CGRect(x: view.frame.size.width / 1.5 + 6200, y: view.frame.size.height / 2, width: 35, height: 40)
        coin11.frame = CGRect(x: view.frame.size.width / 1.5 + 1500, y: view.frame.size.height / 2 - 50, width: 35, height: 40)
        coin12.frame = CGRect(x: view.frame.size.width / 1.5 + 8380, y: view.frame.size.height / 2 - 120, width: 35, height: 40)
        coin13.frame = CGRect(x: view.frame.size.width / 1.5 + 3100, y: view.frame.size.height / 2 + 15, width: 35, height: 40)
        
        
        imageArray3 = [UIImage(named: "bird1.png")!,
                       UIImage(named: "bird2.png")!,
                       UIImage(named: "bird3.png")!,
                       UIImage(named: "bird4.png")!,
                       UIImage(named: "bird5.png")!,
                       UIImage(named: "bird6.png")!,
                       UIImage(named: "bird7.png")!,
                       UIImage(named: "bird8.png")!,
                       UIImage(named: "bird9.png")!,
                       UIImage(named: "bird10.png")!]
        let newImage = UIImage.animatedImage(with: imageArray3, duration: 0.5)
        
        bird.image = newImage
        bird1.image = newImage
        bird2.image = newImage
        bird3.image = newImage
        bird4.image = newImage
        bird5.image = newImage
        bird6.image = newImage
        bird7.image = newImage
        bird8.image = newImage
        bird9.image = newImage
        bird10.image = newImage
        bird11.image = newImage
        bird12.image = newImage
        bird13.image = newImage
        bird14.image = newImage
        
        bird.frame = CGRect(x: 5100, y: view.frame.size.height / 2, width: 50, height: 50)
        bird1.frame = CGRect(x: view.frame.size.width / 1.5 + 3000, y: view.frame.size.height / 2 - 30, width: 55, height: 55)
        bird2.frame = CGRect(x: view.frame.size.width / 1.5 + 5852, y: view.frame.size.height / 2 + 10, width: 55, height: 55)
        bird3.frame = CGRect(x: view.frame.size.width / 1.5 + 6000, y: view.frame.size.height / 2 - 50, width: 55, height: 55)
        bird4.frame = CGRect(x: view.frame.size.width / 1.5 + 100, y: view.frame.size.height / 2 - 20, width: 55, height: 55)
        bird5.frame = CGRect(x: view.frame.size.width / 1.5 + 1100, y: view.frame.size.height / 2 - 70, width: 55, height: 55)
        bird6.frame = CGRect(x: view.frame.size.width / 1.5 + 4000, y: view.frame.size.height / 2 + 15, width: 55, height: 55)
        bird7.frame = CGRect(x: view.frame.size.width / 1.5 + 4700, y: view.frame.size.height / 2 - 30, width: 55, height: 55)
        bird8.frame = CGRect(x: view.frame.size.width / 1.5 + 6600, y: view.frame.size.height / 2 + 70, width: 55, height: 55)
        bird9.frame = CGRect(x: view.frame.size.width / 1.5 + 2900, y: view.frame.size.height / 2 - 110, width: 55, height: 55)
        bird10.frame = CGRect(x: view.frame.size.width / 1.5 + 850, y: view.frame.size.height / 2 + 150, width: 55, height: 55)
        bird11.frame = CGRect(x: view.frame.size.width / 1.5 + 1500, y: view.frame.size.height / 2, width: 55, height: 55)
        bird12.frame = CGRect(x: view.frame.size.width / 1.5 + 2700, y: view.frame.size.height / 2 - 50, width: 55, height: 55)
        bird13.frame = CGRect(x: view.frame.size.width / 1.5 + 8380, y: view.frame.size.height / 2 - 120, width: 55, height: 55)
        bird14.frame = CGRect(x: view.frame.size.width / 1.5 + 900, y: view.frame.size.height / 2 + 15, width: 55, height: 55)
        /*gravity = UIGravityBehavior(items: [coins, coin, coin1, coin2, coin3, coin4, coin5, coin6, coin7, coin8, coin9, coin10, coin11, coin12, coin13]) // for birds maybe*/
        
        
        dynamicItemBehavior = UIDynamicItemBehavior(items: [coins, coin, coin1, coin2, coin3, coin4, coin5, coin6, coin7, coin8, coin9, coin10, coin11, coin12, coin13])
        dynamicItemBehavior1 = UIDynamicItemBehavior(items: [bird, bird1, bird2, bird3, bird4, bird5, bird6, bird7, bird8, bird9, bird10, bird11, bird12, bird13, bird14])
        
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -180, y: 0), for: coins)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -150, y: 0), for: coin)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -150, y: 0), for: coin1)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -180, y: 0), for: coin2)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -220, y: 0), for: coin3)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -580, y: 0), for: coin4)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -680, y: 0), for: coin5)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -1000, y: 0), for: coin6)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -250, y: 0), for: coin7)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -800, y: 0), for: coin8)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -780, y: 0), for: coin9)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -800, y: 0), for: coin10)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -350, y: 0), for: coin11)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -1370, y: 0), for: coin12)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -480, y: 0), for: coin13)
        dynamicAnimator.addBehavior(dynamicItemBehavior)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -650, y: 0), for: bird)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -680, y: 0), for: bird1)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -800, y: 0), for: bird2)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -150, y: 0), for: bird3)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -150, y: 0), for: bird4)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -400, y: 0), for: bird5)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -400, y: 0), for: bird6)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -650, y: 0), for: bird7)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -200, y: 0), for: bird8)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -170, y: 0), for: bird9)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -280, y: 0), for: bird10)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -450, y: 0), for: bird11)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -250, y: 0), for: bird12)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -400, y: 0), for: bird13)
        self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: -580, y: 0), for: bird14)
        dynamicAnimator1.addBehavior(dynamicItemBehavior1)
        collisionBehavior = UICollisionBehavior(items: [coins, coin, coin1, coin2, coin3, coin4, coin5, coin6, coin7, coin8, coin9, coin10, coin11, coin12, coin13])
        collisionBehavior1 = UICollisionBehavior(items: [bird, bird1, bird2, bird3, bird4, bird5, bird6, bird7, bird8, bird9, bird10, bird11, bird12, bird13, bird14])
        collisionBehavior1.action = {
            if self.planeHolder.frame.intersects(self.bird.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 40, y: 20), for: self.bird)
                
                
            }
            if self.planeHolder.frame.intersects(self.bird1.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 20, y: 40), for: self.bird)
            }
            if self.planeHolder.frame.intersects(self.bird14.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 10, y: -20), for: self.bird14)
            }
            if self.planeHolder.frame.intersects(self.bird2.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 40, y: -30), for: self.bird2)
            }
            if self.planeHolder.frame.intersects(self.bird3.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 50, y: 30), for: self.bird3)
            }
            if self.planeHolder.frame.intersects(self.bird4.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 30, y: 30), for: self.bird4)
            }
            if self.planeHolder.frame.intersects(self.bird5.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 40, y: -40), for: self.bird5)
            }
            if self.planeHolder.frame.intersects(self.bird6.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 10, y: 30), for: self.bird6)
            }
            if self.planeHolder.frame.intersects(self.bird7.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 50, y: 30), for: self.bird7)
            }
            if self.planeHolder.frame.intersects(self.bird8.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 40, y: -20), for: self.bird8)
            }
            if self.planeHolder.frame.intersects(self.bird9.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 30, y: 30), for: self.bird9)
            }
            if self.planeHolder.frame.intersects(self.bird10.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 40, y: 40), for: self.bird10)
            }
            if self.planeHolder.frame.intersects(self.bird11.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 20, y: 35), for: self.bird11)
            }
            if self.planeHolder.frame.intersects(self.bird12.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 30, y: 30), for: self.bird12)
            }
            if self.planeHolder.frame.intersects(self.bird13.frame){
                self.dynamicItemBehavior1.addLinearVelocity(CGPoint(x: 20, y: 30), for: self.bird13)
            }
            
            
        }
        collisionBehavior.action = {
            if self.planeHolder.frame.intersects(self.coin.frame){
                self.coin.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin1.frame){
                self.coin1.removeFromSuperview()
               
            }
            if self.planeHolder.frame.intersects(self.coins.frame){
                self.coins.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin2.frame){
                self.coin2.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin3.frame){
                self.coin3.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin4.frame){
                self.coin4.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin5.frame){
                self.coin5.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin6.frame){
                self.coin6.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin7.frame){
                self.coin7.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin8.frame){
                self.coin8.removeFromSuperview()
               
            }
            if self.planeHolder.frame.intersects(self.coin9.frame){
                self.coin9.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin10.frame){
                self.coin10.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin11.frame){
                self.coin11.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin12.frame){
                self.coin12.removeFromSuperview()
                
            }
            if self.planeHolder.frame.intersects(self.coin13.frame){
                self.coin13.removeFromSuperview()
                
            }
            
        }
        collisionBehavior1.removeAllBoundaries()
        collisionBehavior.removeAllBoundaries()//removed boundaries so coins and birds can come from out of view
        collisionBehavior1.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: planeHolder.frame))
        
        collisionBehavior.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: planeHolder.frame))//added frame for collision detection
        dynamicAnimator1.addBehavior(collisionBehavior1)
        dynamicAnimator.addBehavior(collisionBehavior)
        
        
        
        play.alpha = 0
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
        
        
        
        
        
        let when = DispatchTime.now() + 20
        DispatchQueue.main.asyncAfter(deadline: when) {
            
            
            self.play.alpha = 1
            self.play.updateConstraints()
            self.treesHolder.alpha = 0
            self.planeHolder.alpha = 0
            self.imageHolder.alpha = 0
            self.coins.updateConstraints()
            self.coins.removeFromSuperview()
            self.coins.updateConstraints()
            self.coin.removeFromSuperview()
            self.coins.updateConstraints()
            self.coin1.removeFromSuperview()
            self.coin2.removeFromSuperview()
            self.coin3.removeFromSuperview()
            self.coin4.removeFromSuperview()
            self.coin5.removeFromSuperview()
            self.coin6.removeFromSuperview()
            self.coin7.removeFromSuperview()
            self.coin8.removeFromSuperview()
            self.coin9.removeFromSuperview()
            self.coin10.removeFromSuperview()
            self.coin11.removeFromSuperview()
            self.coin12.removeFromSuperview()
            self.coin13.removeFromSuperview()
            self.bird.removeFromSuperview()
            self.bird14.removeFromSuperview()
            self.bird1.removeFromSuperview()
            self.bird2.removeFromSuperview()
            self.bird3.removeFromSuperview()
            self.bird4.removeFromSuperview()
            self.bird5.removeFromSuperview()
            self.bird6.removeFromSuperview()
            self.bird7.removeFromSuperview()
            self.bird8.removeFromSuperview()
            self.bird9.removeFromSuperview()
            self.bird10.removeFromSuperview()
            self.bird11.removeFromSuperview()
            self.bird12.removeFromSuperview()
            self.bird13.removeFromSuperview()
            self.imageHolder.removeFromSuperview()
            self.treesHolder.removeFromSuperview()
            
            print("Done")
        }
    }
    
}

