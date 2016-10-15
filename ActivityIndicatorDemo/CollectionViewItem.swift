//
//  CollectionViewItem.swift
//  ActivityIndicator
//
//  Created by LiangAlen on 15/10/2016.
//  Copyright © 2016 seedlab. All rights reserved.
//

import Cocoa
import ActivityIndicator

class CollectionViewItem: NSCollectionViewItem {

    @IBOutlet weak var activityIndicatorView: ActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }

    override func viewDidAppear() {
        super.viewDidAppear()
        activityIndicatorView.startAnimating()
    }
}
