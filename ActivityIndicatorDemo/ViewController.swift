//
//  ViewController.swift
//  ActivityIndicatorDemo
//
//  Created by LiangAlen on 14/10/2016.
//  Copyright © 2016 seedlab. All rights reserved.
//

import Cocoa
import ActivityIndicator

class ViewController: NSViewController {

    @IBOutlet weak var activityIndicatorView: ActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        activityIndicatorView.type = .squareSpin
        activityIndicatorView.startAnimating()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

