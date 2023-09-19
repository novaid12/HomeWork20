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

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
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

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let person = DataSource.personsList[section]
        let myView = UIView()
        myView.backgroundColor = .darkGray
        let label = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 25))
        label.text = person.name + " " + person.surName
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 25)
        myView.addSubview(label)
        return myView
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow,
           let vc = segue.destination as? DetailsVC
        {
            vc.index = indexPath.section
            vc.person = DataSource.personsList[indexPath.section]
        }
    }
}
