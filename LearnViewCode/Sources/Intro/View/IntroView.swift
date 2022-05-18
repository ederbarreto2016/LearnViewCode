//
//  IntroView.swift
//  LearnViewCode
//
//  Created by Éder on 08/04/22.
//

import UIKit

class IntroView: UIView {
    
    private lazy var hellolabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Aprendendo view code"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubviews()
        constraintHelloLabel()
        constraintNameLabel()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubviews() {
        addSubview(hellolabel)
        addSubview(nameLabel)
    }

    private func constraintHelloLabel() {
        let constraint = [
            hellolabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            hellolabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]

        constraint.forEach { (item) in
            item.isActive = true
        }
    }

    private func constraintNameLabel() {
        let constraint = [
            nameLabel.topAnchor.constraint(equalTo: hellolabel.bottomAnchor, constant: 12),
            nameLabel.centerXAnchor.constraint(equalTo: hellolabel.centerXAnchor)
        ]

        constraint.forEach { (item) in
            item.isActive = true
        }
    }
}
