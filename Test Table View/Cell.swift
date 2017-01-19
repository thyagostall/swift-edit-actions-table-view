//
//  Cell.swift
//  Test Table View
//
//  Created by Thyago on 1/19/17.
//  Copyright © 2017 Thyago Stall Araujo. All rights reserved.
//

import Foundation
import UIKit

class Cell: UITableViewCell {
    @IBOutlet private weak var label: UILabel!
    
    public func set(text: String) {
        label.text = text
    }
}
