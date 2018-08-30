//
//  LanguageController.swift
//
//  Created by Kevin Sawicke on 5/11/18.
//  Copyright © 2018 Kevin Sawicke. All rights reserved.
//

import UIKit

protocol ChangeLanguageDelegate {
    
    func userChangedLanguage(languageNumber: Int)
    
}

class LanguageController: UIViewController {
    
    var button1TextView: UITextView = {
        let screenSize: CGRect = UIScreen.main.bounds
        
        // sets time to be 10% screen height
        let textView = UITextView(frame: CGRect(x: 0.0, y: (((screenSize.height - 0.0) * 0.90) - 20), width: screenSize.width, height: (screenSize.height - 0.0) * 0.10))
        
        return textView
    }()
    var button2TextView: UITextView = {
        let screenSize: CGRect = UIScreen.main.bounds
        
        // sets time to be 10% screen height
        let textView = UITextView(frame: CGRect(x: 0.0, y: (((screenSize.height - 0.0) * 0.90) - 20), width: screenSize.width, height: (screenSize.height - 0.0) * 0.10))
        
        return textView
    }()
    
    var timeTextView: UITextView = {
        let screenSize: CGRect = UIScreen.main.bounds
        
        // sets time to be 30% screen height
        let textView = UITextView(frame: CGRect(x: 0.0, y: 20.0, width: screenSize.width, height: (screenSize.height - 0.0) * 0.30))
        
        return textView
    }()
    
    let button1Height: CGFloat = 44
    let button1ContentInset: CGFloat = 8
    var button1: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 16, height: 16))
    
    let button2Height: CGFloat = 44
    let button2ContentInset: CGFloat = 8
    var button2: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 16, height: 16))
    
    let button3Height: CGFloat = 44
    let button3ContentInset: CGFloat = 8
    var button3: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 16, height: 16))
    
    let button4Height: CGFloat = 44
    let button4ContentInset: CGFloat = 8
    var button4: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 16, height: 16))
    
    let button5Height: CGFloat = 44
    let button5ContentInset: CGFloat = 8
    var button5: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 16, height: 16))
    
    let button6Height: CGFloat = 44
    let button6ContentInset: CGFloat = 8
    var button6: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 16, height: 16))
    
    let button7Height: CGFloat = 44
    let button7ContentInset: CGFloat = 8
    var button7: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 16, height: 16))
    
    var languageDelegate : ChangeLanguageDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    /**
     languageDelegate?.userChangedLanguage(languageNumber: sender.tag)
     self.dismiss(animated: true, completion: nil)
     **/
    
    @objc private func onClickLanguageSelectionButton(sender: UIButton) {
        print("click \(sender.tag)")
    }
    
    private func setupLayout() {
        let screenSize: CGRect = UIScreen.main.bounds
        
        // TIME: 100% screen height
        timeTextView = UITextView(frame: CGRect(x: 0.0, y: 20.0, width: screenSize.width, height: screenSize.height * 1.0))
        
        timeTextView.textAlignment = NSTextAlignment.center
        timeTextView.textColor = UIColor.white
        timeTextView.backgroundColor = UIColor.black
        
        view.addSubview(timeTextView)
        
        // BUTTONS: screen height = themeImage.size.height + 24
        let buttonsTextViewHeight = 56.0
        button1TextView = UITextView(frame: CGRect(x: CGFloat(0.0), y: CGFloat(((screenSize.height - 0.0) * 0.30) - 20), width: screenSize.width/2, height: CGFloat(buttonsTextViewHeight)))
        button1TextView.textAlignment = NSTextAlignment.center
        button1TextView.textColor = UIColor.white
        button1TextView.backgroundColor = UIColor.clear
        view.addSubview(button1TextView)
        
//        let buttonsTextViewHeight = 56.0
        button2TextView = UITextView(frame: CGRect(x: CGFloat(screenSize.width/2), y: CGFloat(((screenSize.height - 0.0) * 0.30) - 20), width: screenSize.width/2, height: CGFloat(buttonsTextViewHeight)))
        button2TextView.textAlignment = NSTextAlignment.center
        button2TextView.textColor = UIColor.white
        button2TextView.backgroundColor = UIColor.clear
        view.addSubview(button2TextView)
        
        // https://stackoverflow.com/questions/24010035/how-to-add-image-and-text-in-uitextview-in-ios
        
        //        let buttonHeight: CGFloat = 44
        //        let contentInset: CGFloat = 8
        //
        //        let button = UIButton(frame: CGRect(x: contentInset, y: buttonsTextView.contentSize.height - buttonHeight - contentInset, width: buttonsTextView.contentSize.width-contentInset*2, height: buttonHeight))
        //
        //        //setup your button here
        //        button.setTitle("BUTTON", for: UIControlState.normal)
        //        button.setTitleColor(UIColor.red, for: UIControlState.normal)
        //        button.backgroundColor = UIColor.lightGray
        //
        //        buttonsTextView.textStorage
        //
        //        buttonsTextView.textStorage.insert(attString, at: buttonsTextView.selectedRange.location)
        
        
        
        // https://stackoverflow.com/questions/21629784/how-can-i-make-a-clickable-link-in-an-nsattributedstring/29362206
        //        let termsAndConditionsURL = "http://google.com"
        //        let privacyURL            = "http://cnn.com"
        //        let str = "Terms of use"
        //        let attributedString = NSMutableAttributedString(string: str)
        //        var foundRange = attributedString.mutableString.range(of: "Terms of use") //mention the parts of the attributed text you want to tap and get an custom action
        //        attributedString.addAttribute(NSLinkAttributeName, value: termsAndConditionsURL, range: foundRange)
        //        foundRange = attributedString.mutableString.range(of: "Privacy policy")
        //        attributedString.addAttribute(NSLinkAttributeName, value: privacyURL, range: foundRange)
        //        txtView.attributedText = attributedString
        
        
        
        
        
        
        /** BUTTON **/
        let button1Height: CGFloat = 44
        let button1ContentInset: CGFloat = 8
        button1 = UIButton(frame: CGRect(x: 10.0, y: button1TextView.contentSize.height - button1Height - button1ContentInset, width: button1TextView.contentSize.width - 20, height: button1Height))
        button1.setTitle("English", for: .normal)
        button1.backgroundColor = UIColor.orange
        button1.addTarget(self, action: #selector(self.onClickLanguageSelectionButton), for: .touchUpInside)
        button2.contentHorizontalAlignment = .center
        button1.tag = 0
        button1TextView.addSubview(button1)
        /** /BUTTON **/
        
        /** BUTTON **/
        let button2Height: CGFloat = 44
        let button2ContentInset: CGFloat = 8
        button2 = UIButton(frame: CGRect(x: 10.0, y: button2TextView.contentSize.height - button2Height - button2ContentInset, width: button2TextView.contentSize.width - 20, height: button1Height))
        button2.setTitle("English (24 HR)", for: .normal)
        button2.backgroundColor = UIColor.orange
        button2.addTarget(self, action: #selector(self.onClickLanguageSelectionButton), for: .touchUpInside)
        button2.contentHorizontalAlignment = .center
        button2.tag = 1
        button2TextView.addSubview(button2)
        /** /BUTTON **/
    }

}
