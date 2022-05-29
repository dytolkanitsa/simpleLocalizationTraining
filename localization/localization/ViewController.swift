//
//  ViewController.swift
//  localization
//
//  Created by Толканица Дарья Юрьевна on 29.05.2022.
//

import UIKit

class ViewController: UIViewController {

    private var testStackView: UIStackView = {
            let testStackView = UIStackView()
        testStackView.translatesAutoresizingMaskIntoConstraints = false
        testStackView.backgroundColor = .systemYellow
            
        testStackView.axis = .vertical
        testStackView.distribution = .fillEqually
        testStackView.alignment = .fill
        testStackView.spacing = 20
        testStackView.layoutMargins = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
        testStackView.isLayoutMarginsRelativeArrangement = true
            return testStackView
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupStackConstraints()
        putLabelsInStack()
    }

    private func setupStackConstraints() {
         view.addSubview(testStackView)

         NSLayoutConstraint.activate([
            testStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            testStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            testStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            testStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)])
     }
    
    private func createLabel(withColor color: UIColor, title: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.heightAnchor.constraint(equalToConstant: 55).isActive = true
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.text = " \(title)"
        label.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 20)
        label.backgroundColor = color
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 10
        label.textColor = .white
        return label
    }
    
    private func pineapplesCountUniversal(count: UInt) -> String{
            
            let formatString : String = NSLocalizedString("johns pineapples count",
                                                          comment: "Johns pineapples count string format to be found in Localized.stringsdict")
            let resultString : String = String.localizedStringWithFormat(formatString, count)
            return resultString;
    }
    
    private func putLabelsInStack() {
        testStackView.addArrangedSubview(createLabel(withColor: .systemCyan , title: pineapplesCountUniversal(count: 0)))
        testStackView.addArrangedSubview(createLabel(withColor: .systemCyan , title: pineapplesCountUniversal(count: 1)))
        testStackView.addArrangedSubview(createLabel(withColor: .systemCyan , title: pineapplesCountUniversal(count: 2)))
        testStackView.addArrangedSubview(createLabel(withColor: .systemCyan , title: pineapplesCountUniversal(count: 7)))
        testStackView.addArrangedSubview(createLabel(withColor: .systemCyan , title: pineapplesCountUniversal(count: 11)))
        testStackView.addArrangedSubview(createLabel(withColor: .systemCyan , title: pineapplesCountUniversal(count: 21)))
    }
}

