//
//  ViewController.swift
//  TimezoneTracker
//
//  Created by Charles Salvatore on 1/18/18.
//  Copyright © 2018 Charles Salvatore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var date1: UILabel!
    @IBOutlet weak var date2: UILabel!
    @IBOutlet weak var time1: UILabel!
    @IBOutlet weak var time2: UILabel!
    @IBOutlet weak var week1: UILabel!
    @IBOutlet weak var week2: UILabel!
    @IBOutlet weak var thing1: UILabel!
    @IBOutlet weak var thing2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thing1.text = "想你"
        thing2.text = "美美的"
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tick), userInfo: nil, repeats:true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calWeekNumber(week: String) -> Int {
        if week == "Monday" {
            return 1
        }
        else if week == "Tuesday" {
            return 2
        }
        else if week == "Wednesday" {
            return 3
        }
        else if week == "Thursday" {
            return 4
        }
        else if week == "Friday" {
            return 5
        }
        else if week == "Saturday" {
            return 6
        }
        else if week == "Sunday" {
            return 7
        }
        return 0
    }
    
    func tick() {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "PDT")
        dateFormatter.dateFormat = "MM月dd日"
        date1.text = dateFormatter.string(from: currentDate)
        dateFormatter.dateFormat = "HH:mm:ss"
        time1.text = dateFormatter.string(from: currentDate)
        dateFormatter.dateFormat = "EEEE"
        let dayOfWeek1 = dateFormatter.string(from: currentDate)
        week1.text = dayOfWeek1
        dateFormatter.timeZone = TimeZone(abbreviation: "HKT")
        dateFormatter.dateFormat = "MM月dd日"
        date2.text = dateFormatter.string(from: currentDate)
        dateFormatter.dateFormat = "HH:mm:ss"
        time2.text = dateFormatter.string(from: currentDate)
        dateFormatter.dateFormat = "EEEE"
        let dayOfWeek2 = dateFormatter.string(from: currentDate)
        week2.text = dayOfWeek2
    }

    //MARK: Actions
    @IBAction func setLabelRefresh(_ sender: UIButton) {
                
    }
}

