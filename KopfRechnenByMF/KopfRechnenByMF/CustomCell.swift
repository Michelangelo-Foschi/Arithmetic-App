//
//  CustomCell.swift
//  KopfRechnenByMF
//
//  Created by Michelangelo Foschi on 02/10/2020.
//  Copyright © 2020 Michelangelo Foschi. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var cellLabel:UILabel!
    @IBOutlet weak var cellImage:UIImageView!
    
    func configureCell(item:Item) {
        cellLabel.text = item.text
        cellImage.image = item.image
       
    }
}
