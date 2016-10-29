//
//  StyledSafariViewController.swift
//  SafariTintTester
//
//  Created by Amelia Boli on 10/29/16.
//  Copyright © 2016 Appogenic. All rights reserved.
//

import UIKit
import SafariServices

class StyledSafariViewController: SFSafariViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        delegate = self

        preferredBarTintColor = UIColor.orange

        // This will change the toolbar tint but not the Done button or the website name in the "navigation" section
        preferredControlTintColor = UIColor.white

        // This can be seen by bringing up an alert like in a peek
        view.tintColor = UIColor.purple
    }

    // Both viewDidAppear and didCompleteInitialLoad only produce a UISizeTrackingView, which contains a UIRemoteView, and a UIView which has no subviews
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("==========\n\(view.subviews)")
    }

    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        print("==========\n\(view.subviews)")
    }
}
