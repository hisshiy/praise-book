//
//  collectionViewController.swift
//  Calculator
//
//  Created by x13101xx on 2015/10/17.
//  Copyright (c) 2015年 Tomohisa HISHINUMA. All rights reserved.
//

import UIKit
import AVFoundation
import Foundation
//TableView,AudioPlayerDelegate
class collectionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AVAudioPlayerDelegate {
    
    //カウント用変数
    var count=0
    //音源の配列
    var collvoice:[Int] = []
    //選択したセル
    var select = 50
    //ガチャで取得済みかどうか
    var judge = 0
    //判定用
    var cheak = 0
    
    
    @IBAction func nextColl(segue: UIStoryboardSegue){
        let menuVC = segue.sourceViewController as! startViewController
        collvoice = menuVC.menuvoice
    }
    
    //セル作成
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("List1") as! TableViewCell
            cell.number1.text = "\(indexPath.row+1):"
            cell.music.text = "褒めてもらう"
            collvoice[18]=1
            for i in 0...29{
                if(select == i){
                    if(count == 1){
                        if(indexPath.row == select){
                            cell.music.text = "やめる"
                        }
                    }else{
                        if(indexPath.row == select){
                            cell.music.text = "褒めてもらう"
                        }
                    }
                }
                //入手していた場合、名前表示
                if(collvoice[i]==1){
                    if(i==0){//voice1
                        if(indexPath.row==0){
                            cell.list1.text = "さすがですね"
                        }
                    }
                    if(i==1){//voice2
                        if(indexPath.row==1){
                            cell.list1.text = "いい感じですね"
                        }
                    }
                    if(i==2){//voice3
                        if(indexPath.row==2){
                            cell.list1.text = "たいしたものですね"
                        }
                    }
                    if(i==3){//voice4
                        if(indexPath.row==3){
                            cell.list1.text = "すごいですね"
                        }
                    }
                    if(i==4){//voive5
                        if(indexPath.row==4){
                            cell.list1.text = "ここまで大変だったのでは\nないですか？"
                        }
                    }
                    if(i==5){//voice6
                        if(indexPath.row==5){
                            cell.list1.text = "絶好調ですね"
                        }
                    }
                    if(i==6){//voice7
                        if(indexPath.row==6){
                            cell.list1.text = "意志が強いですね"
                        }
                    }
                    if(i==7){//voice8
                        if(indexPath.row==7){
                            cell.list1.text = "頑張っていますね"
                        }
                    }
                    if(i==8){//voice9
                        if(indexPath.row==8){
                            cell.list1.text = "成長しましたね"
                        }
                    }
                    if(i==9){//voice10
                        if(indexPath.row==9){
                            cell.list1.text = "尊敬します"
                        }
                    }
                    if(i==10){//voice11
                        if(indexPath.row==10){
                            cell.list1.text = "わかっていても中々\nできませんよ"
                        }
                    }
                    if(i==11){//voice12
                        if(indexPath.row==11){
                            cell.list1.text = "いつも一生懸命ですね"
                        }
                    }
                    if(i==12){//voice13
                        if(indexPath.row==12){
                            cell.list1.text = "完璧ですね"
                        }
                    }
                    if(i==13){//voice14
                        if(indexPath.row==13){
                            cell.list1.text = "勤倹力行とはあなたのための\n言葉ですね"
                        }
                    }
                    if(i==14){//voice15
                        if(indexPath.row==14){
                            cell.list1.text = "あなたが一番です"
                        }
                    }
                    if(i==15){//voice16
                        if(indexPath.row==15){
                            cell.list1.text = "あなたの頑張りはすごいです"
                        }
                    }
                    if(i==16){//voice17
                        if(indexPath.row==16){
                            cell.list1.text = "いつも応援しています"
                        }
                    }
                    if(i==17){//voice18
                        if(indexPath.row==17){
                            cell.list1.text = "偉いですね"
                        }
                    }
                    if(i==18){//voice19
                        if(indexPath.row==18){
                            cell.list1.text = "頑張りすぎていませんか？\n無理はしないでくださいね"
                        }
                    }
                    if(i==19){//voice20
                        if(indexPath.row==19){
                            cell.list1.text = "我慢強いですね"
                        }
                    }
                    if(i==20){//voice21
                        if(indexPath.row==20){
                            cell.list1.text = "行動力がありますね"
                        }
                    }
                    if(i==21){//voice22
                        if(indexPath.row==21){
                            cell.list1.text = "真剣さが素敵です"
                        }
                    }
                    if(i==22){//voice23
                        if(indexPath.row==22){
                            cell.list1.text = "とても誠実ですね"
                        }
                    }
                    if(i==23){//voice24
                        if(indexPath.row==23){
                            cell.list1.text = "責任感が強いですね"
                        }
                    }
                    if(i==24){//voice25
                        if(indexPath.row==24){
                            cell.list1.text = "何かをやりとげることは\nすごいことですよ"
                        }
                    }
                    if(i==25){//voice26
                        if(indexPath.row==25){
                            cell.list1.text = "これからも期待しています。\nがんばってください"
                        }
                    }
                    if(i==26){//voice27
                        if(indexPath.row==26){
                            cell.list1.text = "努力家ですね"
                        }
                    }
                    if(i==27){//voice28
                        if(indexPath.row==27){
                            cell.list1.text = "あなたはとても光っています"
                        }
                    }
                    if(i==28){//voice29
                        if(indexPath.row==28){
                            cell.list1.text = "いい調子ですね。\nこれからも頑張ってください"
                        }
                    }
                    if(i==29){//voice30
                        if(indexPath.row==29){
                            cell.list1.text = "熱心ですね"
                        }
                    }
                }else{
                    if(indexPath.row == i){
                        cell.list1.text = "???"
                    }
                }
            }
            return cell
    }
    
    //Audio設定
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func sound(fileName: String, type: String){
        //再生
        let audioPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(fileName, ofType: type)!)
        var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: audioPath)
        } catch let error as NSError {
            audioError = error
            audioPlayer = nil
        }
        //エラーが起きた時
        if let error = audioError {
            print("Error \(error.localizedDescription)")
        }
        if count == 0{
            audioPlayer.play()
            audioPlayer.numberOfLoops = -1
            count=1
        }else{
            audioPlayer.stop()
            count=0
        }
    }
    
    //ボイス再生（セルを選択した時に実行）
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        //クリックしたセルの場所をselectに代入
        select = indexPath.row
        //for文で回し、selectと一致したらvoice(クリックしたセルの番号)が再生
        if(collvoice[select] == 1){
            for j in 0...29{
                if j == select{
                    sound("voice\(j)",type: "m4a")
                    audioPlayer.delegate = self
                    audioPlayer.prepareToPlay()
                    tableView.reloadData()
                }
            }
        }else{
            let collalert = UIAlertController(
                title: "まだ入手していません",
                message: "もっと入力して褒められよう！",
                preferredStyle: .Alert)//アラート作成
            
            collalert.addAction(UIAlertAction(
                title: "OK",
                style: .Default,
                handler: { action in print("")}
                )
            )//アラートにOKボタンを追加
            presentViewController(collalert, animated: true, completion: nil)//アラートの表示
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 30
    }
    //ステータスバーを非表示
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
