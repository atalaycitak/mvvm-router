import SwiftUI

struct ProductListView: View {
    @ObservedObject var viewModel: ProductListViewModel
    
    var body: some View {
        ZStack {
            List(viewModel.products) { product in
                HStack(spacing: 12) {
                    AsyncImage(url: URL(string: product.photo)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        
                    }
                    .frame(width: 60, height: 60)
                    .cornerRadius(8)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(product.title)
                            .font(.headline)
                            .foregroundColor(.primary)
                            .lineLimit(2)
                        
                        Text(product.priceFormatted)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text("\(product.location.cityName) / \(product.location.townName)")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    viewModel.navigateToDetail(product: product)
                }
            }
            .listStyle(InsetGroupedListStyle())
            
        }
        .navigationTitle("İlandaki Araçlar")
    }
}
