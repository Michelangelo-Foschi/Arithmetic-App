//
//  API Client.swift
//  KopfRechnenByMF
//
//  Created by Michelangelo Foschi on 02/10/2020.
//  Copyright © 2020 Michelangelo Foschi. All rights reserved.
//

import Foundation
import UIKit

class APIClient {
    
    func getData() ->[Item] {
        var array: [Item] = [Item]()
        
        let item1 = Item(image:UIImage.init(named: "plus"), text:"Addition")
        let item2 = Item(image:UIImage.init(named: "minus"), text:"Subtraction")
        let item3 = Item(image:UIImage.init(named: "plus_minus"), text:"Plus And Minus Mix")
        let item4 = Item(image:UIImage.init(named: "multiply"), text:"Multiplication")
        let item5 = Item(image:UIImage.init(named: "divide"), text:"Division")
        let item6 = Item(image:UIImage.init(named: "math"), text:"All Operations Mix")
        array.append(item1)
        array.append(item2)
        array.append(item3)
        array.append(item4)
        array.append(item5)
        array.append(item6)
        return array
 
    }
}
