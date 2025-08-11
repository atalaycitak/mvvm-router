import UIKit
import SwiftUI

final class ProductListViewController: BaseHostingController<ProductListView, ProductListViewModel> {
    

    override func setup() {
        super.setup()
        setupNavigation()
    }
    
    private func setupNavigation() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "info.circle"), style: .plain, target: self, action: #selector(didTapInfoButton))
    }
    
        
    @objc private func didTapInfoButton() {
        viewModel.navigateToInfo()
    }

}
