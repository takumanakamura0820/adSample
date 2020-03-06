
//
//  SecondViewController.swift
//  Gacha
//
//  Created by TAKUMA NAKAMURA on 2020/03/07.
//  Copyright © 2020 NakamuraTakuma. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var passedNum : Int!
    @IBOutlet var gachaImageView : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        if passedNum < 33{
            gachaImageView.image = UIImage(named: "animal_character_uma_ninjin.png")
        }else if passedNum < 66{
            gachaImageView.image = UIImage(named: "mukashibanashi_ryoushi.png")
        }else{
            gachaImageView.image = UIImage(named: "business_yudegaeru.png")
        }
    }
    

    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

}
