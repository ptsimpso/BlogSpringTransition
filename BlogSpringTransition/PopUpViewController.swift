//
//  PopUpViewController.swift
//  BlogSpringTransition
//
//  Created by Peter Simpson on 8/30/15.
//  Copyright (c) 2015 Peter Simpson. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    
    @IBOutlet weak var backButton: SpringButton!
    @IBOutlet weak var popUpView: SpringView!
    
    var delegate: ModalDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popUpView.transform = CGAffineTransformMakeTranslation(0, 300)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        delegate?.minimizeView()
        backButton.animate()
        popUpView.animate()
    }
    
    @IBAction func backPressed() {
        delegate?.maximizeView()
        UIView.animateWithDuration(0.25, delay: 0, options: UIViewAnimationOptions.CurveLinear, animations: {
            self.popUpView.transform = CGAffineTransformMakeTranslation(0, 300)
            self.backButton.alpha = 0
            }) { (completed: Bool) -> Void in
                self.dismissViewControllerAnimated(false, completion: nil)
        }
    }

}
