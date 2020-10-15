//
//  DataPresentingViewController.swift
//  KopfRechnenByMF
//
//  Created by Michelangelo Foschi on 02/10/2020.
//  Copyright © 2020 Michelangelo Foschi. All rights reserved.
//

import UIKit

class DataPresentingViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var dataImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func donePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }


}
