//
//  ViewController.swift
//  STEPPER&SLIDER
//
//  Created by Syed.Reshma Ruksana on 18/09/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var labelSwitch:UISwitch!
    var buttonSwitch:UISwitch!
    var switchSwitch:UISwitch!
    
    var sliderChange:UISlider!
    var stepperChange:UIStepper!
    
    var minimumValueLabel:UILabel!
    var maximumValueLabel:UILabel!
    var valueChangeLabel:UILabel!
    
    var button:UIButton!
    
    var createLabel:UILabel!
    var createButton:UIButton!
    var createSwitch:UISwitch!
    
    var labelSwitchArray=[UILabel]()
    var buttonSwitchArray=[UIButton]()
    var switchSwitchArray=[UISwitch]()
    
    var horizontalSwitch:UISwitch!
    var verticalSwitch:UISwitch!
    
    
    var labelVerticalSwitch:UILabel!
    var buttonVerticalSwitch:UIButton!
    var switchVerticalSwitch:UISwitch!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUI()
        
         // Do any additional setup after loading the view, typically from a nib.
    }


    func createUI()
    {
        labelSwitch=UISwitch()
        labelSwitch.frame=CGRect(x: 120, y: 70, width: 0, height: 0)
        labelSwitch.onTintColor=UIColor.green
        labelSwitch.tintColor=UIColor.cyan
        labelSwitch.thumbTintColor=UIColor.blue
        view.addSubview(labelSwitch)
        labelSwitch.addTarget(self , action: #selector(onSwitchChange(changedSwitch:)), for: UIControl.Event.valueChanged)
        
        
        buttonSwitch=UISwitch()
        buttonSwitch.frame=CGRect(x: 120, y: 130, width: 0, height: 0)
        buttonSwitch.onTintColor=UIColor.red
        buttonSwitch.tintColor=UIColor.cyan
        buttonSwitch.thumbTintColor=UIColor.blue
        view.addSubview(buttonSwitch)
        buttonSwitch.addTarget(self , action: #selector(onSwitchChange(changedSwitch:)), for: UIControl.Event.valueChanged)
        
        
        switchSwitch=UISwitch()
        switchSwitch.frame=CGRect(x: 120, y: 190, width: 0, height: 0)
        switchSwitch.onTintColor=UIColor.brown
        switchSwitch.tintColor=UIColor.cyan
        switchSwitch.thumbTintColor=UIColor.blue
        view.addSubview(switchSwitch)
        switchSwitch.addTarget(self , action: #selector(onSwitchChange(changedSwitch:)), for: UIControl.Event.valueChanged)
        
        
        sliderChange=UISlider()
        sliderChange.frame=CGRect(x: 90, y: 220, width: 250, height: 100)
        sliderChange.minimumTrackTintColor=UIColor.yellow
        sliderChange.maximumTrackTintColor=UIColor.brown
        sliderChange.thumbTintColor=UIColor.blue
        sliderChange.minimumValue=0
        sliderChange.maximumValue=100
        view.addSubview(sliderChange)
        sliderChange.addTarget(self , action: #selector(onSliderChange(changedSlider:)), for: UIControl.Event.valueChanged)
        
        stepperChange=UIStepper()
        stepperChange.frame=CGRect(x: 310, y: 310, width: 100, height: 100)
        stepperChange.tintColor=UIColor.black
        view.addSubview(stepperChange)
        stepperChange.addTarget(self , action: #selector(onStepperChange(changedStepper:)), for: UIControl.Event.valueChanged)

        
        minimumValueLabel=UILabel()
        minimumValueLabel.frame=CGRect(x: 20, y: 250, width: 20, height: 30)
        minimumValueLabel.text="0"
        minimumValueLabel.backgroundColor=UIColor.orange
        view.addSubview(minimumValueLabel)
        
        
        maximumValueLabel=UILabel()
        maximumValueLabel.frame=CGRect(x: 350, y: 250, width: 30, height: 30)
        maximumValueLabel.text="100"
        maximumValueLabel.backgroundColor=UIColor.orange
        view.addSubview(maximumValueLabel)
        
        
        valueChangeLabel=UILabel()
        valueChangeLabel.frame=CGRect(x: 130, y: 300, width: 180, height: 50)
        valueChangeLabel.text="VALUE IS CHANGING"
        valueChangeLabel.backgroundColor=UIColor.orange
        view.addSubview(valueChangeLabel)
   
        
        button=UIButton()
        button.frame=CGRect(x: 140, y: 350, width: 150, height: 50)
        button.setTitle("CLICK HERE", for: UIControl.State.normal)
        button.backgroundColor=UIColor.black
        button.addTarget(self, action: #selector(createButton(tapButton:)), for: UIControl.Event.touchUpInside)
        view.addSubview(button)
        
        
        verticalSwitch=UISwitch()
        verticalSwitch.frame=CGRect(x: 320, y: 80, width: 100, height: 100)
        verticalSwitch.setOn(false, animated: true)
        verticalSwitch.addTarget(self, action: #selector(onSwitchChange(changedSwitch: )),for:UIControl.Event.valueChanged)
        view.addSubview(verticalSwitch)
        
        
        horizontalSwitch=UISwitch()
        horizontalSwitch.frame=CGRect(x: 320, y: 120, width: 100, height: 100)
        horizontalSwitch.setOn(false, animated: true)
        horizontalSwitch.addTarget(self, action: #selector(onSwitchChange(changedSwitch: )),for:UIControl.Event.valueChanged)
        view.addSubview(horizontalSwitch)
        
        

    }
    
    
    @objc func  onSwitchChange(changedSwitch:UISwitch)
    {
        
        
        if(changedSwitch == labelSwitch)
        {
        if(changedSwitch.isOn == true)
        {
            buttonSwitch.setOn(false, animated: true)
            switchSwitch.setOn(false, animated: true)

            print("when labelSwitch is ON then buttonSwitch and switchSwitch are  OFF" )
        }
        else
        {
           
            print("when labelSwitch is OFF then buttonSwitch and switchSwitch are  ON" )
        }
        }
        
        if(changedSwitch == buttonSwitch)
        {
        if(changedSwitch.isOn == true)
        {
            labelSwitch.setOn(false, animated: true)
            switchSwitch.setOn(false, animated: true)
            
            print("when buttonSwitch is ON then labelSwitch and switchSwitch are  OFF" )
        }
        else
        {
            
            print("when buttonSwitch is OFF then labelSwitch and switchSwitch are  ON" )
        }
        }
        
        if(changedSwitch == switchSwitch)
        {
        if(changedSwitch.isOn == true)
        {
            labelSwitch.setOn(false, animated: true)
            buttonSwitch.setOn(false, animated: true)
            
            print("when switchSwitch is ON then labelSwitch and buttonSwitch are  OFF" )
        }
        else
        {
            print("when switchSwitch is OFF then labelSwitch and buttonSwitch are  ON" )
        }
    }
        
        if(changedSwitch==verticalSwitch)
            
        {
            
            if(changedSwitch.isOn==true)
                
            {
                
                horizontalSwitch.setOn(false, animated:true)
                
                print("Vertical Switch is ON")
                
            }
                
            else{
                
                print("Vertical switch is OFF")
                
            }
            
        }
    }
    
    
    @objc func onSliderChange(changedSlider:UISlider)
    {
        
        
        print("slider changed to \(sliderChange.value)")
        
        var statusBar:String=String(Int(sliderChange.value))
    
        valueChangeLabel.text=statusBar
        stepperChange.value=Double(sliderChange.value)
        
    }
    
    @objc func onStepperChange(changedStepper:UIStepper)
    {
        sliderChange.setValue((Float(stepperChange.value)), animated: true)
        print("stepper changed to \(stepperChange.value)")
        
        var statusBar:String=String(Int(stepperChange.value))
        valueChangeLabel.text=statusBar
        stepperChange.addTarget(self , action: #selector(createButton(tapButton:)), for: UIControl.Event.valueChanged)

       
        
    }
    
    
    @objc func createButton(tapButton:UIButton)
    {
        for val  in labelSwitchArray
        {
            val.removeFromSuperview()
        }
        
        for val in buttonSwitchArray
        {
            val.removeFromSuperview()
        }
        
        for val in switchSwitchArray
        {
            val.removeFromSuperview()
        }
        
        let value = Int(sliderChange.value)
        if(labelSwitch.isOn==true && horizontalSwitch.isOn==true)
        {
            var xValue:UInt16 = 20
            var yValue:UInt16 = 390

        
        for i in 1...value
        {
            
            if(i==8 || i==15 || i==22 || i==29 || i==36 || i==43 || i==50 || i==57 || i==64 || i==71 || i==78 || i==85 || i==92 || i==97 || i==100)
            {
                xValue=20
                yValue=yValue+50
            
                    createLabel=UILabel()
                    createLabel.frame=CGRect(x: Int(xValue), y: Int(yValue), width: 50, height: 50)
                    createLabel.text="\(i)"
                    createLabel.backgroundColor=UIColor.green
                    view.addSubview(createLabel)
                    labelSwitchArray.append(createLabel)
                }
            
            createLabel=UILabel()
            createLabel.frame=CGRect(x: Int(xValue), y: Int(yValue), width: 50, height: 50)
            createLabel.text="\(i)"
            xValue=xValue+50
            createLabel.backgroundColor=UIColor.green
            view.addSubview(createLabel)
            labelSwitchArray.append(createLabel)
            
            }
           
        }
            
        

    if(buttonSwitch.isOn==true && horizontalSwitch.isOn==true)
    {
    var xValue:UInt16 = 20
    var yValue:UInt16 = 390
    
    
    for i in 1...value
    {
    
    if(i==8 || i==15 || i==22 || i==29 || i==36 || i==43 || i==50 || i==57 || i==64 || i==71 || i==78 || i==85 || i==92 || i==97 || i==100)
    {
    xValue=20
    yValue=yValue+50
    
    createButton=UIButton()
    createButton.frame=CGRect(x: Int(xValue), y: Int(yValue), width: 50, height: 50)
    createButton.setTitle("\(i)", for: UIControl.State.normal)
    createButton.backgroundColor=UIColor.yellow
    view.addSubview(self.createButton)
    buttonSwitchArray.append(createButton)
    }
    
    createButton=UIButton()
    createButton.frame=CGRect(x: Int(xValue), y: Int(yValue), width: 50, height: 50)
    createButton.setTitle("\(i)", for: UIControl.State.normal)
    xValue=xValue+50
    createButton.backgroundColor=UIColor.yellow
    view.addSubview(createButton)
    buttonSwitchArray.append(createButton)
    
    }
    
    }
        
    
    if(switchSwitch.isOn==true && horizontalSwitch.isOn==true)
    {
    var xValue:UInt16 = 20
    var yValue:UInt16 = 400
    
    
    for i in 1...value
    {
    
    if(i==8 || i==15 || i==22 || i==29 || i==36 || i==43 || i==50 || i==57 || i==64 || i==71 || i==78 || i==85 || i==92 || i==97 || i==100)
    {
    xValue=20
    yValue=yValue+50
    
    createSwitch=UISwitch()
    createSwitch.frame=CGRect(x: Int(xValue), y: Int(yValue), width: 50, height: 50)
    createSwitch.setOn(true, animated: true)
    createSwitch.onTintColor=UIColor.cyan
    createSwitch.tintColor=UIColor.brown
    createSwitch.thumbTintColor=UIColor.yellow
    view.addSubview(self.createSwitch)
    switchSwitchArray.append(createSwitch)
    }
    
    createSwitch=UISwitch()
    createSwitch.frame=CGRect(x: Int(xValue), y: Int(yValue), width: 50, height: 50)
    createSwitch.setOn(true, animated: true)
    xValue=xValue+50
    createSwitch.onTintColor=UIColor.cyan
    createSwitch.tintColor=UIColor.brown
    createSwitch.thumbTintColor=UIColor.yellow
    view.addSubview(createSwitch)
    switchSwitchArray.append(createSwitch)
    
    }
    
    }
    
if(labelSwitch.isOn==true && verticalSwitch.isOn==true)
    
{
    
    var labelx:UInt16=20
    
    var labely:UInt16=400
    
    for i in 1...value
        
    {
     
        if(i==11 || i==21 || i==31 || i==41 || i==51 || i==61 || i==71 || i==81 || i==91 ||  i==101 )
            
        {
         
            //  labelx=30
            
            labelx=labelx+60
            
            labely=400
            
            
            labelVerticalSwitch=UILabel()
            
            labelVerticalSwitch.frame=CGRect(x: Int(labelx), y: Int(labely), width: 30, height: 30)
            
            labelVerticalSwitch.text="\(i)"
            
            labelVerticalSwitch.backgroundColor=UIColor.green
            
            labelVerticalSwitch.textColor=UIColor.red
            
            view.addSubview(labelVerticalSwitch)
            
            labelSwitchArray.append(labelVerticalSwitch)
            
            print(i)
            
        }
        
        labelVerticalSwitch=UILabel()
        
        labelVerticalSwitch.frame=CGRect(x: Int(labelx), y: Int(labely), width: 30, height: 30)
        
        labelVerticalSwitch.text="\(i)"
        
        labelVerticalSwitch.backgroundColor=UIColor.green
        
        labelVerticalSwitch.textColor=UIColor.red
        
        labely=labely+50
        
        view.addSubview(labelVerticalSwitch)
        
        labelSwitchArray.append(labelVerticalSwitch)
       
    }
    
}

        if(buttonSwitch.isOn==true && verticalSwitch.isOn==true)
            
        {
           
            var labelx:UInt16=20
            
            var labely:UInt16=400
            
            for i in 1...value
                
            {
              
                if(i==11 || i==21 || i==31 || i==41 || i==51 || i==61 || i==71 || i==81 || i==91 ||  i==101 )
                    
                {
                    
                    labelx=labelx+60
                    
                    labely=400
                    
                    buttonVerticalSwitch=UIButton()
                    
                    buttonVerticalSwitch.frame=CGRect(x: Int(labelx), y: Int(labely), width: 30, height: 30)
                    
                    buttonVerticalSwitch.setTitle("\(i)", for: UIControl.State.normal)
                    
                    buttonVerticalSwitch.backgroundColor=UIColor.green
                    
                    
                    
                    view.addSubview(buttonVerticalSwitch)
                    
                    buttonSwitchArray.append(buttonVerticalSwitch)
                    
                    print(i)
                    
                }
                
                buttonVerticalSwitch=UIButton()
                
                buttonVerticalSwitch.frame=CGRect(x: Int(labelx), y: Int(labely), width: 30, height: 30)
                
                buttonVerticalSwitch.setTitle("\(i)", for: UIControl.State.normal)
                
                buttonVerticalSwitch.backgroundColor=UIColor.green
                
                labely=labely+50
                
                view.addSubview(buttonVerticalSwitch)
                
                buttonSwitchArray.append(buttonVerticalSwitch)
                
            }
            
        }
        
        if(switchSwitch.isOn==true && verticalSwitch.isOn==true)
            
        {
           
            var labelx:UInt16=20
            
            var labely:UInt16=400
            
            for i in 1...value
                
            {
               
                if(i==11 || i==21 || i==31 || i==41 || i==51 || i==61 || i==71 || i==81 || i==91 ||  i==101 )
                    
                {
                    
                    labelx=labelx+60
                    
                    labely=400
                    
                    switchVerticalSwitch=UISwitch()
                    
                    switchVerticalSwitch.frame=CGRect(x: Int(labelx), y: Int(labely), width: 30, height: 30)
                    
                    switchVerticalSwitch.backgroundColor=UIColor.yellow
                    
                    switchVerticalSwitch.setOn(true, animated: true)
                    
                    view.addSubview(switchVerticalSwitch)
                    
                    switchSwitchArray.append(switchVerticalSwitch)
                    
                    print(i)
                    
                }
                
                switchVerticalSwitch=UISwitch()
                
                switchVerticalSwitch.frame=CGRect(x: Int(labelx), y: Int(labely), width: 30, height: 30)
                
                switchVerticalSwitch.backgroundColor=UIColor.yellow
                
                switchVerticalSwitch.setOn(true, animated: true)
                
                labely=labely+50
                
                view.addSubview(switchVerticalSwitch)
                
                switchSwitchArray.append(switchVerticalSwitch)
                
            }
            
            
        }
        
    
    }
    
}

