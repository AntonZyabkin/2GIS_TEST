import SwiftUI
import Kingfisher

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
                    .buttonStyle(.plain)
                }
            }
            .listStyle(.plain)
            .navigationTitle(viewModel.categoryName)
        }
}

struct ObjectsItemView: View {
    let url:  String
    let name: String
    let description: String

    var body: some View {

        HStack {
            KFImage(URL(string: url))
                .placeholder{ProgressView()}
                .resizable()
                .loadDiskFileSynchronously()
                .cacheMemoryOnly()
                .fade(duration: 1)
                .forceRefresh()
                .aspectRatio(contentMode: .fill)
                .frame(width: 105, height: 80)
                .cornerRadius(10)
                .padding(.trailing, 5)

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
        ObjectsView(viewModel: ObjectViewModel(categoryType: "", categoryName: "", objectsItems: []))
    }
}
