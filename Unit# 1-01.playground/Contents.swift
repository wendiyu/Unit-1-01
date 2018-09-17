

// Created on: September-17-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for the label program with 3 button 
// this will be commented out when code moved to Xcode
import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let line1Label = UILabel()
    let line2Lable = UILabel()
    let hightSchoolButton = UIButton()
    let basketballTeamButton = UIButton()
    let ottawaSenatorButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        hightSchoolButton.setTitle("St.Mother Teresa High School ", for: .normal)
        hightSchoolButton.setTitleColor(.blue, for: .normal)
        hightSchoolButton.addTarget(self, action: #selector(showSchoolText), for: .touchUpInside)
        view.addSubview(hightSchoolButton)
        hightSchoolButton.translatesAutoresizingMaskIntoConstraints = false
        hightSchoolButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        hightSchoolButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        basketballTeamButton.setTitle("Toronto Basketball Team", for: .normal)
        basketballTeamButton.setTitleColor(.blue, for: .normal)
        basketballTeamButton.addTarget(self, action: #selector(showTeamText), for: .touchUpInside)
        view.addSubview(basketballTeamButton)
        basketballTeamButton.translatesAutoresizingMaskIntoConstraints = false
        basketballTeamButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        basketballTeamButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        ottawaSenatorButton.setTitle("Ottawa Senators", for: .normal)
        ottawaSenatorButton.setTitleColor(.blue, for: .normal)
        ottawaSenatorButton.addTarget(self, action: #selector(showSenatorText), for: .touchUpInside)
        view.addSubview(ottawaSenatorButton)
        ottawaSenatorButton.translatesAutoresizingMaskIntoConstraints = false
        ottawaSenatorButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        ottawaSenatorButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        //line1Lable.text
        view.addSubview(line1Label)
        line1Label.translatesAutoresizingMaskIntoConstraints = false
        line1Label.topAnchor.constraint(equalTo: basketballTeamButton.bottomAnchor, constant: 20).isActive = true
        line1Label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //line2Lable.text
        view.addSubview(line2Lable)
        line2Lable.translatesAutoresizingMaskIntoConstraints = false
        line2Lable.topAnchor.constraint(equalTo: line1Label.bottomAnchor, constant: 20).isActive = true
        line2Lable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func showSchoolText() {
        // show School name
        line1Label.text = "St. Mother Teresa HS"
        line2Lable.text = "Titan"
    }
    @objc func showTeamText() {
        // show Basketball Team name
        line1Label.text = "Toronto Basketball Team"
        line2Lable.text = "Raptors"
    }
    @objc func showSenatorText() {
        // show Ottawa semator
        line1Label.text = "Ottawa Senator"
        line2Lable.text = "Lions"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
