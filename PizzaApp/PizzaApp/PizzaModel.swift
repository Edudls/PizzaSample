//
//  PizzaModel.swift
//  PizzaApp
//
//  Created by DMonaghan on 8/25/20.
//  Copyright © 2020 DMonaghan. All rights reserved.
//

import Foundation

struct CouponContainer: Codable {
    let coupons: [Coupon]
    
    enum CodingKeys: String, CodingKey {
        case coupons = "Coupons"
    }
}

struct Coupon: Codable {
    let imageCode: String
    let name: String
    let price: String
    
    enum CodingKeys: String, CodingKey {
        case imageCode = "ImageCode"
        case name = "Name"
        case price = "Price"
    }
}

//{"Coupons":{"2013":{"Code":"2013","ImageCode":"2T-GFC","Description":"","Name":"Small Gluten Free Crust Pizza with up to 3 Toppings","Price":"8","Tags":{"ValidServiceMethods":["Carryout","Delivery","Hotspot"],"EffectiveOn":"2013-09-24","MultiSame":true,"Combine":"Complementary"},"Local":true,"Bundle":false}}
