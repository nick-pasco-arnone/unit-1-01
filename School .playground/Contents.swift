
// created by: Nick pasco-arnone
// created on: September 14
// created for: ICs3U
// daily assignment - unit 1 -01
// This program displays three schools and there team names 

import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    // properties
    let displayLabel = UILabel()
    let mthsButton = UIButton()
    let stmarKButton = UIButton()
    let stjoesButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        mthsButton.setTitle("MTHS", for: .normal)
        mthsButton.setTitleColor(.blue, for: .normal)
        mthsButton.addTarget(self, action: #selector(englishText), for: .touchUpInside)
        view.addSubview(mthsButton)
        mthsButton.translatesAutoresizingMaskIntoConstraints = false
        mthsButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        mthsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        stmarKButton.setTitle("ST Marks", for: .normal)
        stmarKButton.titleLabel?.textAlignment = .center
        stmarKButton.setTitleColor(.blue, for: .normal)
        stmarKButton.addTarget(self, action: #selector(frenchText), for: .touchUpInside)
        view.addSubview(stmarKButton)
        stmarKButton.translatesAutoresizingMaskIntoConstraints = false
        stmarKButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        stmarKButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        stjoesButton.setTitle("ST Joes", for: .normal)
        stjoesButton.setTitleColor(.blue, for: .normal)
        stjoesButton.addTarget(self, action: #selector(spanishText), for: .touchUpInside)
        view.addSubview(stjoesButton)
        stjoesButton.translatesAutoresizingMaskIntoConstraints = false
        stjoesButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        stjoesButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        
        displayLabel.textAlignment = .center
        view.addSubview(displayLabel)
        displayLabel.translatesAutoresizingMaskIntoConstraints = false
        displayLabel.topAnchor.constraint(equalTo: stmarKButton.bottomAnchor, constant: 20).isActive = true
        displayLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func englishText() {
        
        displayLabel.text = "Mother Teresa high school, Titans"
    }
    
    @objc func frenchText() {
        
        displayLabel.text = "ST Mark high school, Lions"
    }
    
    @objc func spanishText() {
        
        displayLabel.text = "ST Joes, Jaguars"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

PlaygroundPage.current.liveView = ViewController()


