import UIKit
import SwiftUI

final class ProductListViewController: BaseHostingController<ProductListView, ProductListViewModel> {
    
    init() {
        let viewModel = ProductListViewModel()
        let view = ProductListView(viewModel: viewModel)
        super.init(contentView: view, viewModel: viewModel)
    }

    override func setup() {
        super.setup()
        setupNavigation()
        setupCallbacks()
    }
    
    private func setupNavigation() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "info.circle"), style: .plain, target: self, action: #selector(didTapInfoButton))
    }
    
    private func setupCallbacks() {
        viewModel.onProductSelected = { [weak self] product in
            let detailVC = ProductDetailViewController(product: product)
            self?.navigationController?.pushViewController(detailVC, animated: true)
        }
        viewModel.onShowInfoTapped = { [weak self] in
            let infoVC = InfoViewController()
            self?.present(infoVC, animated: true)
        }
    }
    
    @objc private func didTapInfoButton() {
        viewModel.onShowInfoTapped?()
    }

    @MainActor required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
