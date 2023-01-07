//
//  ViewController.swift
//  Assignment
//
//  Created by Bishal kumar  on 05/01/23.
//



import UIKit

class ViewController: UIViewController {
    
    
    let section1Manager = Section1Manager()
    let section2Manager = Section2Manager()

    override func viewDidLoad() {
    
      super.viewDidLoad()
        setupCollectionView()
    
    }
    

    func setupCollectionView()
    {
        let searchCollectionView = UICollectionView(frame: .zero, collectionViewLayout: getCompositionalLayout())
        searchCollectionView.frame = self.view.frame
        searchCollectionView.delegate = self
        searchCollectionView.dataSource = self
        
        searchCollectionView.register(MyCustomCollectionViewCell2.self, forCellWithReuseIdentifier: MyCustomCollectionViewCell2.identifier)
        searchCollectionView.register(MyCustomCollectionViewCell1.self, forCellWithReuseIdentifier: MyCustomCollectionViewCell1.identifier)
        searchCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "UICollectionViewCell")
        searchCollectionView.register(Header.self, forSupplementaryViewOfKind: "categoryHeaderID", withReuseIdentifier: "headerID")
      
  
        self.view.addSubview(searchCollectionView)
    }
    

    
    
    
    func getCompositionalLayout() -> UICollectionViewCompositionalLayout
    
    {
        
        let layout = UICollectionViewCompositionalLayout { SectionNumber, env in
            
            
            if SectionNumber == 0
            {
                let carousalItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/3), heightDimension: .fractionalHeight(1)))
                
                carousalItem.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
                
                let carousalGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(250)), subitems: [carousalItem])
                
                let section = NSCollectionLayoutSection(group: carousalGroup)
                section.orthogonalScrollingBehavior = .continuous
                
                
                return section
            }
            
            
        else
            {
                let Item1 = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalHeight(1)))
       
                Item1.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
                
                let nestedGroup1Item1 =  NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/2)))
                   nestedGroup1Item1.contentInsets =  NSDirectionalEdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1)
                
                
                let nestedGroup1 = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalHeight(1)), subitems: [nestedGroup1Item1])
                let nestedGroup1Item2 =  NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/2)))
                nestedGroup1Item2.contentInsets =  NSDirectionalEdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1)
                
                let nestedGroup2 = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalHeight(1)), subitems: [nestedGroup1Item2])
                
                let containerGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(300)), subitems: [nestedGroup1,nestedGroup2])
                
                
          
                let section = NSCollectionLayoutSection(group: containerGroup)
                section.orthogonalScrollingBehavior = .continuous
              
                section.boundarySupplementaryItems = [ .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(40)), elementKind: "categoryHeaderID", alignment: .topLeading)]
            
                return section
                                                  
                
                
            }
        }
        
        return layout
        
    }
    

}





extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
    if section == 0
        {
        return 6
    }
        else {
            return 8
        }
}
    
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }
    
    
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCustomCollectionViewCell1.identifier, for: indexPath) as! MyCustomCollectionViewCell1
            cell.label1.text = section1Manager.section1Items[indexPath.row].title
            cell.label2.text = section1Manager.section1Items[indexPath.row].genre
            cell.imageView.image = section1Manager.section1Items[indexPath.row].thumbinal
    
            return cell
        }
        
        else
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCustomCollectionViewCell2.identifier, for: indexPath) as! MyCustomCollectionViewCell2
            cell.label1.text = section2Manager.section2Items[indexPath.row].title
            cell.label2.text = section2Manager.section2Items[indexPath.row].genre
            cell.label3.text = section2Manager.section2Items[indexPath.row].episode
            cell.imageView.image = section2Manager.section2Items[indexPath.row].thumbinal
            
            cell.backgroundColor = .red
            return cell
        }
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerID", for: indexPath)
        return header
    }
    
}

