//
//  PizzaConstants.swift
//  PizzaApp
//
//  Created by DMonaghan on 8/25/20.
//  Copyright © 2020 DMonaghan. All rights reserved.
//

import Foundation

enum PizzaConstants: String {
    case pizzaURL = "https://order.dominos.com/power/store/9560/menu?structured=true"
    case imageURL = "https://cache.dominos.com/mobile/ios/coupons/%@.jpg"
}


//https://order.dominos.com/power/store/9560/menu?structured=true
//-Parse values from above json for Key “Coupons”
//-Show it in a table view listing each coupons name.
//On tapping the row should navigate to second view showing more details . Add a image, name and price from json.
//  
//For image grab the value from key “ImageCode” and append it to Image URL path -
//https://cache.dominos.com/mobile/ios/coupons/%@.jpg
//  
//Sample url  https://cache.dominos.com/mobile/ios/coupons/2L1T.jpg

