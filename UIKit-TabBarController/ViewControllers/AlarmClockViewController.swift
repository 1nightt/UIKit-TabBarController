import UIKit

/// Экран будильника
final class AlarmClockViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet private weak var settingsButton: UIButton!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsButton.layer.cornerRadius = 15
    }
}
