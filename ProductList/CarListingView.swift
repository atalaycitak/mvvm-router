import Kingfisher
import SwiftUI

struct CarListingView: View {
    @ObservedObject var viewModel: ProductListViewModel

    var body: some View { //data structlar

        ZStack {
            if viewModel.isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(2)
            } else if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
            } else {
                List(viewModel.cars) { car in
                    HStack(spacing: 12) { //kf image konfigürasyon
                        if URL(string: car.photo) != nil {
                            KFImage(URL(string: car.photo.replacingOccurrences(of: "{0}", with: "160x120")))
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .cornerRadius(8)
                                .clipped()
                        } else {
                            Text("Invalid URL")
                        }
                        VStack(alignment: .leading, spacing: 4) {
                            Text(car.title)
                                .font(.headline)
                                .foregroundColor(.primary)
                                .lineLimit(2)

                            Text(car.priceFormatted)
                                .font(.subheadline)
                                .foregroundColor(.secondary)

                            Text("\(car.location.cityName) / \(car.location.townName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }

                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        viewModel.navigateToDetail(listing: car)
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
