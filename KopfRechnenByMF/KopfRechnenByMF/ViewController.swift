//
//  ViewController.swift
//  KopfRechnenByMF
//
//  Created by Michelangelo Foschi on 02/10/2020.
//  Copyright © 2020 Michelangelo Foschi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    
    var arrayOfItems:[Item] = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfItems = APIClient().getData()
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellIdentifier") as? CustomCell {
            cell.configureCell(item: arrayOfItems[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let dataPresentingViewController = storyBoard.instantiateViewController(withIdentifier: "DataPresentingViewControllerIdentifier") as? DataPresentingViewController {
            self.present(dataPresentingViewController, animated: true, completion: nil)
            dataPresentingViewController.dataLabel.text = arrayOfItems[indexPath.row].text
            dataPresentingViewController.dataImageView.image = arrayOfItems[indexPath.row].image
        }
    }
}
