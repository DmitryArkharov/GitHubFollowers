//
//  GHFTextField.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 21/06/2022.
//

import UIKit

class GHFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius  = 10
        layer.borderWidth   = 2
        layer.borderColor   = UIColor.systemGray4.cgColor
        
        adjustsFontSizeToFitWidth = true
        textColor           = .label
        tintColor           = .label
        textAlignment       = .center
        font                = UIFont.preferredFont(forTextStyle: .title2)
        minimumFontSize     = 12
        
        backgroundColor     = .tertiarySystemBackground
        autocorrectionType  = .no
        returnKeyType       = .go
        clearButtonMode     = .whileEditing
        placeholder         = "Enter a username"
    }
}
