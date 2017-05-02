//
//  MainView.swift
//  Handwriting
//
//  Created by Collin Hundley on 5/1/17.
//  Copyright © 2017 Swift AI. All rights reserved.
//

import UIKit


class MainView: UIView {
    
    // Nav bar
    let navBar = UIView()
    let titleLabel = UILabel()
    // Canvas
    let instructionLabel = UILabel()
    let canvasContainer = ShadowView()
    let canvas = UIImageView()
    let snapshotBox = UIView()
    // Input
    let inputTitleLabel = UILabel()
    let networkInputContainer = ShadowView()
    let networkInputCanvas = UIImageView()
    // Output
    let outputTitleLabel = UILabel()
    let networkOutputView = ShadowView()
    let outputLabel = UILabel()
    let confidenceLabel = UILabel()
    
    
    convenience init() {
        self.init(frame: .zero)
        configureSubviews()
        configureLayout()
    }
    
    /// Configure view/subview appearances.
    private func configureSubviews() {
        backgroundColor = UIColor.saiExtraLightGray()
        
        // Nav bar
        navBar.backgroundColor = UIColor.saiOrange()
        
        // Title label
        titleLabel.text = "Swift AI"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 17)
        titleLabel.textAlignment = .center
        
        // Instructions
        instructionLabel.text = "Sketch a digit from 0 to 9"
        instructionLabel.textColor = UIColor.darkGray
        instructionLabel.font = UIFont.systemFont(ofSize: 15)
        instructionLabel.textAlignment = .center
        
        // Snapshot box
        snapshotBox.backgroundColor = .clear
        snapshotBox.layer.borderColor = UIColor.saiGreen().cgColor
        snapshotBox.layer.borderWidth = 2
        snapshotBox.layer.cornerRadius = 3
        
        // Input title
        inputTitleLabel.text = "Network input"
        inputTitleLabel.textColor = UIColor.darkGray
        inputTitleLabel.font = UIFont.systemFont(ofSize: 15)
        inputTitleLabel.textAlignment = .center
        
        // Output title
        outputTitleLabel.text = "Network output"
        outputTitleLabel.textColor = UIColor.darkGray
        outputTitleLabel.font = UIFont.systemFont(ofSize: 15)
        outputTitleLabel.textAlignment = .center
        
        // Output
        outputLabel.font = UIFont.systemFont(ofSize: 100, weight: UIFontWeightLight)
        outputLabel.textAlignment = .center
        
        // Confidence
        confidenceLabel.font = UIFont.systemFont(ofSize: 15)
        confidenceLabel.textAlignment = .center
        
    }
    
    /// Add subviews and set constraints.
    private func configureLayout() {
        addAutoLayoutSubviews(navBar, instructionLabel, canvasContainer,
                              inputTitleLabel, networkInputContainer,
                              outputTitleLabel, networkOutputView)
        navBar.addAutoLayoutSubview(titleLabel)
        canvasContainer.addAutoLayoutSubviews(canvas, snapshotBox)
        networkInputContainer.addAutoLayoutSubview(networkInputCanvas)
        networkOutputView.addAutoLayoutSubviews(outputLabel, confidenceLabel)
        
        // Nav bar
        NSLayoutConstraint.activate([
            navBar.leftAnchor.constraint(equalTo: leftAnchor),
            navBar.rightAnchor.constraint(equalTo: rightAnchor),
            navBar.topAnchor.constraint(equalTo: topAnchor),
            navBar.heightAnchor.constraint(equalToConstant: 64)
            ])
        
        // Title label
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: navBar.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: navBar.centerYAnchor, constant: 7)
            ])
        
        // Instruction label
        NSLayoutConstraint.activate([
            instructionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            instructionLabel.bottomAnchor.constraint(equalTo: canvasContainer.topAnchor, constant: -5)
            ])
        
        // Canvas container
        NSLayoutConstraint.activate([
            canvasContainer.leftAnchor.constraint(equalTo: leftAnchor, constant: 8),
            canvasContainer.rightAnchor.constraint(equalTo: rightAnchor, constant: -8),
            canvasContainer.topAnchor.constraint(equalTo: navBar.bottomAnchor, constant: 30),
            canvasContainer.heightAnchor.constraint(equalTo: canvasContainer.widthAnchor)
            ])
        
        // Canvas
        canvas.fillSuperview()
        
        // Input title
        NSLayoutConstraint.activate([
            inputTitleLabel.centerXAnchor.constraint(equalTo: networkInputContainer.centerXAnchor),
            inputTitleLabel.bottomAnchor.constraint(equalTo: networkInputContainer.topAnchor, constant: -5)
            ])
        
        // Input container
        NSLayoutConstraint.activate([
            networkInputContainer.leftAnchor.constraint(equalTo: leftAnchor, constant: 8),
            networkInputContainer.rightAnchor.constraint(equalTo: centerXAnchor, constant: -4),
            networkInputContainer.topAnchor.constraint(equalTo: canvasContainer.bottomAnchor, constant: 30),
            networkInputContainer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30)
            ])
        
        // Input canvas
        networkInputCanvas.fillSuperview()
        
        // Output title
        NSLayoutConstraint.activate([
            outputTitleLabel.centerXAnchor.constraint(equalTo: networkOutputView.centerXAnchor),
            outputTitleLabel.bottomAnchor.constraint(equalTo: networkOutputView.topAnchor, constant: -5)
            ])
        
        // Output view
        NSLayoutConstraint.activate([
            networkOutputView.leftAnchor.constraint(equalTo: centerXAnchor, constant: 4),
            networkOutputView.rightAnchor.constraint(equalTo: rightAnchor, constant: -8),
            networkOutputView.topAnchor.constraint(equalTo: networkInputContainer.topAnchor),
            networkOutputView.bottomAnchor.constraint(equalTo: networkInputContainer.bottomAnchor)
            ])
        
        // Output label
        NSLayoutConstraint.activate([
            outputLabel.centerXAnchor.constraint(equalTo: networkOutputView.centerXAnchor),
            outputLabel.centerYAnchor.constraint(equalTo: networkOutputView.centerYAnchor, constant: -5)
            ])
        
        // Confidence label
        NSLayoutConstraint.activate([
            confidenceLabel.centerXAnchor.constraint(equalTo: networkOutputView.centerXAnchor),
            confidenceLabel.bottomAnchor.constraint(equalTo: networkOutputView.bottomAnchor, constant: -5)
            ])
        
    }
    
}
