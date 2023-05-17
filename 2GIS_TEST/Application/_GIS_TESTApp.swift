//
//  _GIS_TESTApp.swift
//  2GIS_TEST
//
//  Created by Anton Zyabkin on 16.05.2023.
//

import SwiftUI

@main
struct _GIS_TESTApp: App {
    let networcService = NetworkService(decoderService: DecoderService())
    
    var body: some Scene {
        WindowGroup {
            CategoriesView(viewModel: CategoriesViewModel(apiService: CategoriesAPIService(networkService: networcService)))
        }
    }
}
