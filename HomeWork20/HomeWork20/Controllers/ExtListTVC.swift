//
//  ExtListTVC.swift
//  HomeWork20
//
//  Created by  NovA on 13.09.23.
//

import UIKit

class ExtListTVC: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Person List"
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return DataSource.personsList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExtCell", for: indexPath) as! CustomCell
        let person = DataSource.personsList[indexPath.section]
        cell.emailView.text = person.email
        cell.phoneNumberView.text = person.phoneNumber
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return DataSource.personsList[section].name + " " + DataSource.personsList[section].surName
    }

    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .white
        header.backgroundConfiguration?.backgroundColor = .darkGray
        header.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 17)
    }
}
