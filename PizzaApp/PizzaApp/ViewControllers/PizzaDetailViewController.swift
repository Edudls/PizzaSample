//
//  PizzaDetailViewController.swift
//  PizzaApp
//
//  Created by DMonaghan on 8/25/20.
//  Copyright © 2020 DMonaghan. All rights reserved.
//

import UIKit

class PizzaDetailViewController {
    @IBOutlet weak var imageView: UIImageView?
    @IBOutlet weak var nameLabel: UILabel?
    
    func configureView(with coupon: Coupon) {
        nameLabel?.text = "Price: $\(coupon.price)\n\(coupon.name)"
    }
}
