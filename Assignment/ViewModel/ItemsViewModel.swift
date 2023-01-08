//
//  ItemsViewModel.swift
//  Assignment
//
//  Created by Bishal kumar  on 07/01/23.
//

import UIKit

class ItemsViewModel
{
    var section1Items = [Section1(title: "Fifty Shades of Grey ", thumbinal:UIImage(named: "fiftyShadesOfGrey") , genre: "thriller/Suspense"),Section1(title: "Stranger things ", thumbinal: UIImage(named: "strangerThings"), genre: "Scifi/fantasy"),Section1(title: "The Boys ", thumbinal: UIImage(named: "theBoys"), genre: "Drama/Action"),Section1(title: "Conjuring", thumbinal:UIImage(named: "conjuring") , genre: "horror"),Section1(title: "It", thumbinal: UIImage(named: "it"), genre: "horror"), Section1(title: "it Follows", thumbinal: UIImage(named: "itfollows"), genre: "thriller")]
    
    var section2Items = [Section2(title: "Kota Factory", thumbinal: UIImage(named: "kotaFactory"), genre: "Eduction", episode: "Episode 3"),Section2(title: "You", thumbinal: UIImage(named: "you"), genre: "crime", episode:"Episode 5"),Section2(title: "Dahmer", thumbinal: UIImage(named: "dahmer"), genre: "thriller", episode: "Episode 7"),Section2(title: "Dark", thumbinal: UIImage(named: "dark"), genre: "suspense", episode: "Episode 1"),Section2(title: "Lucifer", thumbinal: UIImage(named: "lucifier"), genre: "fantasy", episode: "Episode 15"),Section2(title: "Vampire Diaries", thumbinal: UIImage(named: "tvd"), genre: "fantasy", episode: "Episode 21"),Section2(title: "The Boys", thumbinal: UIImage(named: "theBoys"), genre: "comedy", episode: "Episode 7"),Section2(title: "It", thumbinal: UIImage(named: "it"), genre: "Horror", episode: "Episode 3")]
    

    
    func getLayout() -> UICollectionViewCompositionalLayout
    {
            let layout = UICollectionViewCompositionalLayout { SectionNumber, env in
        
            if SectionNumber == 0
            {
                let Item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/3), heightDimension: .fractionalHeight(1)))
                
                Item.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(250)), subitems: [Item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                
                
                return section
            }
        
            else
            {
           
                let nestedGroup1Item =  NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/2)))
               
                nestedGroup1Item.contentInsets =  NSDirectionalEdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1)
               
                let nestedGroup1 = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalHeight(1)), subitems: [nestedGroup1Item])
               
                let nestedGroup2Item =  NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/2)))
                nestedGroup2Item.contentInsets =  NSDirectionalEdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1)
                
                let nestedGroup2 = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalHeight(1)), subitems: [nestedGroup2Item])
                
                let containerGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(280)), subitems: [nestedGroup1,nestedGroup2])
               
                let section = NSCollectionLayoutSection(group: containerGroup)
                section.orthogonalScrollingBehavior = .continuous
                
                section.boundarySupplementaryItems = [ .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(40)), elementKind: "categoryHeaderID", alignment: .topLeading)]
                
                return section
                
            }
        }
        return layout
    }

    
}
