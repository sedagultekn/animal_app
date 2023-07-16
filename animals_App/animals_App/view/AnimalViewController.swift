//
//  animalViewController.swift
//  animals_App
//
//  Created by Seda Gültekin on 14.07.2023.
//

import UIKit
import AVKit
import AVFoundation
class AnimalViewController: UIView{
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
var videoFolderPath:String?
    var videoFileName:String?
    
    var urlString :String?
    var videoLink : String?
    var openVideoLink: ((_ urlLink:String)-> ())?
    var openWebView: ((_ urlLink:String)-> ())?
    override init(frame:CGRect){
        
        super.init(frame:frame)
        self.MyView()
    }
    
    required init?(coder: NSCoder) {
       
        super.init(coder: coder)
        self.MyView()
    }
    private func MyView(){
        if let viewXib = Bundle.main.loadNibNamed("AnimalView", owner: self)?[0] as? UIView{
            viewXib.frame = self.bounds
            viewXib.layer.cornerRadius = 30
            addSubview(viewXib)
        }
    }

    @IBAction func goToLink(_ sender: Any) {
        openWebView?(urlString!)
    }
    
    @IBAction func watchVideoButton(_ sender: Any) {
        let videoURL = URL(fileURLWithPath: videoFolderPath!).appendingPathComponent(videoFileName!)
              let player = AVPlayer(url: videoURL)
              let playerViewController = AVPlayerViewController()
              playerViewController.player = player
              
        /*self.present(playerViewController, animated: true) {
            player.play()} */
        }
        
    }

/*     if let videos = Bundle.main.path(forResource:"\(videoLink)", ofType: "mp4"){
 let player = AVPlayer(url: URL(filePath: videos))
 let playerController = AVPlayerViewController()*/
