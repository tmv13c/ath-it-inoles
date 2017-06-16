//
//  ViewController.swift
//  inoles swift
//
//  Created by tmv13c on 9/30/15.
//  Copyright (c) 2015 FSU. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {
    var moviePlayer : MPMoviePlayerController!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var url:NSURL = NSURL(string: "videourlhere")!
        displayVideoFromURL("videourlhere" )
        
        moviePlayer = MPMoviePlayerController(contentURL: url)
        moviePlayer.view.frame = CGRect(x: 0, y: 0, width: 1025, height: 800)
        
        self.view.addSubview(moviePlayer.view)
        moviePlayer.fullscreen = true
        moviePlayer.repeatMode = .One;
        moviePlayer.shouldAutoplay = true
        moviePlayer.controlStyle = MPMovieControlStyle.Embedded
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func prepareToPlay(){}

    func displayVideoFromURL( address: String ) {
        
        if let url:NSURL = NSURL( string: address ) {
            
            if let moviePlayer = MPMoviePlayerController( contentURL: url ) {
                
                view.addSubview( moviePlayer.view )
                moviePlayer.fullscreen = true
                moviePlayer.controlStyle = MPMovieControlStyle.Embedded
                moviePlayer.movieSourceType = MPMovieSourceType.Streaming
                moviePlayer.play()
                
            }
        }
    }
    
}

