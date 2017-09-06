//
//  SlideInPresentationManager.swift
//  UIPresentationController-sample
//
//  Created by Nofel Mahmood on 06/09/2017.
//  Copyright © 2017 nineish. All rights reserved.
//

import UIKit

enum PresentationDirection {
    case left
    case top
    case right
    case bottom
}

class SlideInPresentationManager: UIPresentationController {
    var direction = PresentationDirection.left
    
}

extension SlideInPresentationManager: UIViewControllerTransitioningDelegate {
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        
        let presentationController = SlideInPresentationController(presentedViewController: presented, presenting: presenting, direction: direction)
        
        return presentationController
    }
}
