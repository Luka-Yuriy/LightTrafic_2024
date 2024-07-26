//
//  ViewController.swift
//  LightTrafic_2024
//
//  Created by Yurii Luka on 26.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var swithLightButton: UIButton!
    
    private var light: traficLigntSection = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        
        yellowLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        
        greenLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
        
        swithLightButton.layer.cornerRadius = 18
        swithLightButton.setTitle("START", for: .normal)
    }
    
    enum traficLigntSection {
        case red
        case yellow
        case green
    }
    
    @IBAction func swithLightButtonDidTapped(_ sender: UIButton) {
        switch light {
        case .red:
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            light = .yellow
        case .yellow:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
            light = .green
        case .green:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            light = .red
        }
    }
}

