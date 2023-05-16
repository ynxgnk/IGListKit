//
//  SectionController.swift
//  InstagramIGListKit
//
//  Created by Nazar Kopeika on 16.05.2023.
//

import IGListKit /* 51 */

final class LabelSectionController: ListSectionController { /* 52 */
    
    private var text: String? /* 61 */
    
    override init() { /* 53 */
        super.init() /* 54 */
        
        inset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5) /* 67 */
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell { /* 55 */
        let cell = collectionContext!.dequeueReusableCell(of: MyCell.self, for: self, at: index) as! MyCell /* 64 */
        cell.configure(with: text) /* 66 */
        return cell /* 65 */
    }
    
    override func sizeForItem(at index: Int) -> CGSize { /* 56 */
        return CGSize(width: collectionContext!.containerSize.width-10, height: 200) /* 59 */
    }
    
    override func didUpdate(to object: Any) { /* 60 */
        self.text = object as? String /* 63 */
    }
    
    override func didSelectItem(at index: Int) { /* 57 */
        print("Selected: \(String(describing: text))") /* 62 */
    }
}

