//
//  OnboardingCollectionViewCell.swift
//  IamHere
//
//  Created by Imran Rasheed on 06/09/2022.
//
import UIKit
class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!

    func setup(_ slide: OnboardingSlide) {
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        descriptionLbl.text = slide.description
    }
}
