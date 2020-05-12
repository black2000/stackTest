//
//  ViewController.swift
//  stackTest
//
//  Created by tarek hamed  on 5/12/20.
//  Copyright © 2020 tarek hamed . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData() {
        for _ in 0...10 {
            var customV = CustomView(finalDate: "02:10AM", image: UIImage(named: "icons8-call-20")!, status: "Failed Voice Call", duration: "2:10")
            stackView.addArrangedSubview(customV)
        }
    }
    
    
    
}

