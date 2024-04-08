//
//  FirstViewController.swift
//  OrderOfEvents
//
//  Created by student on 04/03/24.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var MiddleViewController: UILabel!
    var eventNumber : Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //print("Screen-2 will appear")
        addEvent(from: "viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        print("Screen-2 did appear")
        addEvent(from: "viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
//        print("Screen-2 will disappear")
        addEvent(from: "viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
//        print("Screen-2 did disappear")
        addEvent(from: "viewDidDisappear")
    }

    func addEvent(from: String) {
        if let existingText = MiddleViewController.text {
            MiddleViewController.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
//            print(existingText)
        }
    }
   
}
