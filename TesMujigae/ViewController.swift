//
//  ViewController.swift
//  TesMujigae
//
//  Created by Ilyasa Azmi on 26/01/20.
//  Copyright © 2020 Ilyasa Azmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    @IBOutlet weak var labelJudul: UILabel!
    @IBOutlet weak var labelKeterangan: UILabel!
    
    @IBOutlet weak var doneButton: UIButton!
    
    var dataMenus = [Menu]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        initDataMenus()
        
        let fontJudul : UIFont = UIFont.boldSystemFont(ofSize: 21)
        let fontSubJudul : UIFont = UIFont.systemFont(ofSize: 13)
        let fontButton : UIFont = UIFont.boldSystemFont(ofSize: 16)
        
        labelJudul.text = "Personalize Your Favorite Food at Mujigae"
        labelJudul.font = fontJudul
        labelJudul.textColor = #colorLiteral(red: 0.1450980392, green: 0.1450980392, blue: 0.1450980392, alpha: 1)
        labelKeterangan.text = "Pick 3 or more category of menu you are currently looking (you can change them anytime)"
        labelKeterangan.font = fontSubJudul
        labelKeterangan.textColor = #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)
        
        doneButton.setTitle("Done",for: .normal)
        doneButton.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.631372549, blue: 0.631372549, alpha: 1)
        doneButton.setTitleColor(UIColor.white, for: .normal)
        doneButton.layer.cornerRadius = 10
        doneButton.titleLabel?.font = fontButton
        
    }
    
    func initDataMenus() {
        let topokki = Menu(title: "Topokki")
        let sundubu = Menu(title: "Sundubu")
        let galbitang = Menu(title: "Galbitang")
        let beefBBQ = Menu(title: "Beef BBQ")
        let koreanFriedChicken = Menu(title: "Korean Fried Chicken")
        let bingsoo = Menu(title: "Bingsoo")
        let dakgalbi = Menu(title: "Dakgalbi")
        let ramyun = Menu(title: "Ramyun")
        let bulgogi = Menu(title: "Bulgogi")
        let anyeongSe1 = Menu(title: "Anyeong Set 1")
        let nori = Menu(title: "Nori")
        let mandu = Menu(title: "Mandu")
        let kimchi = Menu(title: "Kimchi")
        let beef = Menu(title: "Beef")
        let anyeongSet2 = Menu(title: "Anyeogn Set 2")
        let chokoBingsoo = Menu(title: "Choko Bingsoo")
        let bokumbap = Menu(title: "Bokumbap")
        let bulgogiBibimbowl = Menu(title: "Bulgogi Bibimbowl")
        let classicBingsoo = Menu(title: "Classic Bingsoo")
        let matcha = Menu(title: "Matcha")
        let japchae = Menu(title: "Japchae")
        let yoghurtBingsoo = Menu(title: "Yoghurt Bingsoo")
        let koreanLemonade = Menu(title: "Korean Lemonade")
        let mathaMilkTea = Menu(title: "Matha Milk Tea")
        let chocoBananaMilk = Menu(title: "Choco Banana Milk")
        let jejuOrange = Menu(title: "Jeju Orange")
        let appleTea = Menu(title: "Apple Tea")
        let mineralWater = Menu(title: "Mineral Water")
        let tea = Menu(title: "Tea")
        
        dataMenus.append(topokki)
        dataMenus.append(sundubu)
        dataMenus.append(galbitang)
        dataMenus.append(beefBBQ)
        dataMenus.append(koreanFriedChicken)
        dataMenus.append(bingsoo)
        dataMenus.append(dakgalbi)
        dataMenus.append(ramyun)
        dataMenus.append(bulgogi)
        dataMenus.append(anyeongSe1)
        dataMenus.append(nori)
        dataMenus.append(mandu)
        dataMenus.append(kimchi)
        dataMenus.append(beef)
        dataMenus.append(anyeongSet2)
        dataMenus.append(chokoBingsoo)
        dataMenus.append(bokumbap)
        dataMenus.append(bulgogiBibimbowl)
        dataMenus.append(classicBingsoo)
        dataMenus.append(matcha)
        dataMenus.append(japchae)
        dataMenus.append(yoghurtBingsoo)
        dataMenus.append(koreanLemonade)
        dataMenus.append(mathaMilkTea)
        dataMenus.append(chocoBananaMilk)
        dataMenus.append(jejuOrange)
        dataMenus.append(appleTea)
        dataMenus.append(mineralWater)
        dataMenus.append(tea)
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    // MARK: Menentukan jumlah item yang akan di tampilkan
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // MARK: Menghitung jumlah item array dataMenus
        return dataMenus.count
    }
    
    // MARK: mengatur view cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "viewCellMenu", for: indexPath) as! MenuCollectionViewCell

        // set nilai ke view dalam cell
        let menu = dataMenus[indexPath.row]
        cell.labelMenu.text = menu.title!
        cell.labelMenu.textColor = #colorLiteral(red: 0.8509803922, green: 0.8470588235, blue: 0.8470588235, alpha: 1)
        
        let fontMenu : UIFont = UIFont.systemFont(ofSize: 13)
        cell.labelMenu.font = fontMenu

        return cell
    }

    // MARK: mengatur layout view cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Lebar & tinggil cell
        return CGSize(width: collectionView.frame.width/4, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? MenuCollectionViewCell {
            cell.redColor()
        }
    }
    
}

