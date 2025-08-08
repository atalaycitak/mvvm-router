import SwiftUI

struct ProductListView: View {
    @ObservedObject var viewModel: ProductListViewModel
    
    var body: some View {
        ZStack {
            List(viewModel.products) { product in
                HStack {
                    Image(product.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50 , height: 50)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading) {
                        Text(product.name)
                            .font(.headline)
                            .foregroundColor(.primary)
                        Text(String(format: "₺%.2f", product.price))
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    viewModel.onProductSelected?(product)
                }
            }
            .listStyle(InsetGroupedListStyle())
            
            if viewModel.isLoading {
                ProgressView()
            }
        }
    }
}
