//
//  startViewController.swift
//  Calculator
//
//  Created by x13101xx on 2015/10/17.
//  Copyright (c) 2015年 Tomohisa HISHINUMA. All rights reserved.
//

import UIKit
import QuartzCore
class startViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        have.text = "\(tiket)"
        gatya.layer.borderWidth = 8.0
        gatya.layer.borderColor = UIColor.whiteColor().CGColor
        gatya.layer.cornerRadius = 10
        calculator.layer.borderWidth = 8.0
        calculator.layer.borderColor = UIColor.whiteColor().CGColor
        calculator.layer.cornerRadius = 10
        collection.layer.borderWidth = 8.0
        collection.layer.borderColor = UIColor.whiteColor().CGColor
        collection.layer.cornerRadius = 10
        graph.layer.borderWidth = 8.0
        graph.layer.borderColor = UIColor.whiteColor().CGColor
        graph.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    //チケットカウント　受け渡し
    var tiket = 100//チケットの数
    var backrundum = 0//乱数の受け渡し
    var menuvoice:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]//ボイス
    var moneyjodge:[Int] = [0]
    var moneyjodge2:[Int] = [0]
    var count = 0
    @IBOutlet weak var gatya: UIButton!         //ガチャボタン
    @IBOutlet weak var calculator: UIButton!    //計算機ボタン
    @IBOutlet weak var collection: UIButton!    //コレクションボタン
    @IBOutlet weak var graph: UIButton!         //グラフボタン
    @IBOutlet weak var have: UILabel!
    @IBAction func returnMenu(segue: UIStoryboardSegue){
        let newVC = segue.sourceViewController as! ViewController
        moneyjodge = newVC.money
        moneyjodge2 = newVC.money2
        count = newVC.moneycount
        tiket += newVC.mytiket
        have.text = "\(tiket)"
    }//画面遷移(支出入力画面から戻ってきた時)
    @IBAction func returnMenuInColl(segue: UIStoryboardSegue){
    }//画面遷移（コレクション画面から）
    @IBAction func returnMenuInGraph(segue: UIStoryboardSegue){
        let graphVC = segue.sourceViewController as! Graph
        moneyjodge = graphVC.moneyG
        moneyjodge2 = graphVC.moneyG2
    }//画面遷移（グラフ画面から）
    @IBAction func returnMenuInGasha(segue: UIStoryboardSegue){
        let secondVC = segue.sourceViewController as! Gashapon
        tiket = secondVC.mytiket2
        have.text = "\(tiket)"
        let gasha3VC = segue.sourceViewController as! Gashapon
        //ボイスの配列の値を返す
        menuvoice = gasha3VC.gashavoice
    }//画面遷移(ガチャガチャ画面から)
    //画面が切り替わる時
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //もしセグエの名前がcalcurationSegueだったら
        if (segue.identifier == "nextCal"){
            let calVC = segue.destinationViewController as! ViewController
            //チケットの値を返す
            calVC.moneycount = count
            calVC.money = moneyjodge
            calVC.money2 = moneyjodge2
        }
        //もしセグエの名前がnextGashaだったら
        if (segue.identifier == "nextGasha"){
            let gashaVC = segue.destinationViewController as! Gashapon
            //チケットの値を返す
            gashaVC.mytiket2 = tiket
            
            let gasha2VC = segue.destinationViewController as! Gashapon
            //乱数の値を返す
            gasha2VC.rundum = backrundum
            
            let gasha3VC = segue.destinationViewController as! Gashapon
            //ボイスの配列の値を返す
            gasha3VC.gashavoice = menuvoice
        }
        if(segue.identifier == "nextColl"){
            let collVC = segue.destinationViewController as! collectionViewController
        
            collVC.collvoice = menuvoice
        }
        
        if(segue.identifier == "nextGraph"){
            let graphVC = segue.destinationViewController as! Graph
            
            graphVC.moneyG = moneyjodge
            graphVC.moneyG2 = moneyjodge2
            graphVC.counter = count
        }
    }
    
    
    

}
