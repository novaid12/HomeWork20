//
//  DataSource.swift
//  HomeWork20
//
//  Created by  NovA on 13.09.23.
//

import UIKit

class DataSource {
    private static var nameList = ["Sergey",
                                   "Alexander",
                                   "Evgeny",
                                   "Vasily",
                                   "Oleg",
                                   "Ekaterina",
                                   "Julia",
                                   "Sofia",
                                   "Maksim",
                                   "Violetta"]

    private static var surNameList = ["Ivanov",
                                      "Pikulik",
                                      "Maksimov",
                                      "Kisilev",
                                      "Miller",
                                      "Petrov",
                                      "Vasileev",
                                      "Simonov",
                                      "Polonevich",
                                      "Panomorev"]
    private static var emailList = ["email1@gmail.com",
                                    "email2@gmail.com",
                                    "email3@gmail.com",
                                    "email4@gmail.com",
                                    "email5@gmail.com",
                                    "email6@gmail.com",
                                    "email7@gmail.com",
                                    "email8@gmail.com",
                                    "email9@gmail.com",
                                    "email10@gmail.com"]
    private static var phoneNumberList = ["+375256965432",
                                          "+375256654432",
                                          "+375256967823",
                                          "+375256098762",
                                          "+375256120432",
                                          "+375256901752",
                                          "+375257931432",
                                          "+375256230432",
                                          "+375251642432",
                                          "+375257645042"]

    static var personsList: [Person] = []

    static func createPersonList() -> [Person] {
        personsList = []
        nameList.shuffle()
        surNameList.shuffle()
        emailList.shuffle()
        phoneNumberList.shuffle()
        for i in 0 ..< 10 {
            personsList.append(Person(name: nameList[i], surName: surNameList[i], email: emailList[i], phoneNumber: phoneNumberList[i]))
        }
        return personsList
    }
}
