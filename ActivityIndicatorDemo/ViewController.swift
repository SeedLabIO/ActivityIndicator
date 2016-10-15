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

    @IBOutlet weak var collectionView: NSCollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(
            NSNib(nibNamed: "CollectionViewItem", bundle: nil),
            forItemWithIdentifier: "CollectionViewItem"
        )
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

extension ViewController: NSCollectionViewDataSource {

    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 32
    }

    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: "CollectionViewItem", for: indexPath) as! CollectionViewItem
        if let type = ActivityIndicatorType(rawValue: indexPath.item), indexPath.item != 9 {
            item.activityIndicatorView.type = type
            print("Start Animating \(type)")
        }
        return item
    }
}

extension ViewController: NSCollectionViewDelegate {

}

extension ViewController: NSCollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> NSSize {
        return NSMakeSize(50, 50)
    }
}

