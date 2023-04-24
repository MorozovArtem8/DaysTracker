//
//  ViewController.swift
//  DaysTracker
//
//  Created by Artem Morozov on 24.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    //@IBOutlet weak var resultButton: UIButton!
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.isHidden = true
        //resultButton.layer.cornerRadius = 12
        // Do any additional setup after loading the view.
    }

    @IBAction func resultButtonTap() {
        infoLabel.isHidden = false
        infoLabel.text = "Уже целых \(numberOfDays)"
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
}

