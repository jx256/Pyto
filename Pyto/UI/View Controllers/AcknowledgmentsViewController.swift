//
//  AcknowledgmentsViewController.swift
//  Pyto
//
//  Created by Emma Labbé on 1/1/19.
//  Copyright © 2018-2021 Emma Labbé. All rights reserved.
//

import UIKit

/// A View controller that shows acknowledgments.
class AcknowledgmentsViewController: DocumentationViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.stopLoading()
        if let url = Bundle.main.url(forResource: "docs_build/html", withExtension: "") {
            webView.loadFileURL(url.appendingPathComponent("third_party.html"), allowingReadAccessTo: url)
        }
    }
}
