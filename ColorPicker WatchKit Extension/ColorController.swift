//
//  ColorController.swift
//  ColorPicker
//
//  Created by User on 4/19/16.
//  Copyright © 2016 Ray Wenderlich. All rights reserved.
//

import WatchKit
import Foundation


class ColorController: WKInterfaceController {

    @IBOutlet var backgroundGroup: WKInterfaceGroup!
    @IBOutlet var label: WKInterfaceLabel!
    
    var activeColor: UIColor?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
