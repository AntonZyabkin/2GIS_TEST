import SwiftUI

struct ObjectsView: View {
    
    @ObservedObject var viewModel: ObjectViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.objectModel.objectsItems) { item in
                Button {
                    viewModel.open2GIS(item)
                } label: {
                    ObjectsItemView(url: item.image, name: item.name, description: item.description)
                    
                }
                .padding(.vertical, 10)
                .buttonStyle(.plain)
            }
        }
        .listStyle(.plain)
        .navigationTitle(viewModel.objectModel.category)
    }
}

struct ObjectsItemView: View {
    let url:  String
    let name: String
    let description: String
    
    var body: some View {
        
        HStack {
            URLImageView(urlString: url)
                .frame(width: 115, height: 80)
                .clipped()
                .cornerRadius(10)
                .padding(.trailing, 10)
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title2)
                    .lineLimit(2)
                
                Text(description)
                    .font(.callout)
                    .lineLimit(2)
            }
        }
    }
}

struct ObjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectsView(viewModel: ObjectViewModel())
    }
}
