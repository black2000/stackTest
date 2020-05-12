//
//  ViewController.swift
//  stackTest
//
//  Created by tarek hamed  on 5/12/20.
//  Copyright © 2020 tarek hamed . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var logs = [CustomView]()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        loadData()
        tableView.backgroundColor = UIColor.lightGray
    }
    
    
    func loadData() {
        for _ in 0...10 {
            var customV = CustomView(finalDate: "02:10AM", image: UIImage(named: "icons8-call-20")!, status: "Failed Voice Call", duration: "2:10")
            logs.append(customV)
        }
    }
    
    func registerCell() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "myCellTableViewCell", bundle: nil), forCellReuseIdentifier: "myCellTableViewCell")
    }
    
}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat( (20 * logs.count) + 300)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCellTableViewCell") as? myCellTableViewCell {
            cell.configureCell(logs: logs, date: "today")
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    // Make the background color show through
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
}


