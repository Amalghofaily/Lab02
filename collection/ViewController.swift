

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var myShortcuts = [
        Shortcuts( shortImage: UIImage(systemName: "square")!, shortFirstLabel: "Apple Frames" , shortSecondLabel: "169 actions", color: .blue),
        Shortcuts( shortImage: UIImage(systemName: "square.and.arrow.down.fill")!, shortFirstLabel: "Twitter Video" , shortSecondLabel: "67 actions", color: .green),
        Shortcuts( shortImage: UIImage(systemName: "dollarsign.circle.fill")!, shortFirstLabel: "Calculate Tip" , shortSecondLabel: "17 actions", color: .blue),
        Shortcuts( shortImage: UIImage(systemName: "phone.fill")!, shortFirstLabel: "XS Frames" , shortSecondLabel: "55 actions", color: .yellow),
        Shortcuts( shortImage: UIImage(systemName: "square.2.stack.3d")!, shortFirstLabel: "What's a shortcut?" , shortSecondLabel: "37 actions", color: .purple),
        Shortcuts( shortImage: UIImage(systemName: "timer")!, shortFirstLabel: "Take a Breack" , shortSecondLabel: "13 actions", color: .orange),
        Shortcuts( shortImage: UIImage(systemName: "plus.message.fill")!, shortFirstLabel: "Text Last Image" , shortSecondLabel: "2 actions", color: .green),
        Shortcuts( shortImage: UIImage(systemName: "waveform.path")!, shortFirstLabel: "Shazam shortcut" , shortSecondLabel: "32 actions", color: .blue)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  myShortcuts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
    
        cell.myImage.image = myShortcuts[indexPath.row].shortImage
        cell.myFirstLabel.text = myShortcuts[indexPath.row].shortFirstLabel
        cell.mySecondLabel.text = myShortcuts[indexPath.row].shortSecondLabel
        cell.backgroundColor = myShortcuts[indexPath.row].color
        cell.layer.cornerRadius = 20
        return cell
    }
    

    func collectionView(_ tableView : UITableView, hightForRowAt indexpath: IndexPath) -> CGFloat {
        90
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      return CGSize(width: 180, height: 140)
    }
    
}
