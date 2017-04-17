//
//  ViewController.swift
//  miraclePills
//
//  Created by Nam Hyun Woo on 2017. 4. 15..
//  Copyright © 2017년 Nam Hyun Woo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
 
    @IBOutlet weak var stateButton: UIButton!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var streetField: UITextField!
    
    @IBOutlet weak var cityField: UITextField!
    
    @IBOutlet weak var zipcodeField: UITextField!
    
    let state = [ "AK - Alaska",
                  "AL - Alabama",
                  "AR - Arkansas",
                  "AS - American Samoa",
                  "AZ - Arizona",
                  "CA - California",
                  "CO - Colorado",
                  "CT - Connecticut",
                  "DC - District of Columbia",
                  "DE - Delaware",
                  "FL - Florida",
                  "GA - Georgia",
                  "GU - Guam",
                  "HI - Hawaii",
                  "IA - Iowa",
                  "ID - Idaho",
                  "IL - Illinois",
                  "IN - Indiana",
                  "KS - Kansas",
                  "KY - Kentucky",
                  "LA - Louisiana",
                  "MA - Massachusetts",
                  "MD - Maryland",
                  "ME - Maine",
                  "MI - Michigan",
                  "MN - Minnesota",
                  "MO - Missouri",
                  "MS - Mississippi",
                  "MT - Montana",
                  "NC - North Carolina",
                  "ND - North Dakota",
                  "NE - Nebraska",
                  "NH - New Hampshire",
                  "NJ - New Jersey",
                  "NM - New Mexico",
                  "NV - Nevada",
                  "NY - New York",
                  "OH - Ohio",
                  "OK - Oklahoma",
                  "OR - Oregon",
                  "PA - Pennsylvania",
                  "PR - Puerto Rico",
                  "RI - Rhode Island",
                  "SC - South Carolina",
                  "SD - South Dakota",
                  "TN - Tennessee",
                  "TX - Texas",
                  "UT - Utah",
                  "VA - Virginia",
                  "VI - Virgin Islands",
                  "VT - Vermont",
                  "WA - Washington",
                  "WI - Wisconsin",
                  "WV - West Virginia", 
                  "WY - Wyoming"]
    

    @IBAction func stateButtonPressed(_ sender: UIButton) {
        statePicker.isHidden = false
    
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return state.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return state[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateButton.setTitle(state[row], for: UIControlState())
        statePicker.isHidden = true
    }
    
    @IBAction func buyThePills(_ sender: UIButton) {
        print(nameField.text)
    
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

