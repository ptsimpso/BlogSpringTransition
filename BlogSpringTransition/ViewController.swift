//
//  ViewController.swift
//  BlogSpringTransition
//
//  Created by Peter Simpson on 8/30/15.
//  Copyright (c) 2015 Peter Simpson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ModalDelegate {

    let kPopUpSegue = "PopUpSegue"
    
    func minimizeView() {
        SpringAnimation.spring(0.7, animations: {
            self.view.transform = CGAffineTransformMakeScale(0.935, 0.935)
        })
    }
    
    func maximizeView() {
        SpringAnimation.spring(0.7, animations: {
            self.view.transform = CGAffineTransformMakeScale(1.0, 1.0)
        })
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == kPopUpSegue {
            let popUpController = segue.destinationViewController as! PopUpViewController
            popUpController.delegate = self
        }
    }
    
}

