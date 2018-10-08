//
//  MainVC.swift
//  GetMe
//
//  Created by Neil Sood on 10/7/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var myOrdersButton: UIBarButtonItem!
    @IBOutlet weak var addOrderButton: UIBarButtonItem!
    
    @IBOutlet weak var myOrdersTableView: UITableView!
    
    var myOrdersTableData: [Order] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myOrdersTableView.delegate = self
        myOrdersTableView.dataSource = self
    }

    @IBAction func myOrdersPressed(_ sender: UIBarButtonItem) {
//        self.navigationController?.navigationBar.tintColor = .black
        
    }
    
    @IBAction func addOrderPressed(_ sender: UIBarButtonItem) {
//        self.navigationController?.navigationBar.tintColor = .black
    }
    
    
}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myOrdersTableData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myOrdersTableView.dequeueReusableCell(withIdentifier: "MyOrdersCell", for: indexPath)
        
        return cell
    }
}

