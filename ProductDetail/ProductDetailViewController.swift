import UIKit
import SwiftUI

final class ProductDetailViewController: BaseHostingController<ProductDetailView, ProductDetailViewModel> {
    init(product: Product) {
        let viewModel = ProductDetailViewModel(product: product)
        let view = ProductDetailView(viewModel: viewModel)
        super.init(contentView: view, viewModel: viewModel)
    }

    @MainActor required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
