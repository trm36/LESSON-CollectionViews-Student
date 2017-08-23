//
//  ColorCollectionViewCell2.swift
//  CollectionViewDemo
//
//  Created by Taylor Mott on 23-Aug-17.
//  Copyright © 2017 Mott Applications. All rights reserved.
//

import UIKit

class ColorCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var colorLabel: UILabel!
    
    func updateViews(with color: Color) {
        contentView.backgroundColor = color.uiColor
        colorLabel.text = color.name
        if color.hasWhiteText {
            colorLabel.textColor = .white
        } else {
            colorLabel.textColor = .black
        }
    }
    
}
