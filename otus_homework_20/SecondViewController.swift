//
//  SecondViewController.swift
//  otus_homework_20
//
//  Created by Поляков Станислав Денисович on 02.08.2024.
//

import Foundation
import UIKit
import Firebase

class SecondViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBackground
    }
    
    @IBAction func didTapOnActionButton() {
        Analytics.logEvent("Action Button clicked", parameters: nil)
    }
}
