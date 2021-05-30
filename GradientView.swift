//
//  GradientView.swift
//  CabAppUser
//
//  Created by ibc on 17/05/21.
//

import UIKit

class GradientView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        guard let theLayer = self.layer as? CAGradientLayer else {
            return;
        }
        
        theLayer.colors = [UIColor(red: 0.09, green: 0.55, blue: 1.00, alpha: 1.00).cgColor, UIColor(red: 0.00, green: 0.38, blue: 0.75, alpha: 1.00).cgColor]
        theLayer.locations = [0.0, 1.0]
        theLayer.frame = self.bounds
    }
    
    func setupView(color1:UIColor, color2: UIColor) {
        autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        guard let theLayer = self.layer as? CAGradientLayer else {
            return;
        }
        
        theLayer.colors = [color1.cgColor, color2.cgColor]
        //theLayer.locations = [0.0, 1.0]
        //Horizontal
        theLayer.transform = CATransform3DMakeRotation(CGFloat.pi / 2, 0, 0, 1)
        theLayer.frame = self.bounds
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
}
