//
//  settingsInfoView.swift
//  Weather-App
//
//  Created by Александр on 01.02.2023.
//

import UIKit
//MARK: - Gradient Settings
final class SettingsInfoView: UIView {

    //MARK: - Gradient Point
    let gradientLayer = CAGradientLayer()

    //MARK: - Gradient Point
    enum Point {
        case topLeading
        case leading
        case bottomLeading
        case top
        case center
        case bottom
        case topTrailing
        case trailing
        case bottomTrailing

        var point: CGPoint {
            switch self {
            case .topLeading:
                return CGPoint(x: 0, y: 0)
            case .leading:
                return CGPoint(x: 0, y: 0.5)
            case .bottomLeading:
                return CGPoint(x: 0, y: 1.0)
            case .top:
                return CGPoint(x: 0.5, y: 0)
            case .center:
                return CGPoint(x: 0.5, y: 0.5)
            case .bottom:
                return CGPoint(x: 0.5, y: 1.0)
            case .topTrailing:
                return CGPoint(x: 1.0, y: 0.0)
            case .trailing:
                return CGPoint(x: 1.0, y: 0.5)
            case .bottomTrailing:
                return CGPoint(x: 1.0, y: 1.0)
            }
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupGradient()

    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    private func addSubViews() {

    }
    //MARK: - Settings Gradient
    private func setupGradient() {
        layer.addSublayer(gradientLayer)
        gradientLayer.cornerRadius = 15
        gradientLayer.colors = [ #colorLiteral(red: 0.3098039216, green: 0.6274509804, blue: 0.9803921569, alpha: 1).cgColor, #colorLiteral(red: 0.2, green: 0.3725490196, blue: 0.8196078431, alpha: 1).cgColor]
        gradientLayer.startPoint = Point.bottomLeading.point
        gradientLayer.endPoint = Point.topTrailing.point
        gradientLayer.frame = CGRect(x: 0, y: 0, width: 353, height: 193)

    }

}

