//
//  AppApp.swift
//  App
//
//  Created by Haakon Langaas Lageng on 04/05/2022.
//

import SwiftUI
 
@main
struct Main: App {
    var body: some Scene {
        WindowGroup {
			MainView(selectedTab: TabItem.friends)
        }
    }
}
