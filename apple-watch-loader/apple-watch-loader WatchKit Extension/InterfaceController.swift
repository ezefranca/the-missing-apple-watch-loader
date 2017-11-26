//
//  InterfaceController.swift
//  apple-watch-loader WatchKit Extension
//
//  Created by Ezequiel on 25/11/17.
//  Copyright © 2017 Ezequiel. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var button: WKInterfaceButton!
    @IBOutlet var loader: WKInterfaceImage!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        self.showLoader()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func showLoader() {
        self.setLoader(hidden: false)
        loader.setImageNamed("loader")
        loader.startAnimatingWithImages(in: NSRange(location: 1,
                                                    length: 8), duration: 0.8, repeatCount: -1)
    }
    
    func stopLoader() {
        self.loader.stopAnimating()
        self.setLoader(hidden: true)
    }
    
    private func setLoader(hidden:Bool) {
        self.loader.setHidden(hidden)
        self.button.setHidden(!hidden)
    }
    
    @IBAction func tapStart() {
        self.showLoader()
    }
    
    @IBAction func tapStop(_ sender: Any) {
        self.stopLoader()
    }
    
}
