//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Yosemite on 11/29/14.
//  Copyright (c) 2014 Yosemite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    
    var myTigers:[Tiger] = []
    var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.age = 3
        myTiger.breed = "Bengel"
        myTiger.image = UIImage(named: "Tiger2.jpeg")
        
        myTiger.chuff()
        myTiger.chuffManyTimes(3)
        
        myTigers.append(myTiger)
        println("My tiger's name is : \(myTiger.name) and its breed is \(myTiger.breed) and the image is \(myTiger.image)")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = "\(myTiger.breed)"
        
        currentIndex = 0
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named: "Tiger1.jpeg")
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayam Tiger"
        thirdTiger.age = 3
        thirdTiger.image = UIImage(named: "Tiger3.jpeg")
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 5
        fourthTiger.image = UIImage(named: "Tiger4.jpeg")
        
        myTigers += [secondTiger, thirdTiger, fourthTiger]
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        println("UIBarButtonItem is \(sender)")
        
        var randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        while currentIndex == randomIndex {
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        }
        currentIndex = randomIndex
        let tiger = myTigers[randomIndex]
        
        // Add animation for transition
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = "\(tiger.age)"
            self.breedLabel.text = tiger.breed
            
            }, completion: { (finished:Bool) -> () in })
    }

}

