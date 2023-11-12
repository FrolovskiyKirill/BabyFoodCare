//
//  ContentView.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 28.10.2023.
//

import SwiftUI

struct BabyFoodCareTabView: View {
  var body: some View {
    TabView {
      BabyFoodCareListView()
        .tabItem {
          Image(systemName: "carrot")
          Text("Home")
        }
//      AccountView()
//        .tabItem {
//          Image(systemName: "person")
//          Text("Account")
//        }
      FavouriteView()
        .tabItem {
          Image(systemName: "star")
          Text("Favourite")
        }
    }
    .tint(Color("brandPrimary"))
  }
}

#Preview {
  BabyFoodCareTabView()
}
