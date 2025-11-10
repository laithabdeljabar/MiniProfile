import UIKit

public class MiniProfileViewController: UIViewController {

    public var token: String?

    public init(token: String?) {
        self.token = token
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let label = UILabel()
        label.text = "\(token ?? "-")"
        label.textAlignment = .center
        label.frame = view.bounds

        view.addSubview(label)
    }
}
