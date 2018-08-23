//
//  ClockController.swift
//
//  Created by Kevin Sawicke on 5/11/18.
//  Copyright © 2018 Kevin Sawicke. All rights reserved.
//

import UIKit

class ClockController: UIViewController {
    
    let defaultFontSize = 30
    var timeTextView: UITextView = {
        let screenSize: CGRect = UIScreen.main.bounds
        
        // sets time to be 30% screen height
        let textView = UITextView(frame: CGRect(x: 0.0, y: 20.0, width: screenSize.width, height: (screenSize.height - 0.0) * 0.30))
        
        return textView
    }()
    
    var postTimeTextView: UITextView = {
        let screenSize: CGRect = UIScreen.main.bounds
        
        // sets time to be 10% screen height
        let textView = UITextView(frame: CGRect(x: 0.0, y: (((screenSize.height - 0.0) * 0.30) + 20), width: screenSize.width, height: (screenSize.height - 0.0) * 0.10))
        
        return textView
    }()
    
    var dateTextView: UITextView = {
        let screenSize: CGRect = UIScreen.main.bounds
        
        // sets time to be 10% screen height
        let textView = UITextView(frame: CGRect(x: 0.0, y: (((screenSize.height - 0.0) * 0.40) + 20), width: screenSize.width, height: (screenSize.height - 0.0) * 0.10))
        
        return textView
    }()
    
    var timeZoneTextView: UITextView = {
        let screenSize: CGRect = UIScreen.main.bounds
        
        // sets time to be 10% screen height
        let textView = UITextView(frame: CGRect(x: 0.0, y: (((screenSize.height - 0.0) * 0.50) + 20), width: screenSize.width, height: (screenSize.height - 0.0) * 0.10))
        
        return textView
    }()
    
    var spacer1TextView: UITextView = {
        let screenSize: CGRect = UIScreen.main.bounds
        
        // sets time to be 10% screen height
        let textView = UITextView(frame: CGRect(x: 0.0, y: (((screenSize.height - 0.0) * 0.60) + 20), width: screenSize.width, height: (screenSize.height - 0.0) * 0.30))
        
        return textView
    }()

    var buttonsTextView: UITextView = {
        let screenSize: CGRect = UIScreen.main.bounds
        
        // sets time to be 10% screen height
        let textView = UITextView(frame: CGRect(x: 0.0, y: (((screenSize.height - 0.0) * 0.90) - 20), width: screenSize.width, height: (screenSize.height - 0.0) * 0.10))
        
        return textView
    }()
    
