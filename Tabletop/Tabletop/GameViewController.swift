//
//  GameViewController.swift
//  Tabletop
//
//  Created by Rodrigo Webler on 10/8/16.
//  Copyright © 2016 Rodrigo Webler. All rights reserved.
//

import Eureka


class GameViewController : FormViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        form = Section("Section1")
            <<< TextRow(){ row in
                row.title = "Text Row"
                row.placeholder = "Enter text here"
            }
            <<< PhoneRow(){
                $0.title = "Phone Row"
                $0.placeholder = "And numbers here"
            }
            +++ Section("Section2")
            <<< DateRow(){
                $0.title = "Date Row"
                $0.value = NSDate(timeIntervalSinceReferenceDate: 0) as Date
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Navigation
    
}
