//
//  File.swift
//  animals_App
//
//  Created by Seda Gültekin on 16.07.2023.
//

import UIKit
import WebKit

class WebView: UIViewController{
    var urlString:String?
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.load(URLRequest(url: URL(string: urlString!)!))
    }
    
 
}
