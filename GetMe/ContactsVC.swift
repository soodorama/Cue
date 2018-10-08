//
//  ContactsVC.swift
//  GetMe
//
//  Created by Neil Sood on 10/7/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class ContactsVC: UIViewController {
    
    @IBOutlet weak var contactsTableView: UITableView!
    
    // need to change to contacts
    var contactsTableData: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}

extension ContactsVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsTableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactsTableView.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath)
        
        return cell
    }
}

