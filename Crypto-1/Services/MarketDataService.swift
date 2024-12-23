//
//  MarketDataService.swift
//  Crypto-1
//
//  Created by Şahin Karahan on 19.12.2024.
//

import Foundation
import Combine

class MarketDataService {
     
    @Published var marketData: MarketDataModel? = nil
    
    var marketDataSubscription: AnyCancellable?
    
    
    init() {
        getData()
    }
    
    func getData() {
    
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global")
        else { return }
        
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedGlobalData) in
                self?.marketData = returnedGlobalData.data
                self?.marketDataSubscription?.cancel()
            })
    }
}
