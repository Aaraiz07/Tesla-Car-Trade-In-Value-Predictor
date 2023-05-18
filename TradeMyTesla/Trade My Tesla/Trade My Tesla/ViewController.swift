//
//  ViewController.swift
//  Trade My Tesla
//
//  Created by Muhammad Aaraiz on 16/05/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func calculateValue(_ sender: Any) {
    }
    
    @IBOutlet weak var valuation: UILabel!
    @IBOutlet weak var condition: UISegmentedControl!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var mileage: UILabel!
    @IBOutlet weak var upgrades: UISegmentedControl!
    @IBOutlet weak var model: UISegmentedControl!
    @IBOutlet weak var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }


}

