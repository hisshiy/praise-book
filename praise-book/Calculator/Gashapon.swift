//
//  Gashapon.swift
//  Calculator
//
//  Created by x13101xx on 2015/10/27.
//  Copyright (c) 2015年 Tomohisa HISHINUMA. All rights reserved.
//

import UIKit

class Gashapon: UIViewController {
    var mytiket2 = 0//チケットの枚数
    var judge = 0 //判定
    var rundum = 0 //ランダム変数
    var gashavoice:[Int] = []//ボイス
    var myImageView: UIImageView!
    @IBOutlet weak var viewtiket: UILabel!
    @IBOutlet weak var TouchGasha: UIButton!
    @IBAction func nextGasha(segue: UIStoryboardSegue){
        let menuVC = segue.sourceViewController as! startViewController
        mytiket2 = menuVC.tiket
        let voiceVC = segue.sourceViewController as! startViewController
         gashavoice = voiceVC.menuvoice
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // UIImageViewを作成する.
        myImageView = UIImageView(frame: CGRectMake(0,0,200,350))
        
        // 表示する画像を設定する.
        let myImage = UIImage(named: "20151110101345.jpg")
        // 画像をUIImageViewに設定する.
        myImageView.image = myImage
        
        // 画像の表示する座標を指定する.
        myImageView.layer.position = CGPoint(x: self.view.bounds.width/2, y: 260.0)
        
        // UIImageViewをViewに追加する.
        self.view.addSubview(myImageView)
    }

    override func viewWillAppear(animated: Bool) {
        viewtiket.text = "\(mytiket2)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func Touchbutton(sender: AnyObject) {
        let alert = UIAlertController(
            title: "5枚消費して褒められますか？",
            message: "チケット枚数：\(mytiket2)",
            preferredStyle: .Alert)//アラート作成

        alert.addAction(UIAlertAction(
            title: "OK",
            style: .Default,
            handler: { action in self.ok()}
            )
        )//アラートにOKボタンを追加
    
        alert.addAction(UIAlertAction(
            title: "Cancel",
            style: .Default,
            handler: { action in self.no()}))//アラートにキャンセルボタンを追加
        presentViewController(alert, animated: true, completion: nil)//アラートの表示
    }
    
    func ok(){
        if (mytiket2 > 4){//チケットの枚数が足りていたら
            rundum = (Int)(arc4random_uniform(29))
            let getalert = UIAlertController(
                title: "褒め言葉をゲットしました！",
                message: "voice\(rundum+1)",
                preferredStyle: .Alert)//アラート作成
            getalert.addAction(UIAlertAction(
                title: "OK",
                style: .Default,
                handler: { action in print("")}
                )
            )//アラートにOKボタンを追加
            presentViewController(getalert, animated: true, completion: nil)//アラートの表示
            gashavoice[rundum] = 1
            mytiket2 -= 5
            viewtiket.text = "\(mytiket2)"
        }else{
            let noalert = UIAlertController(
                title: "チケットが足りません",
                message: "チケット枚数：\(mytiket2)",
                preferredStyle: .Alert)//アラート作成
            
            noalert.addAction(UIAlertAction(
                title: "OK",
                style: .Default,
                handler: { action in print("")}
                )
            )//アラートにOKボタンを追加
            
                presentViewController(noalert, animated: true, completion: nil)//アラートの表示
        }
    }
    func no(){
        
    }
    
}
