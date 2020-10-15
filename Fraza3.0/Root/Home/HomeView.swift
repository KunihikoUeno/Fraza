import SwiftUI

struct HomeView: View {
    
    private var categories: [Category] = []
    private let numberOfColumns = 3
    
    init() {
        do {
            guard let filepath = Bundle.main.url(forResource: "Categories", withExtension: "plist") else { return }
            let data = try Data(contentsOf: filepath)
            categories = try PropertyListDecoder().decode([Category].self, from: data)
        } catch {
            fatalError("Error occured with Categories.plist: \(error.localizedDescription)")
        }
    }
    
    private var numberOfRows: Int {
//        guard let categories = categories else { return 0 }
        return categories.count % 3 > 0
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
                                            NavigationLink(destination: CategoryView(categoryId: index, title: categories[index].title)) {
                                                VStack(spacing: 0) {
                                                    Image(categories[index].image)
                                                        .padding(.top, 5)
                                                        .padding(.bottom, 7)
                                                    Text("\(categories[index].title)")
                                                        .font(.custom("HelveticaNeue", size: 14))
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
