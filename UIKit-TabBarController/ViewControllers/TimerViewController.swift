import UIKit

/// Экран таймера
final class TimerViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet private weak var timerPicker: UIPickerView!
    @IBOutlet private weak var cancelButton: UIButton!
    @IBOutlet private weak var startButton: UIButton!
    
    private var hours = [Int](0...23)
    private var minute = [Int](0...59)
    private var seconds = [Int](0...59)
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        timerPicker.delegate = self
        timerPicker.dataSource = self
        setupForTimer()
    }
    
    // MARK: - Private Methods
    private func setupForTimer() {
        startButton.layer.cornerRadius = 0.5 * startButton.bounds.size.width
        startButton.clipsToBounds = true
        cancelButton.layer.cornerRadius = 0.5 * cancelButton.bounds.size.width
        cancelButton.clipsToBounds = true
    }
    
}

extension TimerViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0: return hours.count
        case 1: return minute.count
        case 2: return seconds.count
        default:
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0: return "\(hours[row]) ч"
        case 1: return "\(minute[row]) мин"
        case 2: return "\(seconds[row]) с"
        default: return ""
        }
    }
}
