//
//  PizzaViewController.swift
//  PizzaApp
//
//  Created by DMonaghan on 8/25/20.
//  Copyright © 2020 DMonaghan. All rights reserved.
//

import UIKit

class PizzaViewController: UIViewController {
    let viewModel = PizzaViewModel()
    
    @IBOutlet weak var tableView: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
    }
    
    func setupTableView() {
        tableView?.dataSource = self
        tableView?.delegate = self
        tableView?.register(CouponCell.self, forCellReuseIdentifier: "cell")
        viewModel.getCoupons() { [weak self] in
            self?.tableView?.reloadData()
        }
    }
}

extension PizzaViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.coupons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CouponCell else {
            return UITableViewCell()
        }
        cell.textLabel?.text = viewModel.coupons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = PizzaDetailViewController()
    }
}

