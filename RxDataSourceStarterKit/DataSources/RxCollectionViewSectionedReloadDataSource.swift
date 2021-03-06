//
//  RxCollectionViewSectionedReloadDataSource.swift
//  RxExample
//
//  Created by Krunoslav Zaher on 7/2/15.
//  Copyright (c) 2015 Krunoslav Zaher. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class RxCollectionViewSectionedReloadDataSource<S: SectionModelType> : RxCollectionViewSectionedDataSource<S>
                                                                     , RxCollectionViewDataSourceType {
    typealias Element = [S]
    
    func collectionView(collectionView: UICollectionView, observedEvent: Event<Element>) {
        switch observedEvent {
        case .Next(let boxedSections):
            setSections(boxedSections.value)
            collectionView.reloadData()
        case .Error(let error):
            #if DEBUG
                fatalError("Binding error to UI")
            #endif
        case .Completed:
            break
        }
    }
}