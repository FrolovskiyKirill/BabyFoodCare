//
//  DetaiBabyFoodCarelView.swift
//  BabyFoodCare
//
//  Created by Kirill Frolovskiy on 12.11.2023.
//
import SwiftUI

struct DetailBabyFoodCarelView: View {
  let babyFoodCare: BabyFoodCareModel

  //  var body: some View {
  //      VStack {
  //          VStack {
  //              Text(babyFoodCare.title).font(.headline)
  //                  .offset(y: -10)
  //          }
  //          .padding()
  //          .frame(maxWidth: .infinity)
  //          .frame(height: 100)
  ////          .background(
  ////              Rectangle().fill(.ultraThinMaterial)
  ////                  .blur(radius: 20)
  ////                  .offset(y: -20)
  ////          )
  ////          Spacer()
  //      }
  ////    Spacer()
  //      .frame(maxWidth: .infinity)
  //      .background(
  //        Image("basketOfVegetables")
  //          .resizable()
  //          .scaledToFit()
  //          .frame(height: 300))
  ////          .cornerRadius(20)
  //          .overlay(
  //            RoundedRectangle(cornerRadius: 20)
  //              .stroke(.linearGradient(colors: [.white.opacity(0.3), .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
  //          )
  //      .overlay(
  //          VStack {
  //              Text("Data technology futuristic illustration. A wave of bright particles. Technological 3D landscape. Big data visualization. Network of dots.")
  //                  .font(.subheadline)
  //
  //              Spacer()
  //
  //              HStack(spacing: 10) {
  //                  VStack(alignment: .leading) {
  //                      Text("Size").font(.subheadline).foregroundStyle(.secondary)
  //                      Text("816x1456")
  //                  }
  //                  Divider()
  //                  VStack(alignment: .leading) {
  //                      Text("Type").font(.subheadline).foregroundStyle(.secondary)
  //                      Text("Upscale")
  //                  }
  //                  Divider()
  //                  VStack(alignment: .leading) {
  //                      Text("Date").font(.subheadline).foregroundStyle(.secondary)
  //                      Text("Today 5:19")
  //                  }
  //              }
  //              .font(.subheadline)
  //              .fontWeight(.semibold)
  //              .offset(y: 10)
  //
  //              Spacer()
  //
  //              HStack {
  //                  HStack {
  //                      Image(systemName: "ellipsis")
  //                      Divider()
  //                      Image(systemName: "sparkle.magnifyingglass")
  //                      Divider()
  //                      Image(systemName: "face.smiling")
  //                  }
  //                  .padding()
  //                  .frame(height: 44)
  //                  .background(.linearGradient(colors: [.clear, .black.opacity(0.3)], startPoint: .topLeading, endPoint: .bottomTrailing))
  //                  .overlay(
  //                      RoundedRectangle(cornerRadius: 20)
  //                          .stroke(.linearGradient(colors: [.white.opacity(0.3), .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
  //                  )
  //                  .cornerRadius(20)
  //                  .offset(x: -20, y: 20)
  //
  //                  Spacer()
  //
  //                  HStack {
  //                     Image(systemName: "square.and.arrow.down")
  //                  }
  //                  .padding()
  //                  .frame(height: 44)
  //                  .background(.linearGradient(colors: [.clear, .black.opacity(0.3)], startPoint: .topLeading, endPoint: .bottomTrailing))
  //                  .overlay(
  //                      RoundedRectangle(cornerRadius: 20)
  //                          .stroke(.linearGradient(colors: [.white.opacity(0.3), .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
  //                  )
  //                  .cornerRadius(20)
  //                  .offset(x: 20, y: 20)
  //              }
  //          }
  //          .frame(height: 140)
  //          .padding(20)
  //          .frame(maxWidth: .infinity)
  //          .background(.ultraThinMaterial)
  //          .cornerRadius(20)
  //          .overlay(
  //              RoundedRectangle(cornerRadius: 20)
  //                  .stroke(.linearGradient(colors: [.white.opacity(0.3), .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
  //          )
  //          .offset(y: 80)
  //          .padding(20)
  //      )
  //    Spacer()
  //  }


