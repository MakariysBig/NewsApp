import UIKit
import Kingfisher

final class DescribeViewController: UIViewController {
    
    //MARK: - Properties
    
    private var news: News
    private let repository = Repository()
    private var rootView: DescribeView {
        view as! DescribeView
    }
    
    //MARK: - Initialise
    
    init(news: News) {
        self.news = news
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Lifecycle
    
    override func loadView() {
        view = DescribeView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    //MARK: - Private methods
    
    private func setup() {
        rootView.updateView(model: news)
    }
}
