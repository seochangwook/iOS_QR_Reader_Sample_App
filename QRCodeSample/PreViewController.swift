//
//  PreViewController.swift
//  QRCodeSample
//
//  Created by seo on 2019/10/24.
//  Copyright © 2019 seo. All rights reserved.
//

import UIKit
import WebKit

class PreViewController: UIViewController {
    
    var qrAddressValue : String = ""
    
    @IBOutlet weak var qrwebview: WKWebView!
    @IBOutlet weak var qrvaluelabel: UILabel!
    
    override func loadView() {
        super.loadView()
        
        qrwebview = WKWebView(frame: CGRect.init(x: 16, y: 149, width: 343, height: 478))
        
       view.addSubview(qrwebview)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        qrvaluelabel.text = qrAddressValue
        
        let url = URL(string: qrAddressValue)
        let request = URLRequest(url: url!)
        
        qrwebview.load(request)
    }

}
