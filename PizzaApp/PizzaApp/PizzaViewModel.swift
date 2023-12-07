//
//  PizzaViewModel.swift
//  PizzaApp
//
//  Created by DMonaghan on 8/25/20.
//  Copyright © 2020 DMonaghan. All rights reserved.
//

import Foundation

class PizzaViewModel {
    var coupons: [Coupon] = []
    
    func getCoupons(handler: @escaping () -> Void) {
        guard let pizzaURL = URL(string: PizzaConstants.pizzaURL.rawValue) else {
            return
        }
        let task = URLSession.shared.dataTask(with: pizzaURL, completionHandler: { [weak self] data, res, err in
            guard err == nil else {
                handler()
                return
            }
            
            if let safeData = data {
                let decoder = JSONDecoder()
                do {
                    let container = try decoder.decode(CouponContainer.self, from: safeData)
                    self?.coupons = container.coupons
                } catch let error as NSError {
                    print(error.localizedDescription)
                }
            }
            handler()
        })
        task.resume()
    }
}
