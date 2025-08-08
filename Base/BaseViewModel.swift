import Foundation
import Combine


public protocol BaseViewModelProtocol: ObservableObject {
    var title: String { get }
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
    func viewDidDisappear()
}

open class BaseViewModel: BaseViewModelProtocol {
    @Published public var isLoading: Bool = false
    @Published public var title: String = ""

    public init() {}

    open func viewDidLoad() {}
    open func viewWillAppear() {}
    open func viewDidAppear() {}
    open func viewWillDisappear() {}
    open func viewDidDisappear() {}
}
