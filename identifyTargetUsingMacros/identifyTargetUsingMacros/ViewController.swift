//
//  ViewController.swift
//  identifyTargetUsingMacros
//
//  Created by Sunil Kumar Reddy Sanepalli on 25/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var environmentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let data = getDataBasedonTarget()
        self.view.backgroundColor = data.color
        environmentLabel.text = data.targetInfo
        
    }
    
    func getDataBasedonTarget() -> (color: UIColor?, targetInfo: String) {
        var info = "Your project building on "
        var colorName: UIColor?
        switch AuthManager.shared.target {
        case .PROD:
            colorName = .orange
            info += "PROD environment"
        case .UAT:
            colorName = .green
            info += "UAT environment"
        case .QA:
            colorName = .red
            info += "QA environment"
        }
        return (colorName,info)
    }


}

