//
//  DateCell.swift
//  calendar
//
//  Created by Андрей Антонов on 14.03.2021.
//  Copyright © 2021 Андрей Антонов. All rights reserved.
//

import Foundation
import UIKit

class DateCell : UICollectionViewCell {
    
    @IBOutlet weak var selectionView: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionView.layer.cornerRadius = selectionView.frame.height/2
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        selectionView.backgroundColor = UIColor.clear
    }
    
}
