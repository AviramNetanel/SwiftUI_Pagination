//
//  ViewModel.swift
//  tmpAppForm
//
//  Created by Aviram on 18/1/23.
//

import Foundation
import SwiftUI

final class ViewModel: ObservableObject {
    
    @Published var isLoading : Bool = false //for progress animation
    @Published var items : Array<String>
    
    private var counter :Int = 0
    
    init(){
        items = Array()
        for i in 1...15{
            items.append("item \(i)")
            counter += 1
        }
    }
    
    //load more data...
    func loadMoreContent(){
        if !self.isLoading{
            self.isLoading = true
            sendFakeRequest()
        }
    }
    
    //send a fake network request...
    func sendFakeRequest() {
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            for _ in 1...10 {
                self.items.append("item \(self.counter)")
                self.counter+=1
            }
            self.isLoading = false
        }
    }
}
