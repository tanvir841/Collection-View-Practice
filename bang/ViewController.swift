//
//  ViewController.swift
//  bang
//
//  Created by Tanvir on 2/12/20.
//  Copyright © 2020 tanvir841. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    let array:[String] = ["gettyimages-3270196-2048x2048","gettyimages-3270228-2048x2048","gettyimages-3270256-2048x2048","gettyimages-185370398-2048x2048","gettyimages-575443407-2048x2048","gettyimages-755888961-2048x2048","gettyimages-755888961-2048x2048","gettyimages-755888961-2048x2048"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cells", for: indexPath) as! myCell
        cell.test.image = UIImage(named: array[indexPath.row] + ".png")
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let itemSize = UIScreen.main.bounds.width/2 - 2
        let layout = UICollectionViewFlowLayout()
        let pre = UIEdgeInsets.init(top: 20, left: 0, bottom: 10, right: 0)
        layout.sectionInset = pre
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.minimumInteritemSpacing = 2
        layout.minimumLineSpacing = 2
        
        myCollectionView.collectionViewLayout = layout
        // Do any additional setup after loading the view.
    }


}

