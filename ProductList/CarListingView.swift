import Kingfisher
import SwiftUI

struct CarListingView: View {
    @ObservedObject var viewModel: ProductListViewModel

    var body: some View {

        ZStack {
            if viewModel.isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(2)
            } else if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
            } else {
                List(viewModel.products) { product in
                    HStack(spacing: 12) {
                        KFImage(URL(string: product.photo))
                            .resizable()
                            .scaledToFill()
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
                        viewModel.navigateToDetail(listing: product)
                    }
                }
                .listStyle(InsetGroupedListStyle())
            }
        }
        .navigationTitle("İlanlardaki Araçlar")
        .onAppear {
            viewModel.fetchProducts()
        }
    }
}
