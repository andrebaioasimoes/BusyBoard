//
//  MainWindowController.swift
//  BusyBoard
//
//  Created by André Simões on 07/12/15.
//  Copyright © 2015 André Simões. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var secureTextField: NSSecureTextField!
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var checkBox: NSButton!
    
    @IBOutlet weak var slider: NSSlider!
    @IBOutlet weak var sliderLabel: NSTextField!
    
    @IBOutlet weak var showSliderTicks: NSButton!
    @IBOutlet weak var hideSliderTicks: NSButton!
    
    var sliderCurrentValue = 0
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    @IBAction func checkMeUncheckMe(sender: NSButton) {
        
        sender.title = (sender.state == 1) ? "Uncheck me" : "Check me"
 
    }
    
    @IBAction func revealTheSecretMessageButon(sender: NSButton) {
        textField.stringValue = secureTextField.stringValue
    }
    
    @IBAction func resetControlls(sender: NSButton) {
        checkBox.state = 0
        checkBox.title = "Check me"
        textField.stringValue = ""
        secureTextField.stringValue = ""
        sliderLabel.stringValue = ""
        
        slider.integerValue = 0
        slider.numberOfTickMarks = 10
        showSliderTicks.state = 1
        hideSliderTicks.state = 0
        
    }
    
    @IBAction func moveSlider(sender: NSSlider) {
        
        slider.integerValue = sender.integerValue
        print (slider.integerValue)
        
        if(slider.integerValue > sliderCurrentValue) {
            sliderLabel.stringValue = "Slider goes up!!!"
        }
        else {
            sliderLabel.stringValue = "Slider goes down!!!"
        }
        
        sliderCurrentValue = slider.integerValue
    }
    
    
    @IBAction func enableSliderTicks(sender: NSButton) {
        
       slider.numberOfTickMarks = sender.tag == 0 ? 10:0
        
    }

    
    
}

