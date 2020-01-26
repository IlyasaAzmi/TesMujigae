//
//  MenuCollectionViewCell.swift
//  TesMujigae
//
//  Created by Ilyasa Azmi on 26/01/20.
//  Copyright © 2020 Ilyasa Azmi. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelMenu: UILabel!
    var isDipilih: Bool = false
    
    func blackColor(){
        labelMenu.textColor = #colorLiteral(red: 0.8509803922, green: 0.8470588235, blue: 0.8470588235, alpha: 1)
    }
    
    func redColor(){
        labelMenu.textColor = #colorLiteral(red: 0.9215686275, green: 0.631372549, blue: 0.631372549, alpha: 1)
    }
}
