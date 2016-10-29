//
//  ViewController.swift
//  SafariTintTester
//
//  Created by Amelia Boli on 10/29/16.
//  Copyright © 2016 Appogenic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(sender: UIButton) {
        guard let appleUrl = URL(string: "https://www.apple.com") else {
            #if DEBUG
                print("There was a problem creating the url for the Safari VC")
            #endif
            return
        }

        let controller = StyledSafariViewController(url: appleUrl)
        present(controller, animated: true, completion: nil)
    }

}

