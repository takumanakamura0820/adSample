//
//  ViewController.swift
//  Gacha
//
//  Created by TAKUMA NAKAMURA on 2019/08/03.
//  Copyright © 2019 NakamuraTakuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var gachabutton: UIButton!
    var num = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func gacha(){
        num = Int.random(in: 0 ... 99) //0から10までで整数(Int)の乱数
        print(num)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "toView2" {
               let nextView = segue.destination as! SecondViewController
               nextView.passedNum = num
           }
       }


}

