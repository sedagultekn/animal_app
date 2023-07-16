//
//  ViewController.swift
//  animals_App
//
//  Created by Seda Gültekin on 14.07.2023.
//

import UIKit
import WebKit
import AVKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var view8: AnimalViewController!
    @IBOutlet weak var view7: AnimalViewController!
    @IBOutlet weak var view5: AnimalViewController!
    @IBOutlet weak var view6: AnimalViewController!
    @IBOutlet weak var view4: AnimalViewController!
    @IBOutlet weak var view3: AnimalViewController!
    @IBOutlet weak var view2: AnimalViewController!
    @IBOutlet weak var view1: AnimalViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
     webLink()
    }
    private func webLink(){
        view1.urlString = "https://en.wikipedia.org/wiki/Cheetah"
        view2.urlString = "https://en.wikipedia.org/wiki/Elephant"
        view3.urlString = "https://en.wikipedia.org/wiki/Zebra."
        view4.urlString = "https://en.wikipedia.org/wiki/Gorilla"
        view5.urlString = "https://en.wikipedia.org/wiki/Hippopotamus"
        view6.urlString = "https://en.wikipedia.org/wiki/Lion"
        view7.urlString = "https://en.wikipedia.org/wiki/Giraffe."
        view8.urlString = "https://en.wikipedia.org/wiki/Common_ostrich."
         
        let cheetah = "cheetah"
        let elephant = "elephant"
        let giraffe = "giraffe"
        let gorilla = "gorilla"
        let hippo = "hippo"
        let lion = "lion"
        let ostrich = "ostrich"
        let zebra = "zebra"
        
        
       
        view1.openWebView = routeWebVC()
        view2.openWebView = routeWebVC()
        view3.openWebView = routeWebVC()
        view4.openWebView = routeWebVC()
        view5.openWebView = routeWebVC()
        view6.openWebView = routeWebVC()
        view7.openWebView = routeWebVC()
        view8.openWebView = routeWebVC()
        
        
        
        view6.imageView.image = UIImage(named: "aslan")
        view1.imageView.image = UIImage(named: "cita")
        view2.imageView.image = UIImage(named: "fil")
        view4.imageView.image = UIImage(named: "goril")
        view3.imageView.image = UIImage(named: "zebra")
        view8.imageView.image = UIImage(named: "devekusu")
        view5.imageView.image = UIImage(named: "su_aygırı")
        view7.imageView.image=UIImage(named: "zurafa")
        
        
        
        view1.label.text = "ÇITA"
        view2.label.text = "FİL"
        view3.label.text = "ZEBRA"
        view4.label.text = "GORİL"
        view5.label.text = "SU AYGIRI"
        view6.label.text = "ASLAN"
        view7.label.text = "ZÜRAFA"
        view8.label.text = "DEVEKUŞU"



        }
    
func routeWebVC()-> (String)->(){return {urlString in
    let storyboard = UIStoryboard(name: "WebView", bundle: nil)
    if let webVC = storyboard.instantiateViewController(withIdentifier: "WebView") as? WebView {
        webVC.urlString = urlString
        self.navigationController?.pushViewController(webVC, animated: true)
        
    }
    
}
    
}
    func routeVideoVC()-> (String)->(){return {urlString in
        if let videos = Bundle.main.path(forResource:"cheetah", ofType: "mp4"){
       let player = AVPlayer(url: URL(filePath: videos))
       let playerController = AVPlayerViewController()
            
        }
        
    }
        
    }
}
