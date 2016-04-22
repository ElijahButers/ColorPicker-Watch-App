//
//  DetailController.swift
//  ColorPicker
//
//  Created by User on 4/22/16.
//  Copyright © 2016 Ray Wenderlich. All rights reserved.
//

import WatchKit
import Foundation


class DetailController: WKInterfaceController {
    
    @IBOutlet var hexLabel: WKInterfaceLabel!
    @IBOutlet var rgbLabel: WKInterfaceLabel!
    @IBOutlet var hslLabel: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let color = ColorManager.defaultManager.selectedColor
        hexLabel.setText("#" + color.hexString)
        rgbLabel.setText(color.rgbString)
        hslLabel.setText(color.hslString)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
