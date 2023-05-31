//
//  ViewController.swift
//  Trade My Tesla
//
//  Created by Muhammad Aaraiz on 16/05/2023.
//

import UIKit

class ViewController: UIViewController {
  
    let cars = Cars()
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
    
    @IBAction func calculateValue(_ sender: Any) {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 0
        let formattedMileage = formatter.string(for: slider.value) ?? "0"
        mileage.text = "MILEAGE (\(formattedMileage) miles)"

        if let prediction = try? cars.prediction(model: Double(model.selectedSegmentIndex), premium: Double(upgrades.selectedSegmentIndex), mileage: Double(slider.value), condition: Double(condition.selectedSegmentIndex)) {
            let clampedValuation = max(2000, prediction.price)
            formatter.numberStyle = .currency
            valuation.text = formatter.string(for: clampedValuation)
        } else {
            valuation.text = "Error"
        }
    }

}

