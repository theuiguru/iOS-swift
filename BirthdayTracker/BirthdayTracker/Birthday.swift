//
//  Birthday.swift
//  BirthdayTracker
//
//  Created by Chris Thomas on 6/26/18.
//  Copyright © 2018 Chris Thomas. All rights reserved.
//

import Foundation

class Birthday {
    let firstName: String
    let lastName: String
    let birthdate: Date
    
    init(firstName: String, lastName: String, birthdate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthdate = birthdate
    }
}
