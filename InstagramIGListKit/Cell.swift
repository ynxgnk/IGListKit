//
//  Cell.swift
//  InstagramIGListKit
//
//  Created by Nazar Kopeika on 16.05.2023.
//

import UIKit /* 38 */

final class MyCell: UICollectionViewCell { /* 19 */
    let label: UILabel = { /* 20 */
        let label = UILabel() /* 21 */
        label.translatesAutoresizingMaskIntoConstraints = false /* 22 */
        label.textAlignment = .center /* 23 */
        return label /* 24 */
    }()
    
    //MARK: - Init
    
    override init(frame: CGRect) { /* 25 */
        super.init(frame: frame) /* 26 */
        contentView.backgroundColor = .systemBlue /* 27 */
        contentView.addSubview(label) /* 28 */
        NSLayoutConstraint.activate([ /* 29 */
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor), /* 30 */
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor), /* 30 */
            label.topAnchor.constraint(equalTo: contentView.topAnchor), /* 30 */
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor), /* 30 */
        ])
    }
    
    required init?(coder: NSCoder) { /* 31 */
        fatalError() /* 32 */
    }
    
    override func prepareForReuse() { /* 33 */
        super.prepareForReuse() /* 34 */
        label.text = nil /* 35 */
    }
    
    func configure(with text: String?) { /* 36 */
        label.text = text /* 37 */
    }
    
}

