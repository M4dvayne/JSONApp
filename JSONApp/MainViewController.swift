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
    
    
    
    let networkManager = NetworkManager()
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//    }


    @IBAction func getInfoButtonPressed(_ sender: Any) {
        
        networkManager.fetchInfo()
        
    }
}

//extension MainViewController {
//
//    func configureLabels(with zipCode: ZipCode) {
//        DispatchQueue.main.async {
//            self.postCodeLabel.text = zipCode.postCode
//            self.countryLabel.text = zipCode.country
//            self.countryAbbreviationLabel.text = zipCode.countryAbbreviation
//        }
//    }
//}
