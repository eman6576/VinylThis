//
//  SavedVinylsViewController.swift
//  VinylThis
//
//  Created by Emanuel  Guerrero on 2/12/18.
//  Copyright © 2018 SwiftyGuerrero. All rights reserved.
//

import Koloda
import UIKit

/// A `UIViewController` thats responsible for configuring the view for the user's saved vinyls.
final class SavedVinylsViewController: UIViewController {
    
    // MARK: - Private Instance Attributes
    private weak var kolodaView: KolodaView!
    

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


// MARK: - KolodaViewDataSource
extension SavedVinylsViewController: KolodaViewDataSource {
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return 1
    }
    
    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .default
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        return UIView()
    }
}


// MARK: - KolodaViewDelegate
extension SavedVinylsViewController: KolodaViewDelegate {
    
}


// MARK: - Private Instance Methods
private extension SavedVinylsViewController {
    
    /// Sets up the default logic for the view.
    func setup() {
        guard isViewLoaded,
              let frame = UIApplication.shared.keyWindow?.frame else { return }
        kolodaView = KolodaView(frame: frame)
        kolodaView.dataSource = self
        kolodaView.delegate = self
        view.addSubview(kolodaView)
    }
}
