//
//  MyCustomView.swift
//  KrotoffMediumProject
//
//  Created by Andrey Krotov on 22.09.2020.
//

import UIKit

// Class will be available with import

public class MyCustomView: UIView {
    
    // MARK: - Public properties (properties available with import of your framework)
    
    public var radius: CGFloat = 0 { didSet { layer.cornerRadius = radius } }
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        initialize()
    }
    
    // MARK: - Private methods (methods not available outside this class)
    
    private func initialize() {
        // Note: it's an awful practice to use classes as in next two lines, but I use this only to show you, how to use access flags
        let shadow = MyCustomShadow()
        shadow.applyShadow(to: self)
    }
}
