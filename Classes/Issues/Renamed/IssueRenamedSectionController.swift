//
//  IssueRenamedSectionController.swift
//  Freetime
//
//  Created by Ryan Nystrom on 7/12/17.
//  Copyright © 2017 Ryan Nystrom. All rights reserved.
//

import Foundation
import IGListKit

final class IssueRenamedSectionController: ListGenericSectionController<IssueRenamedModel> {

    override func sizeForItem(at index: Int) -> CGSize {
        guard let width = collectionContext?.containerSize.width,
            let object = self.object
            else { fatalError("Missing context") }
        return CGSize(width: width, height: object.titleChangeString.textViewSize(width).height)
    }

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(of: IssueRenamedCell.self, for: self, at: index) as? IssueRenamedCell,
            let object = self.object
            else { fatalError("Missing context, object, or cell wrong type") }
        cell.configure(object)
        return cell
    }
    
}