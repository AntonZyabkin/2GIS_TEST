//
//  CategoriesView.swift
//  2GIS_TEST
//
//  Created by Anton Zyabkin on 16.05.2023.
//

import SwiftUI

let ITEM_HEIGHT: CGFloat = 40

struct CategoriesView: View {
    
    @ObservedObject var viewModel: CategoriesViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.categoriesModel.categoryItems) { item in
                    NavigationLink {
                        ObjectsView(viewModel: ObjectViewModel(objects: viewModel.getObjects(type: item.data.type), categotyType: item.data.type))
                    } label: {
                        CategoryItemView(name: item.data.name, count: item.data.count, color: Color(item.data.color))
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Категории")
        }
        .alert(isPresented: $viewModel.showingAlert) {
            Alert(title: Text("Load data error"), message: nil, dismissButton: .default(Text("Ok")) {
                viewModel.showingAlert.toggle()
            })
        }
    }
}

struct CategoryItemView: View {
    
    let name: String
    let count: Int
    let color: Color
    
    var body: some View {
        HStack {
            Text(name)
                .font(.title2)
                .foregroundColor(.primary)
                .lineLimit(1)
            Spacer()
            ZStack(alignment: .center) {
                Circle()
                    .foregroundColor(color)
                    .background(Color.clear)
                Text(String(count))
                    .foregroundColor(.primary)
                    .font(.title2)
            }
            .frame(width: ITEM_HEIGHT, height: ITEM_HEIGHT)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView(viewModel: CategoriesViewModel(apiService: CategoriesAPIService(networkService: NetworkService(decoderService: DecoderService()))))
    }
}
