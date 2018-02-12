//
//  AlbumImageView.swift
//  VinylThis
//
//  Created by Emanuel  Guerrero on 2/12/18.
//  Copyright © 2018 SwiftyGuerrero. All rights reserved.
//

import Kingfisher
import SwiftyBeaver
import UIKit

/// A `UIImageView` representing the image view of an album.
final class AlbumImageView: UIImageView {
    
    // MARK: - Private Instance Attributes
    private let cornerRadius: CGFloat = 8
    
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    
    // MARK: - Public Instance Methods
    override func draw(_ rect: CGRect) {
        super.draw(rect)
    }
}


// MARK: - Kingfisher
extension AlbumImageView {
    
    /// Sets the image of the view with a url.
    ///
    /// - Parameter url: A `URL` representing the resource path to the image.
    func setImageWithUrl(_ url: URL) {
        let options = [KingfisherOptionsInfoItem.transition(ImageTransition.fade(1))]
        kf.setImage(with: url,
                    placeholder: #imageLiteral(resourceName: "icon-album-placeholder"),
                    options: options, progressBlock: nil) { [weak self] (image, error, _, _) in
            guard error == nil else {
                SwiftyBeaver.log(message: "Error loading image for: \(url)", level: .error)
                return
            }
            guard let strongSelf = self,
                  let downloadedImage = image else { return }
            strongSelf.contentMode = .scaleAspectFill
            strongSelf.image = downloadedImage
        }
    }
    
    /// Cancels downloading the image.
    func cancelImageDownload() {
        kf.cancelDownloadTask()
    }
}


// MARK: - Private Instance Methods
private extension AlbumImageView {
    
    /// Sets up the default logic for the view.
    func setup() {
        layer.cornerRadius = cornerRadius
    }
}
