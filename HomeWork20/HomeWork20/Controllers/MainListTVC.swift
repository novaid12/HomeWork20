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
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
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

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool { true }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            DataSource.personsList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool { true }

    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentTrack = DataSource.personsList.remove(at: fromIndexPath.row)
        DataSource.personsList.insert(currentTrack, at: to.row)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow,
           let vc = segue.destination as? DetailsVC
        {
            vc.person = DataSource.personsList[indexPath.row]
            vc.index = indexPath.row
        }
    }
}
