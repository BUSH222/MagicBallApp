//
//  ViewController.swift
//  MagicBallApp
//
//  Created by Захар Литвинчук on 08.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballPicture: UIImageView!
    
    var ballArray = [UIImage(imageLiteralResourceName: "ball1"), UIImage(imageLiteralResourceName: "ball2"), UIImage(imageLiteralResourceName: "ball3"), UIImage(imageLiteralResourceName: "ball4"), UIImage(imageLiteralResourceName: "ball5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    func changeImage() {
        ballPicture.image = ballArray.randomElement()
    }
    
    @IBAction func BoringButton(_ sender: UIButton) {changeImage()}
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?){
        if motion == .motionShake { // Shake detection stuff for fun
            changeImage()
        }
    }
}
