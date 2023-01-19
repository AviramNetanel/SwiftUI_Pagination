//
//  ContentView.swift
//  Pagination
//
//  Created by Aviram on 19/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
        
    var body: some View {
        ZStack{
            //Progress Loding View:
            if viewModel.isLoading{
                ProgressView().scaleEffect(2.0)
                    .progressViewStyle(.circular).tint(.red)
                    .zIndex(1)
            }
            
            List {
                ForEach(0..<$viewModel.items.count, id:\.self) { i in
                    ListViewCell(item: "\(viewModel.items[i])")
                        .onAppear(){
                            //if the last element is showed - load more...
                            if i+1 == viewModel.items.count{
                                self.viewModel.loadMoreContent()
                            }
                        }
                }//ForEach
            }//List
        }//ZStack
    }//body
}//View

struct ContentView_Previews: PreviewProvider {
    @State static var str = ""
    
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