    var themeInfo: [Int:[String:String]] = [
        // Wood
        0: ["background": "image", "bgImage": "1", "fontColor": "white", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        1: ["background": "image", "bgImage": "2", "fontColor": "black", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        2: ["background": "image", "bgImage": "3", "fontColor": "gray", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        3: ["background": "image", "bgImage": "4", "fontColor": "darkBlue", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        4: ["background": "image", "bgImage": "5", "fontColor": "black", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        5: ["background": "image", "bgImage": "6", "fontColor": "white", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        6: ["background": "image", "bgImage": "7", "fontColor": "black", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        7: ["background": "image", "bgImage": "8", "fontColor": "white", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        8: ["background": "image", "bgImage": "9", "fontColor": "bubbleGum", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        
        // Stone
        9: ["background": "image", "bgImage": "10", "fontColor": "neonGreen", "font": "custom", "fontName": "Neon Tubes 2", "fontEffect": "glow"],
        10: ["background": "image", "bgImage": "11", "fontColor": "neonYellow", "font": "custom", "fontName": "Neon Tubes 2", "fontEffect": "glow"],
        11: ["background": "image", "bgImage": "12", "fontColor": "neonLightBlue", "font": "custom", "fontName": "Neon Tubes 2", "fontEffect": "glow"],
        12: ["background": "image", "bgImage": "13", "fontColor": "neonGreen", "font": "custom", "fontName": "Neon Tubes 2", "fontEffect": "glow"],
        13: ["background": "image", "bgImage": "14", "fontColor": "orange", "font": "custom", "fontName": "Neon Tubes 2", "fontEffect": "glow"],
        14: ["background": "image", "bgImage": "15", "fontColor": "neonPurple", "font": "custom", "fontName": "Neon Tubes 2", "fontEffect": "glow"],
        15: ["background": "image", "bgImage": "16", "fontColor": "red", "font": "custom", "fontName": "Neon Tubes 2", "fontEffect": "glow"],
        16: ["background": "image", "bgImage": "17", "fontColor": "neonYellow", "font": "custom", "fontName": "Neon Tubes 2", "fontEffect": "glow"],
        17: ["background": "image", "bgImage": "18", "fontColor": "neonGreen", "font": "custom", "fontName": "Neon Tubes 2", "fontEffect": "glow"],
        
        // Night
        18: ["background": "image", "bgImage": "19", "fontColor": "red", "font": "custom", "fontName": "lcddot", "fontEffect": "glow"],
        19: ["background": "image", "bgImage": "20", "fontColor": "neonLightBlue", "font": "custom", "fontName": "DS-Digital", "fontEffect": "glow"],
        20: ["background": "image", "bgImage": "21", "fontColor": "neonLightBlue", "font": "custom", "fontName": "DS-Digital", "fontEffect": "glow"],
        21: ["background": "image", "bgImage": "22", "fontColor": "neonGreen", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        22: ["background": "image", "bgImage": "23", "fontColor": "neonPurple", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        23: ["background": "image", "bgImage": "24", "fontColor": "neonPurple", "font": "custom", "fontName": "DS-Digital", "fontEffect": "none"],
        24: ["background": "image", "bgImage": "25", "fontColor": "white", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        25: ["background": "image", "bgImage": "26", "fontColor": "orange", "font": "custom", "fontName": "lcddot", "fontEffect": "glow"],
        26: ["background": "image", "bgImage": "27", "fontColor": "neonYellow", "font": "custom", "fontName": "lcddot", "fontEffect": "glow"],
        
        // Blues
        27: ["background": "image", "bgImage": "28", "fontColor": "white", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        28: ["background": "image", "bgImage": "29", "fontColor": "neonLightBlue", "font": "custom", "fontName": "lcddot", "fontEffect": "glow"],
        29: ["background": "image", "bgImage": "30", "fontColor": "white", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        30: ["background": "image", "bgImage": "31", "fontColor": "neonGreen", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        31: ["background": "image", "bgImage": "32", "fontColor": "neonYellow", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        32: ["background": "image", "bgImage": "33", "fontColor": "gray", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        33: ["background": "image", "bgImage": "34", "fontColor": "white", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        34: ["background": "image", "bgImage": "35", "fontColor": "neonYellow", "font": "custom", "fontName": "lcddot", "fontEffect": "glow"],
        35: ["background": "image", "bgImage": "36", "fontColor": "bubbleGum", "font": "custom", "fontName": "Neon Tubes 2", "fontEffect": "glow"],
        
        // Warmth
        36: ["background": "image", "bgImage": "37", "fontColor": "black", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        37: ["background": "image", "bgImage": "38", "fontColor": "white", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        38: ["background": "image", "bgImage": "39", "fontColor": "gray", "font": "custom", "fontName": "DS-Digital", "fontEffect": "none"],
        39: ["background": "image", "bgImage": "40", "fontColor": "gray", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        40: ["background": "image", "bgImage": "41", "fontColor": "black", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        41: ["background": "image", "bgImage": "42", "fontColor": "gray", "font": "custom", "fontName": "Neon Tubes 2", "fontEffect": "glow"],
        42: ["background": "image", "bgImage": "43", "fontColor": "gray", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        43: ["background": "image", "bgImage": "44", "fontColor": "bubbleGum", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        44: ["background": "image", "bgImage": "45", "fontColor": "gray", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        
        // Coffee
        45: ["background": "image", "bgImage": "46", "fontColor": "white", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        46: ["background": "image", "bgImage": "47", "fontColor": "neonLightBlue", "font": "custom", "fontName": "lcddot", "fontEffect": "glow"],
        47: ["background": "image", "bgImage": "48", "fontColor": "neonYellow", "font": "custom", "fontName": "DS-Digital", "fontEffect": "glow"],
        48: ["background": "image", "bgImage": "49", "fontColor": "orange", "font": "custom", "fontName": "lcddot", "fontEffect": "glow"],
        49: ["background": "image", "bgImage": "50", "fontColor": "white", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        50: ["background": "image", "bgImage": "51", "fontColor": "black", "font": "custom", "fontName": "Orbitron-Bold", "fontEffect": "none"],
        51: ["background": "image", "bgImage": "52", "fontColor": "white", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        52: ["background": "image", "bgImage": "53", "fontColor": "orange", "font": "custom", "fontName": "lcddot", "fontEffect": "glow"],
        53: ["background": "image", "bgImage": "54", "fontColor": "black", "font": "custom", "fontName": "lcddot", "fontEffect": "none"],
        ]
    var currentTheme : Int = 0
    
    var regions: Array = [0, 1, 2, 3, 4]
    var regionData: [[String: String]] = [
        ["regionName": "America", "description": "US"],
        ["regionName": "America24", "description": "US (24 HR)"],
        ["regionName": "France", "description": "France"],
        ["regionName": "Tanzania", "description": "Swahili"],
        ["regionName": "Congo", "description": "Swahili (Congo)"]
    ]
    var currentRegion : Int = 4
    var currentRegionDescription : String = ""
    var timeFormat: String = ""
    
    @IBOutlet weak var timeSlotBeg: UILabel!
    @IBOutlet weak var timeSlotH1: UILabel!
    @IBOutlet weak var timeSlotH2: UILabel!
    @IBOutlet weak var timeSlotSep1: UILabel!
    @IBOutlet weak var timeSlotM1: UILabel!
    @IBOutlet weak var timeSlotM2: UILabel!
    @IBOutlet weak var timeSlotSep2: UILabel!
    @IBOutlet weak var timeSlotS1: UILabel!
    @IBOutlet weak var timeSlotS2: UILabel!
    @IBOutlet weak var timeSlotSep3: UILabel!
    @IBOutlet weak var dateSlot1: UILabel!
    @IBOutlet weak var dateSlot2: UILabel!
    @IBOutlet weak var dateSlot3: UILabel!
    @IBOutlet weak var dateSlot4: UILabel!
    @IBOutlet weak var timeZoneSlot: UILabel!
    @IBOutlet weak var timeSlotEnd: UILabel!
    @IBOutlet weak var currentRegionSelected: UILabel!
    
    //currentRegionSelected
    
    @IBAction func onClickToggleTheme(_ sender: Any) {
        if currentTheme == themeInfo.count - 1 {
            currentTheme = 0
        } else {
            currentTheme += 1
        }
        
        updateTheme()
    }
    
    @IBAction func onClickToggleRegion(_ sender: Any) {
        if currentRegion == regions.count - 1 {
            currentRegion = 0
        } else {
            currentRegion += 1
        }
        
        updateClock()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
//        let orient = UIApplication.shared.statusBarOrientation
//
//        switch orient {
//
//            case .portrait:
//
//                print("Portrait")
//
//            case .landscapeLeft,.landscapeRight :
//
//                print("Landscape")
//
//            default:
//
//                print("Anything But Portrait")
//        }
        
        self.view.subviews.forEach({ $0.removeFromSuperview() })
        //            self.view.addSubview(self.timeTextView)
        self.setupLayout()
        self.updateClock()
    }
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//
//        coordinator.animate(alongsideTransition: { (UIViewControllerTransitionCoordinatorContext) -> Void in
//
//            let orient = UIApplication.shared.statusBarOrientation
//
//            switch orient {
//
//            case .portrait:
//
//                print("Portrait")
//
//            case .landscapeLeft,.landscapeRight :
//
//                print("Landscape")
//
//            default:
//
//                print("Anything But Portrait")
//            }
//
//        }, completion: { (UIViewControllerTransitionCoordinatorContext) -> Void in
//            //refresh view once rotation is completed not in will transition as it returns incorrect frame size.Refresh here
//
//            self.view.subviews.forEach({ $0.removeFromSuperview() })
////            self.view.addSubview(self.timeTextView)
//            self.setupLayout()
//            self.updateClock()
//        })
//        super.viewWillTransition(to: size, with: coordinator)
//
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ClockController.updateClock), userInfo: nil, repeats: true)
    }
    
    private func setupLayout() {
        let screenSize: CGRect = UIScreen.main.bounds
        
        // TIME: 30% screen height
        timeTextView = UITextView(frame: CGRect(x: 0.0, y: 20.0, width: screenSize.width, height: screenSize.height * 0.30))
        
        timeTextView.textAlignment = NSTextAlignment.center
        timeTextView.textColor = UIColor.white
        timeTextView.backgroundColor = UIColor.black
        
        view.addSubview(timeTextView)
        
        timeTextView.text = "12 h 00"
        timeTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        timeTextView.heightAnchor.constraint(equalToConstant: timeTextView.frame.size.height).isActive = true
        timeTextView.isScrollEnabled = false
        timeTextView.isEditable = false
        timeTextView.contentInsetAdjustmentBehavior = .never
        
        var fontSize = defaultFontSize
        
        while fontSize <= 100 {
            print(timeTextView.contentSize.height)
            print(timeTextView.frame.size.height)
            
            print(timeTextView.contentSize.width)
            print(timeTextView.frame.size.width)
            
            print("LINE HEIGHT: \(timeTextView.font!.lineHeight)")
            print(numberOfLines(textView: timeTextView))
            print("#")
            
            fontSize += 1
        }
        
        timeTextView.font = UIFont.systemFont(ofSize: (CGFloat(fontSize)), weight: UIFont.Weight(rawValue: 400))
        timeTextView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
        
        // PM: 10% screen height
        postTimeTextView = UITextView(frame: CGRect(x: 0.0, y: (((screenSize.height - 0.0) * 0.30) + 20), width: screenSize.width, height: (screenSize.height - 0.0) * 0.10))
        
        postTimeTextView.textAlignment = NSTextAlignment.center
        postTimeTextView.textColor = UIColor.white
        postTimeTextView.backgroundColor = UIColor.black
        
        view.addSubview(postTimeTextView)
        
        postTimeTextView.text = "PM"
        postTimeTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        postTimeTextView.heightAnchor.constraint(equalToConstant: postTimeTextView.frame.size.height).isActive = true
        postTimeTextView.isScrollEnabled = false
        postTimeTextView.isEditable = false
        postTimeTextView.contentInsetAdjustmentBehavior = .never
        
        var postTimeTextFontSize = CGFloat(fontSize) * 0.25
        postTimeTextFontSize.round()
        postTimeTextView.font = UIFont.systemFont(ofSize: (CGFloat(postTimeTextFontSize)), weight: UIFont.Weight(rawValue: 200))
        postTimeTextView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
        
        // DATE: 10% screen height
        dateTextView = UITextView(frame: CGRect(x: 0.0, y: (((screenSize.height - 0.0) * 0.40) + 20), width: screenSize.width, height: (screenSize.height - 0.0) * 0.10))
        
        dateTextView.textAlignment = NSTextAlignment.center
        dateTextView.textColor = UIColor.white
        dateTextView.backgroundColor = UIColor.black
        
        view.addSubview(dateTextView)
        
        dateTextView.text = "Wednesday, August 22, 2018"
        dateTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dateTextView.heightAnchor.constraint(equalToConstant: dateTextView.frame.size.height).isActive = true
        dateTextView.isScrollEnabled = false
        dateTextView.isEditable = false
        dateTextView.contentInsetAdjustmentBehavior = .never
        
        var dateTextFontSize = CGFloat(fontSize) * 0.25
        dateTextFontSize.round()
        dateTextView.font = UIFont.systemFont(ofSize: (CGFloat(dateTextFontSize)), weight: UIFont.Weight(rawValue: 200))
        dateTextView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
        
        // TIME ZONE: 10% screen height
        timeZoneTextView = UITextView(frame: CGRect(x: 0.0, y: (((screenSize.height - 0.0) * 0.50) + 20), width: screenSize.width, height: (screenSize.height - 0.0) * 0.10))
        
        timeZoneTextView.textAlignment = NSTextAlignment.center
        timeZoneTextView.textColor = UIColor.white
        timeZoneTextView.backgroundColor = UIColor.black
        
        view.addSubview(timeZoneTextView)
        
        timeZoneTextView.text = "Mountain Standard Time"
        timeZoneTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        timeZoneTextView.heightAnchor.constraint(equalToConstant: timeZoneTextView.frame.size.height).isActive = true
        timeZoneTextView.isScrollEnabled = false
        timeZoneTextView.isEditable = false
        timeZoneTextView.contentInsetAdjustmentBehavior = .never
        
        var timeZoneTextFontSize = CGFloat(fontSize) * 0.25
        timeZoneTextFontSize.round()
        timeZoneTextView.font = UIFont.systemFont(ofSize: (CGFloat(timeZoneTextFontSize)), weight: UIFont.Weight(rawValue: 200))
        timeZoneTextView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
        
        // SPACER: 30% screen height
        spacer1TextView = UITextView(frame: CGRect(x: 0.0, y: (((screenSize.height - 0.0) * 0.60) + 20), width: screenSize.width, height: (screenSize.height - 0.0) * 0.30))
        
        spacer1TextView.textAlignment = NSTextAlignment.center
        spacer1TextView.textColor = UIColor.white
        spacer1TextView.backgroundColor = UIColor.black
        
        view.addSubview(spacer1TextView)
        
        spacer1TextView.text = ""
        spacer1TextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        spacer1TextView.heightAnchor.constraint(equalToConstant: spacer1TextView.frame.size.height).isActive = true
        spacer1TextView.isScrollEnabled = false
        spacer1TextView.isEditable = false
        spacer1TextView.contentInsetAdjustmentBehavior = .never
        
        var spacer1TextFontSize = CGFloat(fontSize) * 0.25
        spacer1TextFontSize.round()
        spacer1TextView.font = UIFont.systemFont(ofSize: (CGFloat(spacer1TextFontSize)), weight: UIFont.Weight(rawValue: 200))
        spacer1TextView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
        
        // BUTTONS: 10% screen height
        buttonsTextView = UITextView(frame: CGRect(x: 0.0, y: (((screenSize.height - 0.0) * 0.90) - 20), width: screenSize.width, height: (screenSize.height - 0.0) * 0.10))
        
        buttonsTextView.textAlignment = NSTextAlignment.left
        buttonsTextView.textColor = UIColor.white
        buttonsTextView.backgroundColor = UIColor.black
        
        view.addSubview(buttonsTextView)
        
        buttonsTextView.text = "BUTTONS!"
        buttonsTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonsTextView.heightAnchor.constraint(equalToConstant: buttonsTextView.frame.size.height).isActive = true
        buttonsTextView.isScrollEnabled = false
        buttonsTextView.isEditable = false
        buttonsTextView.contentInsetAdjustmentBehavior = .never
        
        var buttonsTextFontSize = CGFloat(fontSize) * 0.25
        buttonsTextFontSize.round()
        buttonsTextView.font = UIFont.systemFont(ofSize: (CGFloat(buttonsTextFontSize)), weight: UIFont.Weight(rawValue: 200))
        buttonsTextView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
    }
    
    func numberOfLines(textView: UITextView) -> Int {
        let layoutManager = textView.layoutManager
        let numberOfGlyphs = layoutManager.numberOfGlyphs
        var lineRange: NSRange = NSMakeRange(0, 1)
        var index = 0
        var numberOfLines = 0
        
        while index < numberOfGlyphs {
            layoutManager.lineFragmentRect(forGlyphAt: index, effectiveRange: &lineRange)
            index = NSMaxRange(lineRange)
            numberOfLines += 1
        }
        return numberOfLines
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func updateClock() {
        // https://www.appcoda.com/nsdate/
        // http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL_web
        // http://unicode.org/reports/tr35/tr35-6.html#Date_Format_Patterns
        
        let currentDate = NSDate()
        let dateFormatter = DateFormatter()
        
        timeFormat = regionData[currentRegion]["regionName"]!
        currentRegionDescription = regionData[currentRegion]["description"]!
        
        if timeFormat != "France" {
//            timeSlotSep1.frame.size.width = 15
        }
        
        switch(timeFormat) {
        case "America", "America24":
            dateFormatter.locale = NSLocale(localeIdentifier: "en_US") as Locale?
            
            switch(timeFormat) {
            case "America":
                dateFormatter.dateFormat = "hh"
                
            case "America24":
                dateFormatter.dateFormat = "HH"
                
            default:
                dateFormatter.dateFormat = "hh"
            }
            
            let timeInHours = dateFormatter.string(from: currentDate as Date)
            let hoursDigitIndex1 = timeInHours.index(timeInHours.startIndex, offsetBy: 0)
            let hoursDigitIndex2 = timeInHours.index(timeInHours.startIndex, offsetBy: 1)
            let timeHoursDigit1: String = "\(timeInHours[hoursDigitIndex1])"
            let timeHoursDigit2: String = "\(timeInHours[hoursDigitIndex2])"
            
            dateFormatter.dateFormat = "mm"
            let timeInMinutes = dateFormatter.string(from: currentDate as Date)
            let minutesDigitIndex1 = timeInMinutes.index(timeInMinutes.startIndex, offsetBy: 0)
            let minutesDigitIndex2 = timeInMinutes.index(timeInMinutes.startIndex, offsetBy: 1)
            let timeMinutesDigit1: String = "\(timeInMinutes[minutesDigitIndex1])"
            let timeMinutesDigit2: String = "\(timeInMinutes[minutesDigitIndex2])"
            
            dateFormatter.dateFormat = "ss"
            let timeInSeconds = dateFormatter.string(from: currentDate as Date)
            let secondsDigitIndex1 = timeInSeconds.index(timeInSeconds.startIndex, offsetBy: 0)
            let secondsDigitIndex2 = timeInSeconds.index(timeInSeconds.startIndex, offsetBy: 1)
            let timeSecondsDigit1: String = "\(timeInSeconds[secondsDigitIndex1])"
            let timeSecondsDigit2: String = "\(timeInSeconds[secondsDigitIndex2])"
            
            dateFormatter.dateFormat = "a"
            var timeEnding = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "EEE"
            let thisDayofWeek = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "MMM"
            let thisMonth = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "d"
            let thisDayNumber = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "yyyy"
            let thisYear = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "zzz"
            let thisTimezone = dateFormatter.string(from: currentDate as Date)
            
//            timeSlotBeg.text = ""
//            timeSlotH1.text = timeHoursDigit1
//            timeSlotH2.text = timeHoursDigit2
//            timeSlotSep1.text = ":"
//            timeSlotM1.text = timeMinutesDigit1
//            timeSlotM2.text = timeMinutesDigit2
//
            if(timeFormat == "America24") {
                timeEnding = ""
            }
//
//            timeSlotEnd.text = " \(timeEnding)"
//
//            dateSlot1.text = "\(thisDayofWeek)"
//            dateSlot2.text = " \(thisMonth)"
//            dateSlot3.text = " \(thisDayNumber), "
//            dateSlot4.text = "\(thisYear)"
//
//            timeZoneSlot.text = "\(thisTimezone)"
//
//            currentRegionSelected.text = currentRegionDescription
            
            timeTextView.text = "\(timeHoursDigit1)\(timeHoursDigit2):\(timeMinutesDigit1)\(timeMinutesDigit2)"
            
            postTimeTextView.text = "\(timeEnding)"
            
            dateTextView.text = "\(thisDayofWeek) \(thisMonth) \(thisDayNumber), \(thisYear)"
            
            timeZoneTextView.text = "\(thisTimezone)"
            
        case "France":
            dateFormatter.locale = NSLocale(localeIdentifier: "fr_FR") as Locale?
            
            dateFormatter.dateFormat = "HH"
            let timeInHours = dateFormatter.string(from: currentDate as Date)
            let hoursDigitIndex1 = timeInHours.index(timeInHours.startIndex, offsetBy: 0)
            let hoursDigitIndex2 = timeInHours.index(timeInHours.startIndex, offsetBy: 1)
            let timeHoursDigit1: String = "\(timeInHours[hoursDigitIndex1])"
            let timeHoursDigit2: String = "\(timeInHours[hoursDigitIndex2])"
            
            dateFormatter.dateFormat = "mm"
            let timeInMinutes = dateFormatter.string(from: currentDate as Date)
            let minutesDigitIndex1 = timeInMinutes.index(timeInMinutes.startIndex, offsetBy: 0)
            let minutesDigitIndex2 = timeInMinutes.index(timeInMinutes.startIndex, offsetBy: 1)
            let timeMinutesDigit1: String = "\(timeInMinutes[minutesDigitIndex1])"
            let timeMinutesDigit2: String = "\(timeInMinutes[minutesDigitIndex2])"
            
            dateFormatter.dateFormat = "ss"
            let timeInSeconds = dateFormatter.string(from: currentDate as Date)
            let secondsDigitIndex1 = timeInSeconds.index(timeInSeconds.startIndex, offsetBy: 0)
            let secondsDigitIndex2 = timeInSeconds.index(timeInSeconds.startIndex, offsetBy: 1)
            let timeSecondsDigit1: String = "\(timeInSeconds[secondsDigitIndex1])"
            let timeSecondsDigit2: String = "\(timeInSeconds[secondsDigitIndex2])"
            
            let timeEnding = ""
            
            dateFormatter.dateFormat = "EEEE"
            let thisDayofWeek = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "MMMM"
            let thisMonth = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "d"
            let thisDayNumber = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "yyyy"
            let thisYear = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "zzz"
            let thisTimezone = dateFormatter.string(from: currentDate as Date)
            
//            timeSlotBeg.text = ""
//            timeSlotH1.text = timeHoursDigit1
//            timeSlotH2.text = timeHoursDigit2
//            timeSlotSep1.text = "h"
//            timeSlotM1.text = timeMinutesDigit1
//            timeSlotM2.text = timeMinutesDigit2
////            timeSlotSep2.text = " m "
////            timeSlotS1.text = timeSecondsDigit1
////            timeSlotS2.text = timeSecondsDigit2
////            timeSlotSep3.text = " s"
//            timeSlotEnd.text = " \(timeEnding)"
//
//            dateSlot1.text = "\(thisDayofWeek)"
//            dateSlot2.text = " le \(thisDayNumber)"
//            dateSlot3.text = " \(thisMonth) "
//            dateSlot4.text = "\(thisYear)"
//
//            timeZoneSlot.text = "\(thisTimezone)"
//
//            currentRegionSelected.text = currentRegionDescription
            
            timeTextView.text = "\(timeHoursDigit1)\(timeHoursDigit2):\(timeMinutesDigit1)\(timeMinutesDigit2)"
            
            postTimeTextView.text = "\(timeEnding)"
            
            dateTextView.text = "\(thisDayofWeek) le \(thisDayNumber) \(thisMonth) \(thisYear)"
            
            timeZoneTextView.text = "\(thisTimezone)"
            
        case "Tanzania":
            dateFormatter.locale = NSLocale(localeIdentifier: "sw_TZ") as Locale?
            
            dateFormatter.dateFormat = "hh"
            var timeInHours = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "HH"
            let timeInHours24 = dateFormatter.string(from: currentDate as Date)
            
            switch(timeInHours) {
            case "07":
                timeInHours = "01"
                
            case "08":
                timeInHours = "02"
                
            case "09":
                timeInHours = "03"
                
            case "10":
                timeInHours = "04"
                
            case "11":
                timeInHours = "05"
                
            case "12":
                timeInHours = "06"
                
            case "01":
                timeInHours = "07"
                
            case "02":
                timeInHours = "08"
                
            case "03":
                timeInHours = "09"
                
            case "04":
                timeInHours = "10"
                
            case "05":
                timeInHours = "11"
                
            case "06":
                timeInHours = "12"
                
            default:
                timeInHours = "01"
            }
            
            let hoursDigitIndex1 = timeInHours.index(timeInHours.startIndex, offsetBy: 0)
            let hoursDigitIndex2 = timeInHours.index(timeInHours.startIndex, offsetBy: 1)
            let timeHoursDigit1: String = "\(timeInHours[hoursDigitIndex1])"
            let timeHoursDigit2: String = "\(timeInHours[hoursDigitIndex2])"
            
            dateFormatter.dateFormat = "mm"
            let timeInMinutes = dateFormatter.string(from: currentDate as Date)
            let minutesDigitIndex1 = timeInMinutes.index(timeInMinutes.startIndex, offsetBy: 0)
            let minutesDigitIndex2 = timeInMinutes.index(timeInMinutes.startIndex, offsetBy: 1)
            let timeMinutesDigit1: String = "\(timeInMinutes[minutesDigitIndex1])"
            let timeMinutesDigit2: String = "\(timeInMinutes[minutesDigitIndex2])"
            
            dateFormatter.dateFormat = "ss"
            let timeInSeconds = dateFormatter.string(from: currentDate as Date)
            let secondsDigitIndex1 = timeInSeconds.index(timeInSeconds.startIndex, offsetBy: 0)
            let secondsDigitIndex2 = timeInSeconds.index(timeInSeconds.startIndex, offsetBy: 1)
            let timeSecondsDigit1: String = "\(timeInSeconds[secondsDigitIndex1])"
            let timeSecondsDigit2: String = "\(timeInSeconds[secondsDigitIndex2])"
            
            dateFormatter.dateFormat = "a"
            
            var timeEnding = ""
            
            switch(timeInHours24) {
            case "05", "06", "07", "08", "09":
                timeEnding = " za asubuhi"
                
            case "10", "11", "12", "13", "14", "15":
                timeEnding = " za mchana"
                
            case "16", "17", "18":
                timeEnding = " za jioni"
                
            case "19", "20", "21", "22", "23", "00", "01", "02", "03", "04":
                timeEnding = " za usiku"
                
            default:
                timeEnding = " za asubuhi"
            }
            
            dateFormatter.dateFormat = "EEE"
            let thisDayofWeek = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "MMMM"
            let thisMonth = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "d"
            let thisDayNumber = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "yyyy"
            let thisYear = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "zzz"
            let thisTimezone = dateFormatter.string(from: currentDate as Date)
            
//            timeSlotBeg.text = "saa "
//            timeSlotH1.text = timeHoursDigit1
//            timeSlotH2.text = timeHoursDigit2
//            timeSlotSep1.text = ":"
//            timeSlotM1.text = timeMinutesDigit1
//            timeSlotM2.text = timeMinutesDigit2
////            timeSlotSep2.text = ":"
////            timeSlotS1.text = timeSecondsDigit1
////            timeSlotS2.text = timeSecondsDigit2
////            timeSlotSep3.text = ""
//            timeSlotEnd.text = " \(timeEnding)"
//
//            dateSlot1.text = "\(thisDayofWeek)"
//            dateSlot2.text = " \(thisMonth)"
//            dateSlot3.text = " \(thisDayNumber), "
//            dateSlot4.text = "\(thisYear)"
//
//            timeZoneSlot.text = "\(thisTimezone)"
//
//            currentRegionSelected.text = currentRegionDescription

            timeTextView.text = "\(timeHoursDigit1)\(timeHoursDigit2):\(timeMinutesDigit1)\(timeMinutesDigit2)"
            
            postTimeTextView.text = "\(timeEnding)"
            
            dateTextView.text = "\(thisDayofWeek) \(thisMonth) \(thisDayNumber), \(thisYear)"
            
            timeZoneTextView.text = "\(thisTimezone)"
            
        case "Congo":
            dateFormatter.locale = NSLocale(localeIdentifier: "swc_CD") as Locale?
            
            dateFormatter.dateFormat = "HH"
            let timeInHours = dateFormatter.string(from: currentDate as Date)
            let hoursDigitIndex1 = timeInHours.index(timeInHours.startIndex, offsetBy: 0)
            let hoursDigitIndex2 = timeInHours.index(timeInHours.startIndex, offsetBy: 1)
            let timeHoursDigit1: String = "\(timeInHours[hoursDigitIndex1])"
            let timeHoursDigit2: String = "\(timeInHours[hoursDigitIndex2])"
            
            dateFormatter.dateFormat = "mm"
            let timeInMinutes = dateFormatter.string(from: currentDate as Date)
            let minutesDigitIndex1 = timeInMinutes.index(timeInMinutes.startIndex, offsetBy: 0)
            let minutesDigitIndex2 = timeInMinutes.index(timeInMinutes.startIndex, offsetBy: 1)
            let timeMinutesDigit1: String = "\(timeInMinutes[minutesDigitIndex1])"
            let timeMinutesDigit2: String = "\(timeInMinutes[minutesDigitIndex2])"
            
            dateFormatter.dateFormat = "ss"
            let timeInSeconds = dateFormatter.string(from: currentDate as Date)
            let secondsDigitIndex1 = timeInSeconds.index(timeInSeconds.startIndex, offsetBy: 0)
            let secondsDigitIndex2 = timeInSeconds.index(timeInSeconds.startIndex, offsetBy: 1)
            let timeSecondsDigit1: String = "\(timeInSeconds[secondsDigitIndex1])"
            let timeSecondsDigit2: String = "\(timeInSeconds[secondsDigitIndex2])"
            var timeEnding = ""
            
            switch(timeInHours) {
            case "05", "06", "07", "08", "09":
                timeEnding = " za asubuhi"
                
            case "10", "11", "12", "13", "14", "15":
                timeEnding = " za mchana"
                
            case "16", "17", "18":
                timeEnding = " za jioni"
                
            case "19", "20", "21", "22", "23", "00", "01", "02", "03", "04":
                timeEnding = " za usiku"
                
            default:
                timeEnding = " za asubuhi"
            }
            
            dateFormatter.dateFormat = "EEEE"
            var thisDayofWeek = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "MM"
            let thisMonth = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "dd"
            let thisDayNumber = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "yyyy"
            let thisYear = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "zzz"
            let thisTimezone = dateFormatter.string(from: currentDate as Date)
            
            switch(thisDayofWeek) {
            case "Sunday":
                thisDayofWeek = "Siku ya Yenga"
                
            case "Monday":
                thisDayofWeek = "Siku ya Kwanza"
                
            case "Tuesday":
                thisDayofWeek = "Siku ya Pili"
                
            case "Wednesday":
                thisDayofWeek = "Siku ya Tatu"
                
            case "Thursday":
                thisDayofWeek = "Siku ya Ine"
                
            case "Friday":
                thisDayofWeek = "Siku ya Tano"
                
            case "Saturday":
                thisDayofWeek = "Siku ya Posho"
                
            default:
                thisDayofWeek = "Siku ya Kwanza"
            }
            
//            timeSlotBeg.text = "saa "
//            timeSlotH1.text = timeHoursDigit1
//            timeSlotH2.text = timeHoursDigit2
//            timeSlotSep1.text = ":"
//            timeSlotM1.text = timeMinutesDigit1
//            timeSlotM2.text = timeMinutesDigit2
////            timeSlotSep2.text = ":"
////            timeSlotS1.text = timeSecondsDigit1
////            timeSlotS2.text = timeSecondsDigit2
////            timeSlotSep3.text = ""
//            timeSlotEnd.text = " \(timeEnding)"
//
//            dateSlot1.text = "\(thisDayofWeek)"
//            dateSlot2.text = " \(thisDayNumber)"
//            dateSlot3.text = "/\(thisMonth)"
//            dateSlot4.text = "/\(thisYear)"
//
//            timeZoneSlot.text = "\(thisTimezone)"
//
//            currentRegionSelected.text = currentRegionDescription
            
            timeTextView.text = "\(timeHoursDigit1)\(timeHoursDigit2):\(timeMinutesDigit1)\(timeMinutesDigit2)"
            
            postTimeTextView.text = "\(timeEnding)"
            
            dateTextView.text = "\(thisDayofWeek) \(thisDayNumber)/\(thisMonth)/\(thisYear)"
            
            timeZoneTextView.text = "\(thisTimezone)"
            
        default:
            dateFormatter.dateFormat = "hh"
            let timeInHours = dateFormatter.string(from: currentDate as Date)
            let hoursDigitIndex1 = timeInHours.index(timeInHours.startIndex, offsetBy: 0)
            let hoursDigitIndex2 = timeInHours.index(timeInHours.startIndex, offsetBy: 1)
            let timeHoursDigit1: String = "\(timeInHours[hoursDigitIndex1])"
            let timeHoursDigit2: String = "\(timeInHours[hoursDigitIndex2])"
            
            dateFormatter.dateFormat = "mm"
            let timeInMinutes = dateFormatter.string(from: currentDate as Date)
            let minutesDigitIndex1 = timeInMinutes.index(timeInMinutes.startIndex, offsetBy: 0)
            let minutesDigitIndex2 = timeInMinutes.index(timeInMinutes.startIndex, offsetBy: 1)
            let timeMinutesDigit1: String = "\(timeInMinutes[minutesDigitIndex1])"
            let timeMinutesDigit2: String = "\(timeInMinutes[minutesDigitIndex2])"
            
            dateFormatter.dateFormat = "ss"
            let timeInSeconds = dateFormatter.string(from: currentDate as Date)
            let secondsDigitIndex1 = timeInSeconds.index(timeInSeconds.startIndex, offsetBy: 0)
            let secondsDigitIndex2 = timeInSeconds.index(timeInSeconds.startIndex, offsetBy: 1)
            let timeSecondsDigit1: String = "\(timeInSeconds[secondsDigitIndex1])"
            let timeSecondsDigit2: String = "\(timeInSeconds[secondsDigitIndex2])"
            
            dateFormatter.dateFormat = "a"
            var timeEnding = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "EEE"
            let thisDayofWeek = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "MMM"
            let thisMonth = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "d"
            let thisDayNumber = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "yyyy"
            let thisYear = dateFormatter.string(from: currentDate as Date)
            
            dateFormatter.dateFormat = "zzz"
            let thisTimezone = dateFormatter.string(from: currentDate as Date)
            
            if(timeFormat == "America24") {
                timeEnding = ""
            }
            
//            timeSlotBeg.text = ""
//            timeSlotH1.text = timeHoursDigit1
//            timeSlotH2.text = timeHoursDigit2
//            timeSlotSep1.text = ":"
//            timeSlotM1.text = timeMinutesDigit1
//            timeSlotM2.text = timeMinutesDigit2
//            timeSlotEnd.text = " \(timeEnding)"
//
//            dateSlot1.text = "\(thisDayofWeek)"
//            dateSlot2.text = " \(thisMonth)"
//            dateSlot3.text = " \(thisDayNumber), "
//            dateSlot4.text = "\(thisYear)"
//
//            timeZoneSlot.text = "\(thisTimezone)"
//
//            currentRegionSelected.text = currentRegionDescription
            
            timeTextView.text = "\(timeHoursDigit1)\(timeHoursDigit2):\(timeMinutesDigit1)\(timeMinutesDigit2)"
            
            postTimeTextView.text = "\(timeEnding)"
            
            dateTextView.text = "\(thisDayofWeek) \(thisMonth) \(thisDayNumber), \(thisYear)"
            
            timeZoneTextView.text = "\(thisTimezone)"
        }
    }
    
    func updateTheme() {
        let themeSettings = themeInfo[currentTheme] //themeData[currentTheme]
        
        //        debugPrint(themeInfo[currentTheme])
        
        if themeSettings!["background"] == "color" {
            updateBgColor(bgColor: themeSettings!["bgColor"]!)
        }
        
        if themeSettings!["background"] == "image" {
            let imageBackgroundName = "theme-background-\(themeSettings!["bgImage"]!)"
            updateBgImage(bgImage: imageBackgroundName)
        }
        
//        if themeSettings!["font"] == "custom" {
//            updateFont(font: themeSettings!["fontName"]!)
//        }
//
//        if themeSettings!["fontEffect"] == "glow" {
//            makeFontGlow(fontColor: themeSettings!["fontColor"]!)
//        } else {
//            makeFontNoGlow(fontColor: themeSettings!["fontColor"]!)
//        }
        
        updateFontColor(fontColor: themeSettings!["fontColor"]!)
    }
    
    func getUIColor(color: String) -> UIColor {
        var outputUIColor = UIColor(red: 66/255.0, green: 66/255.0, blue: 66/255.0, alpha: 1.0)
        
        switch(color) {
        case "neonYellow":
            outputUIColor = UIColor(red: 254/255.0, green: 228/255.0, blue: 2/255.0, alpha: 1.0)
            
        case "neonPink":
            outputUIColor = UIColor(red: 255/255.0, green: 64/255.0, blue: 255/255.0, alpha: 1.0)
            
        case "neonGreen":
            outputUIColor = UIColor(red: 105/255.0, green: 245/255.0, blue: 18/255.0, alpha: 1.0)
            
        case "neonPurple":
            outputUIColor = UIColor(red: 189/255.0, green: 109/255.0, blue: 246/255.0, alpha: 1.0)
            
        case "neonLightBlue":
            outputUIColor = UIColor(red: 125/255.0, green: 232/255.0, blue: 246/255.0, alpha: 1.0)
            
        case "bubbleGum":
            outputUIColor = UIColor(red: 255/255.0, green: 47/255.0, blue: 146/255.0, alpha: 1.0)
            
        case "green":
            outputUIColor = UIColor(red: 0/255.0, green: 143/255.0, blue: 0/255.0, alpha: 1.0)
            
        case "red":
            outputUIColor = UIColor(red: 255/255.0, green: 38/255.0, blue: 0/255.0, alpha: 1.0)
            
        case "orange":
            outputUIColor = UIColor(red: 255/255.0, green: 147/255.0, blue: 0/255.0, alpha: 1.0)
            
        case "yellow":
            outputUIColor = UIColor(red: 255/255.0, green: 251/255.0, blue: 0/255.0, alpha: 1.0)
            
        case "darkBlue":
            outputUIColor = UIColor(red: 1/255.0, green: 25/255.0, blue: 147/255.0, alpha: 1.0)
            
        case "black":
            outputUIColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0)
            
        case "white":
            outputUIColor = UIColor(red: 255/255.0, green: 2555/255.0, blue: 255/255.0, alpha: 1.0)
            
        case "darkGray":
            outputUIColor = UIColor(red: 66/255.0, green: 66/255.0, blue: 66/255.0, alpha: 1.0)
            
        default:
            outputUIColor = UIColor(red: 66/255.0, green: 66/255.0, blue: 66/255.0, alpha: 1.0)
        }
        
        return outputUIColor
    }
    
    func updateBgColor(bgColor: String) {
        view.backgroundColor = getUIColor(color: bgColor)
    }
    
    func updateBgImage(bgImage: String) {
//        view.backgroundColor = UIColor(patternImage: UIImage(named: "\(bgImage).png")!)
        
        
        UIGraphicsBeginImageContext(view.frame.size)
        var image = UIImage(named: "\(bgImage)")
        image?.draw(in: view.bounds)
        image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = UIColor(patternImage: image!)
    }
    
    func updateFontColor(fontColor: String) {
        let newColor = getUIColor(color: fontColor)
        
        timeSlotBeg.textColor = newColor
        timeSlotH1.textColor = newColor
        timeSlotH2.textColor = newColor
        timeSlotSep1.textColor = newColor
        timeSlotM1.textColor = newColor
        timeSlotM2.textColor = newColor
//        timeSlotSep2.textColor = newColor
//        timeSlotS1.textColor = newColor
//        timeSlotS2.textColor = newColor
//        timeSlotSep3.textColor = newColor
        timeSlotEnd.textColor = newColor
        
        dateSlot1.textColor = newColor
        dateSlot2.textColor = newColor
        dateSlot3.textColor = newColor
        dateSlot4.textColor = newColor
        
        timeZoneSlot.textColor = newColor
    }
    
    func updateFont(font: String) {
        let newFont = UIFont(name: font, size: 135)
        let newFontMed = UIFont(name: font, size: 85)
        let newFontSm = UIFont(name: font, size: 50)
        
        timeSlotBeg.font = newFontSm
        
        timeSlotH1.font = newFont
        timeSlotH2.font = newFont
        timeSlotSep1.font = newFont
        timeSlotM1.font = newFont
        timeSlotM2.font = newFont
//        timeSlotSep2.font = newFont
//        timeSlotS1.font = newFont
//        timeSlotS2.font = newFont
//        timeSlotSep3.font = newFont
        
        timeSlotEnd.font = newFontSm
        
        dateSlot1.font = newFontMed
        dateSlot2.font = newFontMed
        dateSlot3.font = newFontMed
        dateSlot4.font = newFontMed
        
        timeZoneSlot.font = newFontMed
    }
    
    func makeFontNoGlow(fontColor: String) {
        let newColor = getUIColor(color: fontColor)
        
        timeSlotH1.layer.shadowColor = newColor.cgColor
        timeSlotH1.layer.shadowOffset = .zero
        timeSlotH1.layer.shadowRadius = 0.0
        timeSlotH1.layer.shadowOpacity = 0.0
        timeSlotH1.layer.masksToBounds = false
        timeSlotH1.layer.shouldRasterize = false
        
        timeSlotH2.layer.shadowColor = newColor.cgColor
        timeSlotH2.layer.shadowOffset = .zero
        timeSlotH2.layer.shadowRadius = 0.0
        timeSlotH2.layer.shadowOpacity = 0.0
        timeSlotH2.layer.masksToBounds = false
        timeSlotH2.layer.shouldRasterize = false
        
        timeSlotSep1.layer.shadowColor = newColor.cgColor
        timeSlotSep1.layer.shadowOffset = .zero
        timeSlotSep1.layer.shadowRadius = 0.0
        timeSlotSep1.layer.shadowOpacity = 0.0
        timeSlotSep1.layer.masksToBounds = false
        timeSlotSep1.layer.shouldRasterize = false
        
        timeSlotM1.layer.shadowColor = newColor.cgColor
        timeSlotM1.layer.shadowOffset = .zero
        timeSlotM1.layer.shadowRadius = 0.0
        timeSlotM1.layer.shadowOpacity = 0.0
        timeSlotM1.layer.masksToBounds = false
        timeSlotM1.layer.shouldRasterize = false
        
        timeSlotM2.layer.shadowColor = newColor.cgColor
        timeSlotM2.layer.shadowOffset = .zero
        timeSlotM2.layer.shadowRadius = 0.0
        timeSlotM2.layer.shadowOpacity = 0.0
        timeSlotM2.layer.masksToBounds = false
        timeSlotM2.layer.shouldRasterize = false
        
//        timeSlotSep2.layer.shadowColor = newColor.cgColor
//        timeSlotSep2.layer.shadowOffset = .zero
//        timeSlotSep2.layer.shadowRadius = 0.0
//        timeSlotSep2.layer.shadowOpacity = 0.0
//        timeSlotSep2.layer.masksToBounds = false
//        timeSlotSep2.layer.shouldRasterize = false
//
//        timeSlotS1.layer.shadowColor = newColor.cgColor
//        timeSlotS1.layer.shadowOffset = .zero
//        timeSlotS1.layer.shadowRadius = 0.0
//        timeSlotS1.layer.shadowOpacity = 0.0
//        timeSlotS1.layer.masksToBounds = false
//        timeSlotS1.layer.shouldRasterize = false
//
//        timeSlotS2.layer.shadowColor = newColor.cgColor
//        timeSlotS2.layer.shadowOffset = .zero
//        timeSlotS2.layer.shadowRadius = 0.0
//        timeSlotS2.layer.shadowOpacity = 0.0
//        timeSlotS2.layer.masksToBounds = false
//        timeSlotS2.layer.shouldRasterize = false
//
//        timeSlotSep3.layer.shadowColor = newColor.cgColor
//        timeSlotSep3.layer.shadowOffset = .zero
//        timeSlotSep3.layer.shadowRadius = 0.0
//        timeSlotSep3.layer.shadowOpacity = 0.0
//        timeSlotSep3.layer.masksToBounds = false
//        timeSlotSep3.layer.shouldRasterize = false
        
        timeSlotEnd.layer.shadowColor = newColor.cgColor
        timeSlotEnd.layer.shadowOffset = .zero
        timeSlotEnd.layer.shadowRadius = 0.0
        timeSlotEnd.layer.shadowOpacity = 0.0
        timeSlotEnd.layer.masksToBounds = false
        timeSlotEnd.layer.shouldRasterize = false
        
        dateSlot1.layer.shadowColor = newColor.cgColor
        dateSlot1.layer.shadowOffset = .zero
        dateSlot1.layer.shadowRadius = 0.0
        dateSlot1.layer.shadowOpacity = 0.0
        dateSlot1.layer.masksToBounds = false
        dateSlot1.layer.shouldRasterize = false
        
        dateSlot2.layer.shadowColor = newColor.cgColor
        dateSlot2.layer.shadowOffset = .zero
        dateSlot2.layer.shadowRadius = 0.0
        dateSlot2.layer.shadowOpacity = 0.0
        dateSlot2.layer.masksToBounds = false
        dateSlot2.layer.shouldRasterize = false
        
        dateSlot3.layer.shadowColor = newColor.cgColor
        dateSlot3.layer.shadowOffset = .zero
        dateSlot3.layer.shadowRadius = 0.0
        dateSlot3.layer.shadowOpacity = 0.0
        dateSlot3.layer.masksToBounds = false
        dateSlot3.layer.shouldRasterize = false
        
        dateSlot4.layer.shadowColor = newColor.cgColor
        dateSlot4.layer.shadowOffset = .zero
        dateSlot4.layer.shadowRadius = 0.0
        dateSlot4.layer.shadowOpacity = 0.0
        dateSlot4.layer.masksToBounds = false
        dateSlot4.layer.shouldRasterize = true
        
        timeZoneSlot.layer.shadowColor = newColor.cgColor
        timeZoneSlot.layer.shadowOffset = .zero
        timeZoneSlot.layer.shadowRadius = 0.0
        timeZoneSlot.layer.shadowOpacity = 0.0
        timeZoneSlot.layer.masksToBounds = false
        timeZoneSlot.layer.shouldRasterize = false
    }
    
    func makeFontGlow(fontColor: String) {
        let newColor = getUIColor(color: fontColor)
        
        timeSlotH1.layer.shadowColor = newColor.cgColor
        timeSlotH1.layer.shadowOffset = .zero
        timeSlotH1.layer.shadowRadius = 25.0
        timeSlotH1.layer.shadowOpacity = 0.9
        timeSlotH1.layer.masksToBounds = false
        timeSlotH1.layer.shouldRasterize = true
        
        timeSlotH2.layer.shadowColor = newColor.cgColor
        timeSlotH2.layer.shadowOffset = .zero
        timeSlotH2.layer.shadowRadius = 25.0
        timeSlotH2.layer.shadowOpacity = 0.9
        timeSlotH2.layer.masksToBounds = false
        timeSlotH2.layer.shouldRasterize = true
        
        timeSlotSep1.layer.shadowColor = newColor.cgColor
        timeSlotSep1.layer.shadowOffset = .zero
        timeSlotSep1.layer.shadowRadius = 25.0
        timeSlotSep1.layer.shadowOpacity = 0.9
        timeSlotSep1.layer.masksToBounds = false
        timeSlotSep1.layer.shouldRasterize = true
        
        timeSlotM1.layer.shadowColor = newColor.cgColor
        timeSlotM1.layer.shadowOffset = .zero
        timeSlotM1.layer.shadowRadius = 25.0
        timeSlotM1.layer.shadowOpacity = 0.9
        timeSlotM1.layer.masksToBounds = false
        timeSlotM1.layer.shouldRasterize = true
        
        timeSlotM2.layer.shadowColor = newColor.cgColor
        timeSlotM2.layer.shadowOffset = .zero
        timeSlotM2.layer.shadowRadius = 25.0
        timeSlotM2.layer.shadowOpacity = 0.9
        timeSlotM2.layer.masksToBounds = false
        timeSlotM2.layer.shouldRasterize = true
        
//        timeSlotSep2.layer.shadowColor = newColor.cgColor
//        timeSlotSep2.layer.shadowOffset = .zero
//        timeSlotSep2.layer.shadowRadius = 25.0
//        timeSlotSep2.layer.shadowOpacity = 0.9
//        timeSlotSep2.layer.masksToBounds = false
//        timeSlotSep2.layer.shouldRasterize = true
//
//        timeSlotS1.layer.shadowColor = newColor.cgColor
//        timeSlotS1.layer.shadowOffset = .zero
//        timeSlotS1.layer.shadowRadius = 25.0
//        timeSlotS1.layer.shadowOpacity = 0.9
//        timeSlotS1.layer.masksToBounds = false
//        timeSlotS1.layer.shouldRasterize = true
//
//        timeSlotS2.layer.shadowColor = newColor.cgColor
//        timeSlotS2.layer.shadowOffset = .zero
//        timeSlotS2.layer.shadowRadius = 25.0
//        timeSlotS2.layer.shadowOpacity = 0.9
//        timeSlotS2.layer.masksToBounds = false
//        timeSlotS2.layer.shouldRasterize = true
//
//        timeSlotSep3.layer.shadowColor = newColor.cgColor
//        timeSlotSep3.layer.shadowOffset = .zero
//        timeSlotSep3.layer.shadowRadius = 25.0
//        timeSlotSep3.layer.shadowOpacity = 0.9
//        timeSlotSep3.layer.masksToBounds = false
//        timeSlotSep3.layer.shouldRasterize = true
        
        timeSlotEnd.layer.shadowColor = newColor.cgColor
        timeSlotEnd.layer.shadowOffset = .zero
        timeSlotEnd.layer.shadowRadius = 25.0
        timeSlotEnd.layer.shadowOpacity = 0.9
        timeSlotEnd.layer.masksToBounds = false
        timeSlotEnd.layer.shouldRasterize = true
        
        dateSlot1.layer.shadowColor = newColor.cgColor
        dateSlot1.layer.shadowOffset = .zero
        dateSlot1.layer.shadowRadius = 25.0
        dateSlot1.layer.shadowOpacity = 0.9
        dateSlot1.layer.masksToBounds = false
        dateSlot1.layer.shouldRasterize = true
        
        dateSlot2.layer.shadowColor = newColor.cgColor
        dateSlot2.layer.shadowOffset = .zero
        dateSlot2.layer.shadowRadius = 25.0
        dateSlot2.layer.shadowOpacity = 0.9
        dateSlot2.layer.masksToBounds = false
        dateSlot2.layer.shouldRasterize = true
        
        dateSlot3.layer.shadowColor = newColor.cgColor
        dateSlot3.layer.shadowOffset = .zero
        dateSlot3.layer.shadowRadius = 25.0
        dateSlot3.layer.shadowOpacity = 0.9
        dateSlot3.layer.masksToBounds = false
        dateSlot3.layer.shouldRasterize = true
        
        dateSlot4.layer.shadowColor = newColor.cgColor
        dateSlot4.layer.shadowOffset = .zero
        dateSlot4.layer.shadowRadius = 25.0
        dateSlot4.layer.shadowOpacity = 0.9
        dateSlot4.layer.masksToBounds = false
        dateSlot4.layer.shouldRasterize = true
        
        timeZoneSlot.layer.shadowColor = newColor.cgColor
        timeZoneSlot.layer.shadowOffset = .zero
        timeZoneSlot.layer.shadowRadius = 25.0
        timeZoneSlot.layer.shadowOpacity = 0.9
        timeZoneSlot.layer.masksToBounds = false
        timeZoneSlot.layer.shouldRasterize = true
    }
    
}
