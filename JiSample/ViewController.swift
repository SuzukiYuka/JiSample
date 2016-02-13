//
//  ViewController.swift
//  JiSample
//
//  Created by nagata on 2/13/16.
//  Copyright © 2016 nagata. All rights reserved.
//

import UIKit
import Ji

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL(string: "http://www.honokuni.or.jp/toyohashi/spot/")
        let jiDoc = Ji(htmlURL: url!)
        let titleNodes = jiDoc!.xPath("//div[@class=\"data-t\"]")!
                
        for titleNode in titleNodes {
            print(titleNode.content)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

