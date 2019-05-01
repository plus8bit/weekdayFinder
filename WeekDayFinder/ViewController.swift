//
//  ViewController.swift
//  WeekDayFinder
//
//  Created by Nick on 01/05/2019.
//  Copyright © 2019 Nick Danilov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func findDayButton(_ sender: UIButton) {
        let calendar = Calendar.current
        
        var dataComponents = DateComponents()
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        
        dataComponents.day = Int(day)
        dataComponents.month = Int(month)
        dataComponents.year = Int(year)
        
        guard let date = calendar.date(from: dataComponents) else { return }
        
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "EEEE"
        
        let weekDay = dateFormater.string(from: date)
        
        resultLabel.text = weekDay
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

