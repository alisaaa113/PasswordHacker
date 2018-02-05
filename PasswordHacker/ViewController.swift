//
//  ViewController.swift
//  PasswordHacker
//
//  Created by arisa isshiki on 2018/02/02.
//  Copyright © 2018年 alisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //結果表示ラベル
    @IBOutlet var resultLabel1 : UILabel!
    @IBOutlet var resultLabel2 : UILabel!
    @IBOutlet var resultLabel3 : UILabel!
    @IBOutlet var resultLabel4 : UILabel!
    
    //カウント用ラベル
    @IBOutlet var countLabel : UILabel!
    
    //秘密のパスワード
    var password: Int = 1234

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func start(){
        
        for i in 0...9999{
            
            //解析中の数字表示
            countLabel.text = String(i)
            //処理待機
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            
            if password == i {
                //print("正解は\(i)です")
                 print("正解は"+String(i)+"です")
            }
        }
        
    }
    @IBAction func reset(){
        
        password = 1234
        //countlabelの表示元に
        countLabel.text = "STARTボタンを押して解析開始"
        
        //ラベルの表示を全て0に
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        
    }

}

