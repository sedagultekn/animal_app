//
//  WebViewController.swift
//  animals_App
//
//  Created by Seda Gültekin on 15.07.2023.
//

import UIKit
import WebKit

class WebViewController: UIViewController{
    var urlString:String?
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.load(URLRequest(url: URL(string: urlString!)!))
    }
    
 
}
