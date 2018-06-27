//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by Chris Thomas on 6/18/18.
//  Copyright © 2018 Chris Thomas. All rights reserved.
//

import UIKit

protocol AddBirthdayViewControllerDelegate {
    func addBirthdayViewController(_ addBirthdayViewController: AddBirthdayViewController, didAddBirthday birthday: Birthday)
}

class AddBirthdayViewController: UIViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthdatePicker: UIDatePicker!
    
    var delegate: AddBirthdayViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        birthdatePicker.maximumDate = Date()
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        print("The save button was tapped.")
        
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let birthdate = birthdatePicker.date
        let newBirthday = Birthday(firstName: firstName, lastName: lastName, birthdate: birthdate)
        
        delegate?.addBirthdayViewController(self, didAddBirthday: newBirthday)
        dismiss(animated: true, completion: nil)
        
        print("Created a Birthday!")
        print("First Name: \(newBirthday.firstName)")
        print("Last Name: \(newBirthday.lastName)")
        print("Birthdate: \(newBirthday.birthdate)")
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}
