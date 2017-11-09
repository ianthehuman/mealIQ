//
//  ViewController.swift
//  meal-iq
//
//  Created by Ian Value on 11/7/17.
//  Copyright © 2017 intoTheElements. All rights reserved.
//

import UIKit

class MenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var menuTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        menuTable.dataSource = self
        menuTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getMenu().count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell") as? MenuCell {
            let menu = DataService.instance.getMenu()[indexPath.row]
            cell.updateViews(menu: menu)
            return cell
        } else {
            return MenuCell()
        }
            
    }

}

