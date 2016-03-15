//
//  Graph.swift
//  Calculator
//
//  Created by x13101xx on 2015/11/07.
//  Copyright (c) 2015年 Tomohisa HISHINUMA. All rights reserved.
//

import UIKit

class Graph: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var guraph: UILabel!
    var moneyG:[Int] = []
    var moneyG2:[Int] = []
    var counter = 0
    var total = 0
    var p1 = 0
    var p2 = 0
    var p3 = 0
    var p4 = 0
    let pi = CGFloat(M_PI)
    override func viewDidLoad() {
        super.viewDidLoad()
        guraph.layer.borderWidth = 5.0
        guraph.layer.borderColor = UIColor.whiteColor().CGColor
        guraph.layer.cornerRadius = 10
        if counter > 0{
            load()
        }
        if(p4 != 0){
            Sonota()
        }
        if(p3 != 0){
            Seikatsuhi()
        }
        
        if(p2 != 0){
            Koutsuhi()
        }
        if(p1 != 0){
         Syokuhi()
        }
        label1.text = "\(p1)"
        label2.text = "\(p2)"
        label3.text = "\(p3)"
        label4.text = "\(p4)"
        label5.text = "\(total)"
    }

    func ok(){
    }
    @IBAction func nextGraph(segue: UIStoryboardSegue){
        let menuVC = segue.sourceViewController as! startViewController
        moneyG = menuVC.moneyjodge
        moneyG2 = menuVC.moneyjodge2
        counter = menuVC.count
    }
    
    func load(){
        for i in 0...counter{
            if moneyG[i]==1{
                p1 = p1 + moneyG2[i]
            }else if moneyG[i]==2{
                p2 = p2 + moneyG2[i]
            }else if moneyG[i]==3{
                p3 = p3 + moneyG2[i]
            }else if moneyG[i]==4{
                p4 = p4 + moneyG2[i]
            }
            total = total + moneyG2[i]
        }
    }
    
    func Syokuhi(){
        
        let point = CGPointMake(self.view.frame.width/2, self.view.frame.height/2.25)
        let doubletotal:CGFloat = CGFloat(total)
        let doublep1:CGFloat = CGFloat(p1)
        let finish =  doublep1/doubletotal
        let start:CGFloat = -1 * pi / 2.0 // 開始の角度
        var end :CGFloat = finish*pi*2//終了の角度
        end = end - (pi / 2.0)
        let path: UIBezierPath = UIBezierPath();
        path.moveToPoint(CGPointMake(self.view.frame.width/2, self.view.frame.height/2.25))
        path.addArcWithCenter(CGPointMake(self.view.frame.width/2, self.view.frame.height/2.25), radius: 160, startAngle: start, endAngle: end, clockwise: true) // 円弧
        
        let layer = CAShapeLayer()
        layer.fillColor = UIColor.orangeColor().CGColor
        layer.path = path.CGPath
        
        self.view.layer.addSublayer(layer)
    }
    
    func Koutsuhi(){
        
        let point = CGPointMake(self.view.frame.width/2, self.view.frame.height/2.25)
        let doubletotal:CGFloat = CGFloat(total)
        let doublep1:CGFloat = CGFloat(p1)
        let doublep2:CGFloat = CGFloat(p2)
        let finish =  doublep1/doubletotal
        let finish2 =  doublep2/doubletotal
        var start:CGFloat = -1 * pi / 2.0
        var end:CGFloat = 0
        if(p1==0){  // 開始の角度
            end = finish2*pi*2//終了の角度
             end = end - (pi / 2.0)
        }else if(p1 != 0){
            start = start + finish*pi*2  // 開始の角度
            end = finish2*pi*2//終了の角度
            end = end + finish*pi*2
            end = end - (pi / 2.0)
        }
        let path: UIBezierPath = UIBezierPath();
        path.moveToPoint(CGPointMake(self.view.frame.width/2, self.view.frame.height/2.25))
        path.addArcWithCenter(CGPointMake(self.view.frame.width/2, self.view.frame.height/2.25), radius: 160, startAngle: start, endAngle: end, clockwise: true) // 円弧
        
        let layer = CAShapeLayer()
        layer.fillColor = UIColor.yellowColor().CGColor
        layer.path = path.CGPath
        
        self.view.layer.addSublayer(layer)
    }
    
    func Seikatsuhi(){
        
        let point = CGPointMake(self.view.frame.width/2, self.view.frame.height/2.25)
        let doubletotal:CGFloat = CGFloat(total)
        let doublep1:CGFloat = CGFloat(p1)
        let doublep2:CGFloat = CGFloat(p2)
        let doublep3:CGFloat = CGFloat(p3)
        let finish =  doublep1/doubletotal
        let finish2 =  doublep2/doubletotal
        let finish3 = doublep3/doubletotal
        var start:CGFloat = -1 * pi / 2.0  // 開始の角度
        var end:CGFloat = 0
        if(p1==0 && p2==0){
            end = finish3*pi*2 //終了の角度
            end = end - (pi / 2.0)
        }else if(p2 == 0 && p1 != 0){
            start = start + finish*pi*2  // 開始の角度
            end = finish3*pi*2 //終了の角度
            end = end + finish*pi*2
            end = end - (pi / 2.0)
        }else if(p1 != 0 && p2 != 0){
            start = start + finish2*pi*2  // 開始の角度
            end = finish3*pi*2 //終了の角度
            end = end + finish2*pi*2 + finish*pi*2
            end = end - (pi / 2.0)
        }else if(p1 == 0 && p2 != 0){
            start = start + finish2*pi*2  // 開始の角度
            end = finish3*pi*2 //終了の角度
            end = end + finish2*pi*2
            end = end - (pi / 2.0)
        }
        
        let path: UIBezierPath = UIBezierPath();
        path.moveToPoint(CGPointMake(self.view.frame.width/2, self.view.frame.height/2.25))
        path.addArcWithCenter(CGPointMake(self.view.frame.width/2, self.view.frame.height/2.25), radius: 160, startAngle: start, endAngle: end, clockwise: true) // 円弧
        
        let layer = CAShapeLayer()
        layer.fillColor = UIColor.greenColor().CGColor
        layer.path = path.CGPath
        
        self.view.layer.addSublayer(layer)
    }
    
    func Sonota(){
        
        let point = CGPointMake(self.view.frame.width/2, self.view.frame.height/2.25)
        let doubletotal:CGFloat = CGFloat(total)
        let doublep1:CGFloat = CGFloat(p1)
        let doublep2:CGFloat = CGFloat(p2)
        let doublep3:CGFloat = CGFloat(p3)
        let doublep4:CGFloat = CGFloat(p4)
        let finish =  doublep1/doubletotal
        let finish2 =  doublep2/doubletotal
        let finish3 = doublep3/doubletotal
        let finish4 = doublep4/doubletotal
        var start:CGFloat = -1 * pi / 2.0  // 開始の角度
        var end:CGFloat = 0
        if(p1==0 && p2==0 && p3==0){
            end = finish4*pi*2 //終了の角度
            end = end - (pi / 2.0)
        }else if(p1 != 0 && p1 == 0 && p3 == 0){
            start = start + finish*pi*2 // 開始の角度
             end = finish4*pi*2 //終了の角度
             end = end + finish*pi*2 //終了の角度
             end = end - (pi / 2.0)
        }else if(p1 == 0 && p2 != 0 && p3 == 0){
            start = start + finish2*pi*2  // 開始の角度
            end = finish4*pi*2 //終了の角度
            end = end + finish2*pi*2 //終了の角度
            end = end - (pi / 2.0)
        }else if(p1 == 0 && p2 == 0 && p3 != 0){
            start = start + finish3*pi*2  // 開始の角度
            end = finish4*pi*2 //終了の角度
            end = end + finish3*pi*2 //終了の角度
            end = end - (pi / 2.0)
        }else if(p1 != 0 && p2 != 0 && p3 != 0){
            start = start + finish3*pi*2 // 開始の角度
            end = finish4*pi*2 //終了の角度
            end = end + finish3*pi*2 + finish2*pi*2 + finish*pi*2//終了の角度
            end = end - (pi / 2.0)
        }else if(p1 == 0 && p2 != 0 && p3 != 0){
            start = start + finish3*pi*2 // 開始の角度
            end = finish4*pi*2 //終了の角度
            end = end + finish3*pi*2 + finish2*pi*2//終了の角度
            end = end - (pi / 2.0)
        }else if(p1 != 0 && p2 != 0 && p3 == 0){
            start = start + finish2*pi*2 // 開始の角度
            end = finish4*pi*2 //終了の角度
            end = end + finish2*pi*2 + finish*pi*2//終了の角度
            end = end - (pi / 2.0)
        }else if(p1 != 0 && p2 == 0 && p3 != 0){
            start = start + finish3*pi*2 // 開始の角度
            end = finish4*pi*2 //終了の角度
            end = end + finish3*pi*2 + finish*pi*2//終了の角度
            end = end - (pi / 2.0)
        }
        
        let path: UIBezierPath = UIBezierPath();
        path.moveToPoint(CGPointMake(self.view.frame.width/2, self.view.frame.height/2.25))
        path.addArcWithCenter(CGPointMake(self.view.frame.width/2, self.view.frame.height/2.25), radius: 160, startAngle: start, endAngle: end, clockwise: true) // 円弧
        
        let layer = CAShapeLayer()
        layer.fillColor = UIColor.blueColor().CGColor
        layer.path = path.CGPath
        
        self.view.layer.addSublayer(layer)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
