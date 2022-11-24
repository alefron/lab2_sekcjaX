//
//  FaceView.swift
//  lab2_sekcjaX
//
//  Created by MM on 21/11/2022.
//

import UIKit



class FaceView: UIView {
    
    public var redColor: Float=0
    public var blueColor: Float=0
    public var  greenColor: Float=0.8
    
    public var smileControl: Float=1.0
//    var redColor :Float=0
//    var blueColor :Float=0
//    var greenColor :Float=0.8
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
    
    
        
        let bounds:CGRect = self.bounds
        
        var midPoint=CGPoint() // center of our bounds in our coordinate system
        midPoint.x = bounds.origin.x + bounds.size.width/2
        midPoint.y = bounds.origin.y + bounds.size.height/2
        
     
        var point1=CGPoint()
        point1.x = midPoint.x
        point1.y = midPoint.y
        
        var firstEyePlace=CGPoint()
        var forX = CGFloat(midPoint.x/4)
        var forY = CGFloat(midPoint.x/4)
        firstEyePlace.x = midPoint.x - forX
        firstEyePlace.y = midPoint.y - forY
        
        
        var secondEyePlace=CGPoint()
        secondEyePlace.x = midPoint.x + forX
        secondEyePlace.y = midPoint.y - forY
        
        var smilePlace=CGPoint()
        smilePlace.x = midPoint.x + 2*forX
        smilePlace.y = midPoint.y + forY/2
        
        
        //blueCircle
        //UIGraphicsBeginImageContext(self.bounds.size)
        //context.setFillColor(color.);
        let path:UIBezierPath=UIBezierPath()
        path.addArc(withCenter: point1, radius: 110, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        path.lineWidth=10
        
        let color = UIColor(red:CGFloat(redColor), green:CGFloat(greenColor), blue: CGFloat(blueColor), alpha: alpha)
        color.setFill()
        path.stroke()
        path.fill()

        // white eye
        let path1:UIBezierPath=UIBezierPath()
        path1.addArc(withCenter: firstEyePlace, radius: 15, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        UIColor.white.setFill()
        path1.lineWidth=5
        path1.stroke()
        path1.fill()
        
        let path2:UIBezierPath=UIBezierPath()
        path2.addArc(withCenter: secondEyePlace, radius: 15, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        UIColor.white.setFill()
        path2.lineWidth=5
        path2.stroke()
        path2.fill()
        
        
     
        var smileControlPlace=CGPoint()
        smileControlPlace.x = midPoint.x * CGFloat(smileControl)
        smileControlPlace.y = midPoint.y * CGFloat(smileControl)
        
        
        var smileStart=CGPoint()
        smileStart.x = midPoint.x - 2*forX
        smileStart.y = midPoint.y + forY/2
        
        
        
        let path3 = UIBezierPath()
        path3.move(to: smileStart)
        path3.addQuadCurve(to: smilePlace, controlPoint: smileControlPlace)
        path3.stroke()
        
        
      
  
    }
    

}
