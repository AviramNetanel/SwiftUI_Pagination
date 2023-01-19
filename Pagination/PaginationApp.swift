//
//  PaginationApp.swift
//  Pagination
//
//  Created by Aviram on 19/1/23.
//

import SwiftUI

@main
struct PaginationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ViewModel())
        }
    }
}
