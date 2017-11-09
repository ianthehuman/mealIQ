//
//  MenuCell.swift
//  meal-iq
//
//  Created by Ian Value on 11/8/17.
//  Copyright © 2017 intoTheElements. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {
    
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuTitle: UILabel!

    func updateViews(menu: Menu) {
        menuImage.image = UIImage(named: menu.imageName)
        menuTitle.text = menu.title
    }

  

}
