//
//  DetailsVC.swift
//  HomeWork20
//
//  Created by  NovA on 18.09.23.
//

import UIKit

class DetailsVC: UIViewController {
    var person: Person?
    var index: Int = 0
    private var state: Bool = false
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var surNameTF: UITextField!
    @IBOutlet var emailLbl: UILabel!
    @IBOutlet var emailTF: UITextField!
    @IBOutlet var phoneLbl: UILabel!
    @IBOutlet var phoneTF: UITextField!
    @IBOutlet var editButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Details Person"
    }

    override func viewWillAppear(_ animated: Bool) {
        nameLbl.text = person!.name + " " + person!.surName
        emailLbl.text = person!.email
        phoneLbl.text = person!.phoneNumber
    }

    @IBAction func editBtn() {
        if state == false {
            nameTF.text = person!.name
            surNameTF.text = person!.surName
            emailTF.text = person!.email
            phoneTF.text = person!.phoneNumber
            nameTF.isHidden = false
            surNameTF.isHidden = false
            emailTF.isHidden = false
            phoneTF.isHidden = false
            nameLbl.text = "Entry new name and surname"
            emailLbl.text = "Entry new email"
            phoneLbl.text = "Entry new phone number"
            editButton.setTitle("Save", for: .normal)
            editButton.tintColor = .green
            state = true
        } else if state == true {
            let newPerson = Person(name: nameTF.text!, surName: surNameTF.text!, email: emailTF.text!, phoneNumber: phoneTF.text!)
            nameTF.isHidden = true
            emailTF.isHidden = true
            phoneTF.isHidden = true
            surNameTF.isHidden = true
            nameLbl.text = newPerson.name + " " + newPerson.surName
            surNameTF.text = newPerson.surName
            emailLbl.text = newPerson.email
            phoneLbl.text = newPerson.phoneNumber
            editButton.setTitle("Edit", for: .normal)
            editButton.tintColor = .systemBlue
            state = false
            if person != newPerson {
                print("yes")
                DataSource.personsList.remove(at: index)
                DataSource.personsList.insert(newPerson, at: index)
            }
        }
    }
}
