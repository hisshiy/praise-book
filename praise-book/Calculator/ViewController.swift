//
//  ViewController.swift
//  Calculator
//
//  Created by x13101xx on 2015/10/13.
//  Copyright (c) 2015年 Tomohisa HISHINUMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var array:[String] = []//金額の配列
    var mytiket = 0//チケットの枚数
    var count = 0//最初が０かどうか判断
    var moneycount = 0//カウント
    var money:[Int] = []//金額
    var money2:[Int] = []//金額
    @IBAction func nextCal(segue: UIStoryboardSegue){
        let menuVC = segue.sourceViewController as! startViewController
        money = menuVC.moneyjodge
        money2 = menuVC.moneyjodge2
        moneycount = menuVC.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Syokuhi.layer.borderWidth = 5.0
        Syokuhi.layer.borderColor = UIColor.whiteColor().CGColor
        Syokuhi.layer.cornerRadius = 10
        Koutuhi.layer.borderWidth = 5.0
        Koutuhi.layer.borderColor = UIColor.whiteColor().CGColor
        Koutuhi.layer.cornerRadius = 10
        Seikatuhi.layer.borderWidth = 5.0
        Seikatuhi.layer.borderColor = UIColor.whiteColor().CGColor
        Seikatuhi.layer.cornerRadius = 10
        Sonota.layer.borderWidth = 5.0
        Sonota.layer.borderColor = UIColor.whiteColor().CGColor
        Sonota.layer.cornerRadius = 10
        one.layer.borderWidth = 5.0
        one.layer.borderColor = UIColor.whiteColor().CGColor
        one.layer.cornerRadius = 10
        two.layer.borderWidth = 5.0
        two.layer.borderColor = UIColor.whiteColor().CGColor
        two.layer.cornerRadius = 10
        three.layer.borderWidth = 5.0
        three.layer.borderColor = UIColor.whiteColor().CGColor
        three.layer.cornerRadius = 10
        four.layer.borderWidth = 5.0
        four.layer.borderColor = UIColor.whiteColor().CGColor
        four.layer.cornerRadius = 10
        five.layer.borderWidth = 5.0
        five.layer.borderColor = UIColor.whiteColor().CGColor
        five.layer.cornerRadius = 10
        six.layer.borderWidth = 5.0
        six.layer.borderColor = UIColor.whiteColor().CGColor
        six.layer.cornerRadius = 10
        seven.layer.borderWidth = 5.0
        seven.layer.borderColor = UIColor.whiteColor().CGColor
        seven.layer.cornerRadius = 10
        eight.layer.borderWidth = 5.0
        eight.layer.borderColor = UIColor.whiteColor().CGColor
        eight.layer.cornerRadius = 10
        nine.layer.borderWidth = 5.0
        nine.layer.borderColor = UIColor.whiteColor().CGColor
        nine.layer.cornerRadius = 10
        zero.layer.borderWidth = 5.0
        zero.layer.borderColor = UIColor.whiteColor().CGColor
        zero.layer.cornerRadius = 10
        zerozero.layer.borderWidth = 5.0
        zerozero.layer.borderColor = UIColor.whiteColor().CGColor
        zerozero.layer.cornerRadius = 10
        clear.layer.borderWidth = 5.0
        clear.layer.borderColor = UIColor.whiteColor().CGColor
        clear.layer.cornerRadius = 10
        back.layer.borderWidth = 5.0
        back.layer.borderColor = UIColor.whiteColor().CGColor
        back.layer.cornerRadius = 10
        enter.layer.borderWidth = 5.0
        enter.layer.borderColor = UIColor.whiteColor().CGColor
        enter.layer.cornerRadius = 10
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var Syokuhi: UIButton!   //食費ボタン
    @IBOutlet weak var Koutuhi: UIButton!   //交通費ボタン
    @IBOutlet weak var Seikatuhi: UIButton! //生活費ボタン
    @IBOutlet weak var Sonota: UIButton!    //その他ボタン
    @IBOutlet weak var Syurui: UILabel!     //種類ラベル
    var pi = 0
    @IBAction func TouchSyokuhi(sender: AnyObject) {
        Syurui.text = "食費";
        pi = 1
    }//種類を食費に変更
    
    @IBAction func TouchKoutuhi(sender: AnyObject) {
        Syurui.text = "交通費";
        pi = 2
    }//種類を交通費に変更

    @IBAction func TouchSeikatuhi(sender: AnyObject) {
        Syurui.text = "生活費";
        pi = 3
    }//種類を生活費に変更
    
    @IBAction func TouchSonota(sender: AnyObject) {
        Syurui.text = "その他";
        pi = 4
    }//種類をその他に変更
    /*ここから*/
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var zerozero: UIButton!
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var enter: UIButton!
    @IBOutlet weak var Kingaku: UILabel!
    /*ここまでボタンの宣言*/
    @IBAction func nineTouch(sender: AnyObject) {
        if count < 9{
            array.append("9")
            count=count+1
        }
        repaint()
    }//金額に９を追加
    @IBAction func eightTouch(sender: AnyObject) {
        if count < 9{
            array.append("8")
            count=count+1
        }
        repaint()
    }//金額に８を追加
    @IBAction func SevenTouch(sender: AnyObject) {
        if count < 9{
            array.append("7")
            count=count+1
        }
        repaint()
    }//金額に７を追加
    @IBAction func TouchSix(sender: AnyObject) {
        if count < 9{
        array.append("6")
        count=count+1
        }
        repaint()
    }//金額に６を追加
    @IBAction func TouchFive(sender: AnyObject) {
        if count < 9{
            array.append("5")
            count=count+1
        }
        repaint()
    }//金額に５を追加
    @IBAction func TouchFour(sender: AnyObject) {
        count=count+1
        if count < 9{
        array.append("4")
        }
        repaint()
    }//金額に４を追加
    @IBAction func TouchThree(sender: AnyObject) {
        count=count+1
        if count < 9{
        array.append("3")
        }
        repaint()
    }//金額に３を追加
    @IBAction func TouchTwo(sender: AnyObject) {
        count=count+1
        if count < 9{
        array.append("2")
        }
        repaint()
    }//金額に２を追加
    @IBAction func TouchOne(sender: AnyObject) {
        count=count+1
        if count < 9{
        array.append("1")
        }
        repaint()
    }//金額に１を追加
    @IBAction func TouchZero(sender: AnyObject) {
        if count < 9{// 金額の桁が１１桁以下なら
            if count > 0{//金額の最初が０以外なら
                array.append("0")
                count=count+1
            }
        }
        repaint()
        if count == 0{
            Kingaku.text = "0"
        }
    }//金額に０を追加
    @IBAction func TouchZerozero(sender: AnyObject) {
        if count > 0{//金額の最初が０以外なら
            if array.count < 9{//金額が１１桁以下なら
                array.append("0")
                count=count+1//金額の桁を１つ増やす
                if array.count < 10{
                    array.append("0")
                    count=count+1//金額の桁を１つ増やす
                }
            }
        }
        repaint()
        if count == 0{
            Kingaku.text = "0"
        }
    }//金額に００を追加
    @IBAction func TouchClear(sender: AnyObject) {
        array.removeAll()
        count=0
        repaint()
    }//金額をリセット
    @IBAction func TouchBack(sender: AnyObject) {
    
        if count > 0{//金額の桁数が０の場合、桁数のマイナスを実行しない
            array.removeLast()
            count = count-1
        }
        repaint()
    }//金額の一番新しい数字を消す
    @IBAction func TouchEnter(sender: AnyObject) {
        if pi == 0{
            let alert2 = UIAlertController(
                title: "支出種類が入力されていません",
                message: "種類を入力してください",
                preferredStyle: .Alert)//アラート作成
            alert2.addAction(UIAlertAction(
                title: "OK",
                style: .Default,
                handler: { action in print("OK")}))//アラートにOKボタンを追加
            presentViewController(alert2, animated: true, completion: nil)//アラートの表示
        }
        if count == 0{
            let alert3 = UIAlertController(
                title: "金額が入力されていません",
                message: "金額を入力してください",
                preferredStyle: .Alert)//アラート作成
            alert3.addAction(UIAlertAction(
                title: "OK",
                style: .Default,
                handler: { action in print("OK")}))//アラートにOKボタンを追加
            presentViewController(alert3, animated: true, completion: nil)//アラートの表示
        }
        if count > 0{
            if pi > 0{
            let bond = array.joinWithSeparator("")
            let alert = UIAlertController(
                title: "¥ \(bond) 登録しました",
                message: "チケットを１枚入手しました",
                preferredStyle: .Alert)//アラート作成
            alert.addAction(UIAlertAction(
                title: "OK",
                style: .Default,
                handler: { action in print("")}))//アラートにOKボタンを追加
            presentViewController(alert, animated: true, completion: nil)//アラートの表示
            array.removeAll()//金額のリセット
            let intNum:Int = Int(bond)!
            mytiket = mytiket+1//チケットの枚数増加
            money.append(pi)
            money2.append(intNum)
            moneycount = moneycount + 1
            count=0
            pi=0
            Syurui.text = "";
            repaint()
            }
        }
    }//Enterが押された場合の処理
    func repaint(){
        let bond = array.joinWithSeparator("")
        Kingaku.text = "\(bond)"
    }//ラベルの文字変更
}

