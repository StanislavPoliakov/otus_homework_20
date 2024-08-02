//
//  ViewController.swift
//  otus_homework_20
//
//  Created by Поляков Станислав Денисович on 02.08.2024.
//

import UIKit
import Firebase
import FirebaseCrashlytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func crash() {
        fatalError("test message")
    }

    @IBAction func log() {
        Crashlytics.crashlytics().log("log message")
    }
    
    @IBAction func didTapOnOpenButton() {
        Analytics.logEvent("Trying to open SecondViewController", parameters: nil)
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewControllerId") as? SecondViewController else { return }
        navigationController?.pushViewController(vc, animated: true)
    }
}

