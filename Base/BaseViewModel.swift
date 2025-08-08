import Foundation
import Combine


public protocol BaseViewModelProtocol: ObservableObject {
    var title: String { get } //kaldırılabilir
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
    func viewDidDisappear()
}

open class BaseViewModel: BaseViewModelProtocol { //swiftte encapsulation reserved keywordleri ne anlama gelir
    @Published public var isLoading: Bool = false
    @Published public var title: String = ""

    public init() {}

    open func viewDidLoad() {}
    open func viewWillAppear() {}
    open func viewDidAppear() {}
    open func viewWillDisappear() {}
    open func viewDidDisappear() {}
}
