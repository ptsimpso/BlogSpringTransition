//
//  ModalProtocol.swift
//  BlogSpringTransition
//
//  Created by Peter Simpson on 8/30/15.
//  Copyright (c) 2015 Peter Simpson. All rights reserved.
//

import Foundation

protocol ModalDelegate {
    func minimizeView() -> Void
    func maximizeView() -> Void
}