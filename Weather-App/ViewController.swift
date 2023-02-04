//
//  ViewController.swift
//  Weather-App
//
//  Created by Александр on 31.01.2023.
//

import UIKit
import SwiftUI

final class ViewController: UIViewController {



    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        print(view.frame)
    }
    //MARK: - Settings Info View
    let infoView: SettingsInfoView = {
        var infoView = SettingsInfoView(frame: CGRect(x: 0, y: 0, width: 353, height: 193))
        infoView.translatesAutoresizingMaskIntoConstraints = false
        return infoView
    }()

    //MARK: - Location Search Image
    let locationImage: UIImageView = { // настройка изображения рядом с лого
        var imageView = UIImageView()
        imageView.image = UIImage(named: "location")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    //MARK: - Search Search Image
    let searchImage: UIImageView = { // настройка изображения рядом с лого
        var imageView = UIImageView()
        imageView.tintColor = .black
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    //MARK: - Search Arrow Image
    let centerImage: UIImageView = { // настройка изображения рядом с лого
        var imageView = UIImageView()
        imageView.image = UIImage(named: "arrow")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    //MARK: - Search Label
    let searchLabel: UILabel = {
        var label = UILabel()
        label.text = "Ростов-На-Дону, Росиия"
        label.textColor = .black
        //label.backgroundColor = .blue
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    //MARK: - Info Label Top Left
    let infoLabel: UILabel = {
        var label = UILabel()
        label.text = "Ростов-На-Дону, Росиия"
        label.textColor = .white
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    //MARK: - Info Label Time Right
    let timeLabel: UILabel = {
        var label = UILabel()
        label.text = "3.30 PM"
        label.textColor = .white
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    //MARK: - Info Label Image
    let infoLabelImage: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "infoLabelImage")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

}
//___метот позволяет вызывать canvas во ViewController
struct  ViewControllerProvider: PreviewProvider {

    static var previews: some View {
        ViewController().showPreview()//___подключение перенесенной структуры
    }
}
//___end

//MARK: - Setting Views
private extension ViewController {
    func setupView() {
        addSubViews()
        setupLayout()

    }
}
//MARK: - Settings
private extension ViewController {
    func addSubViews() {
        view.addSubview(locationImage)
        view.addSubview(searchImage)
        view.addSubview(centerImage)
        view.addSubview(searchLabel)
        view.addSubview(infoView)
        view.addSubview(infoLabel)
        view.addSubview(timeLabel)
        view.addSubview(infoLabelImage)
    }
}
//MARK: - Layout
private extension ViewController {
    func setupLayout() {
        NSLayoutConstraint.activate([
            searchLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 43 ),
            searchLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 61),
            //высота
            searchLabel.heightAnchor.constraint(equalToConstant: 20),
            searchLabel.widthAnchor.constraint(equalToConstant: 200),

            locationImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20 ),
            locationImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            locationImage.heightAnchor.constraint(equalToConstant: 20),
            locationImage.widthAnchor.constraint(equalToConstant: 20),

            searchImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            searchImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            searchImage.heightAnchor.constraint(equalToConstant: 20),
            searchImage.widthAnchor.constraint(equalToConstant: 20),

            centerImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 215),
            centerImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 61.5),
            centerImage.heightAnchor.constraint(equalToConstant: 20),
            centerImage.widthAnchor.constraint(equalToConstant: 20),

            infoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20 ),
            infoView.topAnchor.constraint(equalTo: locationImage.bottomAnchor, constant: 27),

            infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45 ),
            infoLabel.topAnchor.constraint(equalTo: infoView.bottomAnchor, constant: 27),
            infoLabel.heightAnchor.constraint(equalToConstant: 16),
            infoLabel.widthAnchor.constraint(equalToConstant: 250),

            timeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 295 ),
            timeLabel.topAnchor.constraint(equalTo: infoView.bottomAnchor, constant: 27),
            timeLabel.heightAnchor.constraint(equalToConstant: 16),
            timeLabel.widthAnchor.constraint(equalToConstant: 100),

            infoLabelImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 52 ),
            infoLabelImage.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 29),
            infoLabelImage.heightAnchor.constraint(equalToConstant: 56),
            infoLabelImage.widthAnchor.constraint(equalToConstant: 51),

        ])


    }


}
