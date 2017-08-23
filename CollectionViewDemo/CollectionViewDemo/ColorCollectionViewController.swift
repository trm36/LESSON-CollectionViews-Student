//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Taylor Mott on 23-Aug-17.
//  Copyright © 2017 Mott Applications. All rights reserved.
//

import UIKit

class ColorCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Collection View Data Source
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return Color.multiples.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Color.multiples[section].count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ColorCell", for: indexPath) as! ColorCollectionViewCell
        
        let colors = Color.multiples[indexPath.section]
        let color = colors[indexPath.item]
        
        cell.updateViews(with: color)
        
        return cell
    }
    
    // MARK: - Collection View Delegate Flow Layout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let dimension = Int(arc4random_uniform(26) + 25)  // random number between 25-50
        
        return CGSize(width: dimension, height: dimension)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        switch section {
        case 0:
            return 5
        case 1:
            return 20
        default:
            return 45
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        switch section {
        case 0:
            return 5
        case 1:
            return 20
        default:
            return 45
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let top = CGFloat(section * 4)
        
        return UIEdgeInsets(top: top, left: 0.0, bottom: 0.0, right: 0.0)
    }
}

