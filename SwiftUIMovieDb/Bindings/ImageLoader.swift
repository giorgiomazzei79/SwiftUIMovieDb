//
//  ImageLoader.swift
//  SwiftUIMovieDb
//
//  Created by Giorgio Mazzei on 20/01/24.
//

import SwiftUI
import UIKit

private let _imageCache = NSCache<AnyObject, AnyObject>()

class ImageLoader: ObservableObject {
    
    @Published var image: UIImage?
    @Published var isLoading = false
    
    var imageCache = _imageCache
    
    func loadImage (with url: URL) {
        let urlString = url.absoluteString
        if let ImageFromCache = imageCache.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = ImageFromCache
            return
        }
    }
}
