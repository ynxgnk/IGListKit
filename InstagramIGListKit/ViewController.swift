//
//  ViewController.swift
//  InstagramIGListKit
//
//  Created by Nazar Kopeika on 16.05.2023.
//

import UIKit
import IGListKit /* 1 */

final class ViewController: UIViewController { /* 2 add final */

    private var adapter: ListAdapter? /* 43 */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground /* 3 */
        setup() /* 4 */
    }
    
    override func viewDidAppear(_ animated: Bool) { /* 5 */
        super.viewDidAppear(animated) /* 6 */
    }
    
    private func setup() { /* 7 */
        //IGListKit
        let collectionView = createCollectionView() /* 39 */
        let adapter = ListAdapter(updater: ListAdapterUpdater(), viewController: self) /* 40 */
        adapter.collectionView = collectionView /* 41 */
        adapter.dataSource = self /* 42 */
        
        self.adapter = adapter /* 44 */
    }
    
    private func createCollectionView() -> UICollectionView { /* 8 */
        let layout = UICollectionViewFlowLayout() /* 9 */
        layout.minimumLineSpacing = 20 /* 10 */
        layout.minimumInteritemSpacing = 20 /* 11 */
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout) /* 12 */
        collectionView.backgroundColor = .systemRed /* 13 */
        view.addSubview(collectionView) /* 14 */
        collectionView.translatesAutoresizingMaskIntoConstraints = false /* 15 */
        NSLayoutConstraint.activate([ /* 16 */
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor), /* 17 */
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor), /* 17 */
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), /* 17 */
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor), /* 17 */
        ])
        
        return collectionView /* 18 */
    }


}

extension ViewController: ListAdapterDataSource { /* 45 */
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] { /* 46 */
        let data: [NSString] = ["Apple", "Facebook", "Google", "Amazon"] /* 49 */
        return data /* 50 */
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController { /* 47 */
        return LabelSectionController() /* 58 */
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? { /* 48 */
        return nil
    }
    
}
