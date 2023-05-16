import SwiftUI

struct URLImageView: View {
    
    @ObservedObject var urlImageModel: URLImageModel
    
    init(urlString: String?) {
        self.urlImageModel = URLImageModel(urlString: urlString)
    }
    var body: some View {
        
        Image(uiImage: urlImageModel.image ?? UIImage())
            .resizable()
            .scaledToFill()
            .background(Color.gray)
    }
}

struct UrlImageView_Previews: PreviewProvider {
    static var previews: some View {
        URLImageView(urlString: nil)
    }
}
