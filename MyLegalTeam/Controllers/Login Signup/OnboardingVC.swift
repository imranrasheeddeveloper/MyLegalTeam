//
//  OnboardingVC.swift
//  IamHere
//
//  Created by Imran Rasheed on 06/09/2022.
//

import UIKit

class OnboardingVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    var slides: [OnboardingSlide] = []
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                nextBtn.setTitle("Get Started", for: .normal)
            } else {
                nextBtn.setTitle("Next", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        nextBtn.configure(13)
       
        
        slides = [
            OnboardingSlide(title: "Manage Hatching", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce a nunc." , image: #imageLiteral(resourceName: "Intro-4")),
            OnboardingSlide(title: "Manage Income/Expense", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce a nunc.", image: #imageLiteral(resourceName: "Intro-3")),
            OnboardingSlide(title: "Sell Birds Products", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce a nunc.", image: #imageLiteral(resourceName: "Intro-4")),
            OnboardingSlide(title: "Sell Birds Products", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce a nunc.", image: #imageLiteral(resourceName: "Intro-1"))
        ]
        
        pageControl.numberOfPages = slides.count
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        if currentPage == slides.count - 1 {
            let controller = storyboard?.instantiateViewController(identifier: "LoginVC")
            self.navigationController?.pushViewController(controller!, animated: true)
            //UserDefaults.standard.hasOnboarded = true
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
    
}

extension OnboardingVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
    }
}
struct OnboardingSlide {
    let title: String
    let description: String
    let image: UIImage
}
extension UserDefaults {
    private enum UserDefaultsKeys: String {
        case hasOnboarded
    }
    
    var hasOnboarded: Bool {
        get {
            bool(forKey: UserDefaultsKeys.hasOnboarded.rawValue)
        }
        
        set {
            setValue(newValue, forKey: UserDefaultsKeys.hasOnboarded.rawValue)
        }
    }
}
