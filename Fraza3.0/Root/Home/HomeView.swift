import SwiftUI

struct HomeView: View {
    
    let categories = DataManager.fetchData(type: Category.self, fileName: "Categories")
    let numberOfColumns = 3
    
    var body: some View {
        CustomNavigationView(title: "Home") {
            let columns: [GridItem] = Array(repeating: .init(.flexible()), count: numberOfColumns)
            let gridLength = UIScreen.main.bounds.size.width / CGFloat(numberOfColumns)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 0) {
                    ForEach(0..<categories.count) { index in
                        NavigationLink(destination: CategoryView(categoryId: index, title: categories[index].title)) {
                            VStack(spacing: 0) {
                                Image(categories[index].image)
                                    .padding(.bottom, 5)
                                Text("\(categories[index].title)")
                                    .font(.custom("HelveticaNeue", size: 14))
                                    .foregroundColor(.textColor)
                            }
                            .padding(.top, 21)
                        }
                    }
                    .frame(width: gridLength, height: gridLength)
                }
            }
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
