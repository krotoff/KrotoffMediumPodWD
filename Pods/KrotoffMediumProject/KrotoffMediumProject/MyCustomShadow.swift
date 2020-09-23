//
//  MyCustomShadow.swift
//  KrotoffMediumProject
//
//  Created by Andrey Krotov on 22.09.2020.
//

import UIKit

/*
 Internal flag tells project to show this class only in this framework. So you will not see this class with import your framework
 
 It's a good practice to hide some classes to not overflow Xcode-hinter with many extra classes. But if you have many things to hide,
 think about complexity of your framework. Maybe you need to separate it?
*/

internal final class MyCustomShadow {
    
    // MARK: - Private properties (properties not available outside this class)
    
    private let color: UIColor = .black
    private let offset: CGSize = .init(width: 0, height: 4)
    private let opacity: Float = 0.25
    private let radius: CGFloat = 4
    
    // MARK: - Internal methods (methods will be available only in this framework)
    
    // Note: Xcode set internal as default flag. So you can avoid clarification of internal access. But for future confidence it would be better to do
    func applyShadow(to view: UIView) {
        view.layer.shadowColor = color.cgColor
        view.layer.shadowOffset = offset
        view.layer.shadowOpacity = opacity
        view.layer.shadowRadius = radius
    }
}