  //    var body: some View {
  //        ZStack(alignment: .top) {
  //            // Image at the top, ignoring safe area
  //            Image("basketOfVegetables")
  //                .resizable()
  //                .scaledToFit()
  ////                .aspectRatio(contentMode: .fill)
  ////                .frame(height: 500)
  //                .edgesIgnoringSafeArea(.top)
  //            // Other content goes below the image
  //            VStack {
  //
  //                // Add your other views here
  //
  //                Spacer() // Spacer to push content to the bottom
  //            }
  //            .padding()
  //        }
  //        .navigationTitle(babyFoodCare.title)
  //    }
//  var body: some View {
//    GeometryReader { geo in
//      ZStack {
//        Image(.basketOfVegetables)
//          .resizable()
//          .scaledToFill()
//          .edgesIgnoringSafeArea(.all)
//          .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
//        VStack(alignment: .center, spacing: 16) {
//          Image(systemName: "sparkles")
//            .imageScale(.large)
//          Text("Большинство полезных свойств сохраняет и вареный или тушеный болгарский перец; с какого возраста разрешено давать его малышу — раньше, чем свежий, уже с 10 месяцев. И аллергию он вызывает реже.Но есть и минусы. С этим овощем (неважно, в каком виде) будьте осторожнее при проблемах с желудочно-кишечным трактом, почками, печенью. Аллергические реакции возможны как на сами плоды, так и на то, чем они обработаны для транспортировки, поэтому хорошо промывайте и выбирайте для знакомства зеленые, а уже потом желтые и красные.")
//            .font(.subheadline)
//          HStack {
//            VStack {
//              Text("Калории")
//                .font(.subheadline)
//                .fontWeight(.semibold)
//                .foregroundStyle(.secondary)
//              Text("139,9")
//                .font(.subheadline)
//                .fontWeight(.semibold)
//
//            }
//            Spacer()
//            Divider()
//            Spacer()
//            VStack {
//              Text("Белки")
//                .font(.subheadline)
//                .fontWeight(.semibold)
//                .foregroundStyle(.secondary)
//              Text("12,2")
//                .font(.subheadline)
//                .fontWeight(.semibold)
//
//            }
//            Spacer()
//            Divider()
//            Spacer()
//            VStack {
//              Text("Жиры")
//                .font(.subheadline)
//                .fontWeight(.semibold)
//                .foregroundStyle(.secondary)
//              Text("14,7")
//                .font(.subheadline)
//                .fontWeight(.semibold)
//
//            }
//            Spacer()
//            Divider()
//            Spacer()
//            VStack {
//              Text("Углеводы")
//                .font(.subheadline)
//                .fontWeight(.semibold)
//                .foregroundStyle(.secondary)
//              Text("24,7")
//                .font(.subheadline)
//                .fontWeight(.semibold)
//
//            }
//          }
//          .frame(height: 44)
//        }
//      }
//      .padding(16)
//      .background(.regularMaterial)
//      .cornerRadius(30)
//    }
//
//  }
  var body: some View {
    ScrollView {
      ZStack {
        VStack(alignment: .leading) {
          ZStack(alignment: .topTrailing) {
            Image(.basketOfVegetables)
              .resizable()
              .ignoresSafeArea(edges: .top)
              .frame(height: 300)
          }
          VStack(alignment: .leading) {
            HStack {
              Text("Pepper")
                .font(.title2 .bold())
              Spacer()
              Text("Vegetables")
                .font(.title2 .bold())
            }
            HStack {
              VStack {
                Text("Калории")
                  .font(.subheadline)
                  .fontWeight(.semibold)
                  .foregroundStyle(.secondary)
                Text("139,9")
                  .font(.subheadline)
                  .fontWeight(.semibold)

              }
              Spacer()
              Divider()
              Spacer()
              VStack {
                Text("Белки")
                  .font(.subheadline)
                  .fontWeight(.semibold)
                  .foregroundStyle(.secondary)
                Text("12,2")
                  .font(.subheadline)
                  .fontWeight(.semibold)

              }
              Spacer()
              Divider()
              Spacer()
              VStack {
                Text("Жиры")
                  .font(.subheadline)
                  .fontWeight(.semibold)
                  .foregroundStyle(.secondary)
                Text("14,7")
                  .font(.subheadline)
                  .fontWeight(.semibold)

              }
              Spacer()
              Divider()
              Spacer()
              VStack {
                Text("Углеводы")
                  .font(.subheadline)
                  .fontWeight(.semibold)
                  .foregroundStyle(.secondary)
                Text("24,7")
                  .font(.subheadline)
                  .fontWeight(.semibold)

              }
            }
            .frame(height: 44)
            Text("Description")
              .font(.title3)
              .fontWeight(.medium)
            Spacer()
            Text("Большинство полезных свойств сохраняет и вареный или тушеный болгарский перец; с какого возраста разрешено давать его малышу — раньше, чем свежий, уже с 10 месяцев. И аллергию он вызывает реже.Но есть и минусы. С этим овощем (неважно, в каком виде) будьте осторожнее при проблемах с желудочно-кишечным трактом, почками, печенью. Аллергические реакции возможны как на сами плоды, так и на то, чем они обработаны для транспортировки, поэтому хорошо промывайте и выбирайте для знакомства зеленые, а уже потом желтые и красные.")
          }
          .padding()
        }
      }
    }
//    .background(Image(.basketOfVegetables)
//      .resizable()
//      .ignoresSafeArea(edges: .top)
//      .frame(height: 300)
//      .offset(y: -300)
//    )
  }
}

#Preview {
  DetailBabyFoodCarelView(babyFoodCare: MockData.sampleBabyFoodCare)
}
