//
//  ViewController.swift
//  lab2_sekcjaX
//
//  Created by MM on 21/11/2022.
//

import UIKit
import AVFAudio

class ViewController: UIViewController, ViewController3Delegate {
    
    
       
    func viewController3(_ controller: ViewController3, getValue value: Float) {
        face.smileControl = value
    }
    
    @IBOutlet weak var face: FaceView!
    
    @IBAction func returnedFromView2(_ segue: UIStoryboardSegue) {
        let scene2 = segue.source as! ViewController2
        face.redColor = scene2.redPicker.value
        face.blueColor = scene2.bluePicker.value
        face.greenColor  = scene2.greenPicker.value
       
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backToView1From3" {
            let destinationControler = segue.destination as! ViewController3
            destinationControler.delegate = self
        }
    }

    override func viewDidLoad() {
        face.setNeedsDisplay()
        super.viewDidLoad()

       
        // Do any additional setup after loading the view, typically from a nib.
        //becomeFirstResponder()
    }
    
        
}
