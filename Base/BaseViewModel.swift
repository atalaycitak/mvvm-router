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

 class BaseViewModel<R: RouterInterface>: BaseViewModelProtocol { //swiftte encapsulation reserved keywordleri ne anlama gelir
    @Published public var isLoading: Bool = false
    @Published public var title: String = ""
     
     let router: R

     init(router: R) {
         
         self.router = router
     }

     func viewDidLoad() {}
     func viewWillAppear() {}
     func viewDidAppear() {}
     func viewWillDisappear() {}
     func viewDidDisappear() {}
}
