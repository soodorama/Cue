//
//  LunchVC.swift
//  GetMe
//
//  Created by Neil Sood on 10/7/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class LunchVC: UIViewController {

    @IBOutlet weak var favoritesButton: UIBarButtonItem!
    @IBOutlet weak var searchButton: UIBarButtonItem!
    
    @IBOutlet weak var favoritesTableView: UITableView!
    
    var favoritesTableData: [Order] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoritesTableView.delegate = self
        favoritesTableView.dataSource = self
    }
    
    @IBAction func favoritesPressed(_ sender: UIBarButtonItem) {
        print("Favorites Pressed")
    }
    
    @IBAction func searchPressed(_ sender: UIBarButtonItem) {
        print("Search Pressed")
    }
    
}

extension LunchVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoritesTableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = favoritesTableView.dequeueReusableCell(withIdentifier: "FavoritesCell", for: indexPath)
        
        return cell
    }
}
