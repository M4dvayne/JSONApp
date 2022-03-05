//
//  ViewController.swift
//  JSONApp
//
//  Created by Вячеслав Кремнев on 03.03.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var getInfoButton: UIButton!
    
    @IBOutlet weak var postCodeLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryAbbreviationLabel: UILabel!
    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var stateAbbreviationLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    
    @IBOutlet weak var labelsStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getInfoButton.layer.cornerRadius = 10
        labelsStack.layer.cornerRadius = 10
    
    }
    
    @IBAction func getInfoButtonPressed(_ sender: Any) {
        
        NetworkManager.shared.fetchInfo { zip in
            
            self.postCodeLabel.text = zip.postCode
            self.countryLabel.text = zip.country
            self.countryAbbreviationLabel.text = zip.countryAbbreviation
            /*
             Здесь ниже, я не смог извлечь данные из вложенного в ZipCode массива [Places], пытался привести к string, и скастить, но что-то не вышло, знаю что так нельзя, буду прорабатывать такие моменты, но в то же время очень смутило каким образом через first получилось добраться до вложенных элементов.
             */
            self.placeName.text = zip.places?.first?.placeName
            self.longitudeLabel.text = zip.places?.first?.longitude
            self.stateLabel.text = zip.places?.first?.state
            self.stateAbbreviationLabel.text = zip.places?.first?.stateAbbreviation
            self.latitudeLabel.text = zip.places?.first?.latitude
            
        }
    }
}
