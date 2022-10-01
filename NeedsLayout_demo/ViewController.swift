//
//  ViewController.swift
//  NeedsLayout_demo
//
//  Created by StevenTang on 2022/6/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    @IBOutlet weak var violetView: UIView!
    
    @IBOutlet weak var valueLabel: NumberRollingLabel!
    
    @IBAction func modifyHeightAction(_ sender: Any) {
        animate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewHeight.constant = 50.0
        violetView.setTopCornerRadius(radius: 20)
    }

    func animate() {
        
        if viewHeight.constant == 50.0 {
            viewHeight.constant = violetView.frame.height + 200
            valueLabel.text = String(format: "%.0f", viewHeight.constant)
            valueLabel.countFromCurrent(to: Float(viewHeight.constant), duration: 1)
        } else {
            viewHeight.constant = 50.0
            valueLabel.text = String(format: "%.0f", viewHeight.constant)
            valueLabel.countFromCurrent(to: Float(viewHeight.constant), duration: 1)
        }
        
        UIView.animate(withDuration: 1.0) {
            self.view.layoutIfNeeded()
        }
        
    }
    
}

