//
//  ViewController.swift
//  Test Table View
//
//  Created by Thyago on 1/19/17.
//  Copyright © 2017 Thyago Stall Araujo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var items = ["Amanda", "Cheryl", "Stephanie", "Johnny", "Edward", "Diana", "Laura", "Amy", "Louis", "Denise", "William", "Antonio", "Walter", "Louise", "Eugene"]

    @IBOutlet private weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! Cell
        cell.set(text: items[indexPath.item])
        return cell
    }

}

