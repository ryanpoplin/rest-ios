//
//  ViewController.swift
//  Rest
//
//  Created by Ryan Poplin on 12/12/15.
//  Copyright © 2015 Ryan Poplin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var structDude = StdGetRequest()
        structDude.testGetRequest()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}