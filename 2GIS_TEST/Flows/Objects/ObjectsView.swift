import SwiftUI

struct ObjectsView: View {
    
    @ObservedObject var viewModel: ObjectViewModel
    
    var body: some View {
        GeometryReader { geometry in
            List {
                
                ForEach(viewModel.objectModel) { item in
                    Button {
                        print(String(item.lat) + " " + String(item.lon))
                    } label: {
                        ObjectsItemView(url: item.image, name: item.name, description: item.description)
                    }
                    .buttonStyle(.plain)
                }
            }
            .listStyle(.plain)
        }
        .navigationTitle(viewModel.objectModel.category)
    }
}

struct ObjectsItemView: View {
    let url:  String
    let name: String
    let description: String
    
    var body: some View {
        
        HStack {
            AsyncImage(url: URL(string: url)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 105, height: 80)
            .cornerRadius(10)
            .padding(.trailing, 15)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title)
                    .lineLimit(2)
                
                Text(description)
                    .font(.title3)
                    .lineLimit(2)

            }
            .padding(.vertical, 5)
        }
    }
}

struct ObjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectsView(viewModel: ObjectViewModel(objects: [], categotyType: "test"))
    }
}
