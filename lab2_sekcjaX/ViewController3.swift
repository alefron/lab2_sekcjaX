//
//  ViewController3.swift
//  lab2_sekcjaX
//
//  Created by Aleksandra Front on 24/11/2022.
//

import UIKit


protocol ViewController3Delegate: AnyObject {
    func viewController3(_ controller: ViewController3, getValue value: Float)
}


class ViewController3: UIViewController {

    @IBOutlet weak var smilePicker: UISlider!
    weak var delegate: ViewController3Delegate?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.viewController3(self, getValue: smilePicker.value)
        
        // Do any additional setup after loading the view.
    }

        
            
        
    
    
}
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


