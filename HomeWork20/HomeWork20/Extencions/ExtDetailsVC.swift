//
//  ExtDetailsVC.swift
//  HomeWork20
//
//  Created by  NovA on 18.09.23.
//

import Foundation

extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.email == rhs.email &&
            lhs.name == rhs.name &&
            lhs.phoneNumber == rhs.phoneNumber &&
            lhs.surName == rhs.surName
    }
}
