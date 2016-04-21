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
        if let color = context as? UIColor {
            activeColor = color
            backgroundGroup.setBackgroundColor(color)
            label.setText("#" + color.hexString)
        }
    }
    
    override func didAppear() {
        super.didAppear()
        
        if let color = activeColor {
            ColorManager.defaultManager.selectedColor = color
        }
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
