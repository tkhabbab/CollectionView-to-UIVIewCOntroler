# CollectionView-to-UIVIewCOntroler

code form viewController 

class ViewController: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource {

   @IBOutlet weak var collectionview: UICollectionView!
   
    let labelname = ["First","Second","Third","Fourth","Five","Six","Seven","Eight","Nine","Ten"]
    let burgerImage:[UIImage] = [
    
        UIImage(named: "br1")!,
        UIImage(named: "burger2")!,
        UIImage(named: "br3")!,
        UIImage(named: "br4")!,
        UIImage(named: "br5")!,
        UIImage(named: "br6")!,
        UIImage(named: "br7")!,
        UIImage(named: "br8")!,
       UIImage(named: "br9")!,
       UIImage(named: "br10")!,

    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionview.delegate = self
        collectionview.dataSource = self
        
        collectiondesign()
    }
    
    func collectiondesign(){
        var layout = self.collectionview.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsetsMake(0, 5, 0, 5)
        layout.minimumInteritemSpacing = 5
        layout.itemSize = CGSize(width: (self.collectionview.frame.size.width - 20)/2, height:self.collectionview.frame.size.height/3)
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return burgerImage.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.colImage.image = burgerImage[indexPath.item]
        cell.nameofimage.text = labelname[indexPath.item]
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        return cell
        
        
    }
  
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let desVC =  mainstoryboard.instantiateViewController(withIdentifier: "DetailVC") as! DetailViewController
        desVC.dimage = burgerImage[indexPath.row]
        desVC.name = labelname[indexPath.row]
        self.navigationController?.pushViewController(desVC, animated: true)
        let cell = collectionview.cellForItem(at: indexPath)
        cell?.layer.borderColor  = UIColor.red.cgColor
        cell?.layer.borderWidth = 2
        
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
       let cell = collectionview.cellForItem(at: indexPath)
        cell?.layer.borderColor  = UIColor.lightGray.cgColor
        cell?.layer.borderWidth = 0.5
    }


}




