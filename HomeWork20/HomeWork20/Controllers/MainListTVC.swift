//
//  MainListTVC.swift
//  HomeWork20
//
//  Created by  NovA on 13.09.23.
//

import UIKit

class MainListTVC: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        DataSource.createPersonList()
        navigationItem.title = "Person List"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataSource.personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath)
        let person = DataSource.personsList[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.surName
        return cell
    }
}
