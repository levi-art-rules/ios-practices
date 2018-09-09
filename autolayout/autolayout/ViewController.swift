//
//  ViewController.swift
//  autolayout
//
//  Created by Lian Liu on 9/8/18.
//  Copyright © 2018 Lian Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "image_from_ios"))
        // enable autolayout for imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        // enable autolayout for imageView
        textView.translatesAutoresizingMaskIntoConstraints = false
        
//        textView.text = "text view"
//        textView.font = UIFont.boldSystemFont(ofSize: 18)
        
        let attibutedText = NSMutableAttributedString(string: "A very long text dispalying here.....", attributes: [
            NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)
            ]
        )
        attibutedText.append(NSAttributedString(string: "\n\ntext view descrption", attributes: [
            NSAttributedStringKey.font: UIFont.systemFont(ofSize: 13),
            NSAttributedStringKey.foregroundColor: UIColor.gray
            ]
        ))
        textView.attributedText = attibutedText
        textView.textAlignment = .center
        
        textView.isEditable = false
        textView.isScrollEnabled = false

        return textView
    }()
    
    let topContainerView: UIView = {
        let topContainerView = UIView()
        return topContainerView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.addSubview(topContainerView)
        view.addSubview(descriptionTextView)
        topContainerView.addSubview(imageView)
        topContainerView.addSubview(descriptionTextView)
        setUpLayout()
    }
    
    private func setUpLayout() {
        setUpTopContainerView()
        setUpImageView()
        setUpDescriptionTextView()
    }
    
    private func setUpDescriptionTextView() {
        descriptionTextView.topAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
    }
    
    private func setUpImageView() {
        imageView.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: topContainerView.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.5).isActive = true
    }
    
    private func setUpTopContainerView() {
        topContainerView.translatesAutoresizingMaskIntoConstraints = false
        topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}
