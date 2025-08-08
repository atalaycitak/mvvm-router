import UIKit
import SwiftUI
import Combine


class BaseHostingController<Content: View, ViewModel: BaseViewModelProtocol>: UIHostingController<Content> {
   
    let contentView: Content
    let viewModel: ViewModel

    
    init(contentView: Content, viewModel: ViewModel) {
        self.contentView = contentView
        self.viewModel = viewModel
        super.init(rootView: contentView)
    }

    @MainActor required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = viewModel.title
        viewModel.viewDidLoad()
        setup()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.viewWillAppear()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.viewDidAppear()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        viewModel.viewWillDisappear()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel.viewDidDisappear()
    }
    
    open func setup() {}
}
