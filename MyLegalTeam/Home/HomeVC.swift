//
//  HomeVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 14/07/2023.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var exploreBtn: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewB: UICollectionView!
    var data = ["chatImg","AlleyWave","chatImg","PeterRoy","PeterRoy"]
   var name = ["Jhony David","Alley Wave","Jhony David","PeterRoy","ElinaWilson"]
   var courtData = ["missedCourt","iNeedA","needABail","needCourt","courtDate","iNeedA"]
    var courtTitle = ["Missed Court","I Need A","Need A Bail","Need Court","Court Date","Generate"]
    var courtSubTitle = ["Date","Lawyer","Bondsman","Date","Reminder","File"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib(nibName: "HomeCollectionCell", bundle: nil),
                                forCellWithReuseIdentifier: "HomeCollectionCell")
        collectionViewB.register(UINib(nibName: "PicksCell", bundle: nil),
                                forCellWithReuseIdentifier: "PicksCell")

        exploreBtn.configure(13)
    }

}
extension HomeVC : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView {
                return data.count
        } else if collectionView == self.collectionViewB {
                return courtTitle.count
            }
    return 0

        }

     
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionCell", for: indexPath) as! HomeCollectionCell
        cell.collectionImg.image = UIImage(named: data[indexPath.row])
        cell.namelbl.text = name[indexPath.row]
        return cell
        }else if collectionView == self.collectionViewB{
            let cell = collectionViewB.dequeueReusableCell(withReuseIdentifier: "PicksCell", for: indexPath) as! PicksCell
            cell.picksImg.image = UIImage(named: courtData[indexPath.row])
            cell.titlelbl.text = courtTitle[indexPath.row]
            cell.subTitlelbl.text = courtSubTitle [indexPath.row]
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
        {
        if collectionView == self.collectionView {
        
        
        return CGSize(width: 120.0, height: 120.0)
        } else  {
            collectionView == self.collectionViewB
            return CGSize(width: 125, height: 125)
            
            }
            
        }
    }

