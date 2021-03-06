//
//  CustomViewController.swift
//  KrotoffMediumPodWD
//
//  Created by Andrey Krotov on 23.09.2020.
//  Copyright © 2020 Andrew Krotov. All rights reserved.
//

import UIKit
import KrotoffMediumProject

public class CustomViewController: UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        addCustomView()
    }
    
    // MARK: - Private methods
    
    private func addCustomView() {
        let customView = MyCustomView()
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(customView)
        NSLayoutConstraint.activate([
            customView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            customView.leftAnchor.constraint(equalTo: view.leftAnchor),
            customView.rightAnchor.constraint(equalTo: view.rightAnchor),
            customView.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
