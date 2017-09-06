//
//  SlideInPresentationController.swift
//  UIPresentationController-sample
//
//  Created by Nofel Mahmood on 06/09/2017.
//  Copyright © 2017 nineish. All rights reserved.
//

import UIKit

class SlideInPresentationController: UIPresentationController {

    private var direction: PresentationDirection
    
    init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?, direction: PresentationDirection) {
        self.direction = direction
        
        super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
    }
    
    override func presentationTransitionWillBegin() {
        guard let coordinator = presentedViewController.transitionCoordinator else {
            return 
        }
        
        presentedViewController.view.alpha = 0
        coordinator.animate(alongsideTransition: { (context) in
            self.presentedViewController.view.alpha = 1
        }, completion: { context in
            
        })
    }
}
