//
//  ViewController.swift
//  Assignment
//
//  Created by Bishal kumar  on 05/01/23.
//



import UIKit

class ViewController: UIViewController {
    
    let viewModel = ItemsViewModel()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupCollectionView()
        
    }
    

    func setupCollectionView()
    {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewModel.getLayout())
        collectionView.frame = self.view.frame
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.15, alpha: 1.0)
        collectionView.register(MyCustomCollectionViewCell2.self, forCellWithReuseIdentifier: MyCustomCollectionViewCell2.identifier)
        collectionView.register(MyCustomCollectionViewCell1.self, forCellWithReuseIdentifier: MyCustomCollectionViewCell1.identifier)
        collectionView.register(Header.self, forSupplementaryViewOfKind: "categoryHeaderID", withReuseIdentifier: "headerID")
        self.view.addSubview(collectionView)
    }

}



//MARK: - DELEGATE AND DATASOURCE METHODS

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if section == 0
        {
            return viewModel.section1Items.count
        }
        else {
            return viewModel.section2Items.count
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }
    
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCustomCollectionViewCell1.identifier, for: indexPath) as! MyCustomCollectionViewCell1
            cell.titleLabel.text = viewModel.section1Items[indexPath.row].title
            cell.genreLabel.text = viewModel.section1Items[indexPath.row].genre
            cell.imageView.image = viewModel.section1Items[indexPath.row].thumbinal
            
            return cell
        }
        
        else
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCustomCollectionViewCell2.identifier, for: indexPath) as! MyCustomCollectionViewCell2
            cell.titleLabel.text = viewModel.section2Items[indexPath.row].title
            cell.genreLabel.text = viewModel.section2Items[indexPath.row].genre
            cell.episodeLabel.text = viewModel.section2Items[indexPath.row].episode
            cell.imageView.image = viewModel.section2Items[indexPath.row].thumbinal
            
            
            return cell
        }
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerID", for: indexPath)
        
        return header
    }
    
}

