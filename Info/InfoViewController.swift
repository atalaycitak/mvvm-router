import UIKit
import SwiftUI

final class InfoViewController: BaseHostingController<InfoView, InfoViewModel> {
    
    init() {
        let viewModel = InfoViewModel()
        let view = InfoView(viewModel: viewModel)
        super.init(contentView: view, viewModel: viewModel)
        self.modalPresentationStyle = .pageSheet
    }

    override func setup() {
        super.setup()
        setupCallbacks()
    }
    
    private func setupCallbacks() {
        viewModel.onDismiss = { [weak self] in
            self?.dismiss(animated: true)
        }
    }

    @MainActor required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
