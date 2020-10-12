import SwiftUI

struct HomeView: View {
    
    private let categories = createHomeIcons()
    private let numberOfColumns = 3
    
    private var numberOfRows: Int {
        categories.count % 3 > 0
            ? categories.count / 3 + 1
            : categories.count / 3
    }
    
    private func getIndex<T>(for items: [T], _ row: Int, _ column: Int, _ numberOfColumns: Int) -> Int? {
        let index = row * numberOfColumns + column
        return index < items.count ? index : nil
    }
    
    var body: some View {
        CustomNavigationView(title: "Home") {
            GeometryReader { geometry in
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(0..<numberOfRows) { row in
                            HStack(spacing: 0) {
                                ForEach(0..<numberOfColumns) { column in
                                    if let index = getIndex(for: categories, row, column, numberOfColumns) {
                                        VStack(spacing: 0) {
                                            NavigationLink(destination: CategoryView(categoryId: index)) {
                                                VStack(spacing: 0) {
                                                    Image(uiImage: categories[index].image)
                                                        .padding(.top, 5)
                                                        .padding(.bottom, 7)
                                                    Text("\(categories[index].title)")
                                                        .font(.custom("HelveticaNeue-Light", size: 14))
                                                        .foregroundColor(.textColor)
                                                }
                                            }
                                        }
                                        .frame(width: geometry.size.width / CGFloat(numberOfColumns), height: geometry.size.width / CGFloat(numberOfColumns))
                                    } else {
                                        Spacer()
                                    }
                                }
                            }
                        }
                    }
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
