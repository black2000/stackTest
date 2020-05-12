//
//  myCellTableViewCell.swift
//  stackTest
//
//  Created by tarek hamed  on 5/12/20.
//  Copyright © 2020 tarek hamed . All rights reserved.
//

import UIKit

class myCellTableViewCell: UITableViewCell {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    func configureCell(logs : [CustomView],date: String) {
        dateLabel.text = date
        for log in logs {
            stackView.addArrangedSubview(log)
        }
    }
    
    
    
}
