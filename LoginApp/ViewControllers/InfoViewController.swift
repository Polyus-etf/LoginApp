//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Ирина on 21.11.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    @IBOutlet var workLabel: UILabel!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        nameLabel.text = person?.name
        surnameLabel.text = person?.surname
        hobbyLabel.text = person?.hobby
        workLabel.text = person?.work
    }
}
