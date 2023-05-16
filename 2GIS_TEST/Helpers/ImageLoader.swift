
import Foundation
import SwiftUI

class URLImageModel: ObservableObject {
    @Published var image: UIImage?
    
    var imageCache = ImageCacha.getImageCache()
    var urlString: String?
    
    init(urlString: String?) {
        self.urlString = urlString
        loadImage()
    }
    
    func loadImage() {
        if loadImageFromCache() {
            return
        }
        loadImageFromURL()
    }
    
    func loadImageFromCache() -> Bool {
        guard let urlString = urlString else {
            return false
        }
        
        guard let cacheImage = imageCache.get(forKey: urlString) else {
            return false
        }
        
        image = cacheImage
        return true
    }
    
    func loadImageFromURL() {
        
        guard let url = URL(string: urlString ?? "") else { return }

        let task = URLSession.shared.dataTask(with: url, completionHandler: getImageFromResponse(data: response: error:))
        task.resume()
    }
    
    func getImageFromResponse(data: Data?, response: URLResponse?, error: Error?) {
        guard error == nil else {
            print(error)
            return
        }
        guard let data = data else {
            print("no data found")
            return
        }
        DispatchQueue.main.async {
            guard let loadedImage = UIImage(data: data) else {
                print("image decoding error")
                return
            }
            self.image = loadedImage
            
            guard let url = self.urlString else {
                return
            }
            self.imageCache.set(image: loadedImage, forKey: url)
        }
    }
}

class ImageCacha {
    var cache = NSCache<NSString, UIImage>()
    func get(forKey: String) -> UIImage? {
        return cache.object(forKey: NSString(string: forKey))
    }
    func set(image: UIImage, forKey: String) {
        cache.setObject(image ,forKey: NSString(string: forKey))
    }
}


extension ImageCacha {
    private static var imageCache = ImageCacha()
    static func getImageCache() -> ImageCacha {
        return imageCache
    }
}
