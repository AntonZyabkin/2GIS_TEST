//
//  ShowAPIService.swift
//  EM
//
//  Created by Anton Zyabkin on 13.03.2023.
//

import Foundation

protocol CategoriesAPIServicable {
    func getLatestViewed() async throws -> Categories
}

final class CategoriesAPIService{
    private let networkService: Networkable

    init(networkService: Networkable) {
        self.networkService = networkService
    }
}

extension CategoriesAPIService: CategoriesAPIServicable {
    func getLatestViewed() async throws -> Categories {
        try await networkService.requestAsync(HomeEndpoints.getCategories)
    }
}
