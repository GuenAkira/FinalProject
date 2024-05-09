//
//  ViewController.swift
//  InsideTheVietnameseZodiac
//
//  Created by Joseph Nguyen on 4/23/24.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet var birthyeatText: UITextField!
    var year = ""
    
    var chosenYear = ""
    var chosenYearId : UUID?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthyeatText.keyboardType = .numberPad
        
        if chosenYear != "" {
            // CORE DATA
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "TetZodiac")
            let idString = chosenYearId?.uuidString
            fetchRequest.predicate = NSPredicate(format: "id= %@", idString!)
            fetchRequest.returnsObjectsAsFaults = false
            
            do {
                let results = try context.fetch(fetchRequest)
                
                if results.count > 0 {
                    for result in results as! [NSManagedObject] {
                        if let year = result.value(forKey: "zodiacYear") as? String {
                            birthyeatText.text = year
                        }
                    }
                }
            } catch {
                print("ERROR")
            }
        } else {
            birthyeatText.text = ""
        }
        
        // RECOGNISER
        let gestureRecogniser = UITapGestureRecognizer(target: self, action: #selector(hideNumberPad))
        view.addGestureRecognizer(gestureRecogniser)
    }
        
    @objc func hideNumberPad() {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.destination {
        case is RatController:
            _ = segue.destination as? RatController
        case is BuffaloController:
            _ = segue.destination as? BuffaloController
        case is TigerController:
            _ = segue.destination as? TigerController
        case is CatController:
            _ = segue.destination as? CatController
        case is DragonController:
            _ = segue.destination as? DragonController
        case is SnakeController:
            _ = segue.destination as? SnakeController
        case is HorseController:
            _ = segue.destination as? HorseController
        case is GoatController:
            _ = segue.destination as? GoatController
        case is MonkeyController:
            _ = segue.destination as? MonkeyController
        case is RoosterController:
            _ = segue.destination as? RoosterController
        case is DogController:
            _ = segue.destination as? DogController
        case is PigController:
            _ = segue.destination as? PigController
        default:
            return
        }
    }
        
    func blankTextFieldCheck() {
        if year == "" {
            let alert = UIAlertController(title: "No Birthyear", message: "Please type your birthyear to reveal your Vietnamese Zodiac.", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                    print ("button clicked")
                }
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            }
        }
    
    @IBAction func saveButton(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newYear = NSEntityDescription.insertNewObject(forEntityName: "TetZodiac", into: context)
        
        // ATTRIBUTE
        newYear.setValue(birthyeatText.text!, forKey: "zodiacYear")
        newYear.setValue(UUID(), forKey: "id")
        
        do {
            try context.save()
            print("SUCCESS")
        } catch {
            print("ERROR")
        }
        NotificationCenter.default.post(name: NSNotification.Name("newData"), object: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    // SET TO DESINATED VIEWCONTROLLER
    @IBAction func searchButton(_ sender: Any) {
        year = birthyeatText.text!
        blankTextFieldCheck()
        let birthYear = Int(year)
        switch birthYear {
        case 1900, 1912, 1924, 1936, 1948, 1960, 1972, 1984, 1996, 2008, 2020:
            performSegue(withIdentifier: "toRatController", sender: nil)
            case 1901, 1913, 1925, 1937, 1949, 1961, 1973, 1985, 1997, 2009, 2021:
                performSegue(withIdentifier: "toBuffaloController", sender: nil)
            case 1902, 1914, 1926, 1938, 1950, 1962, 1974, 1986, 1998, 2010, 2022:
                performSegue(withIdentifier: "toTigerController", sender: nil)
            case 1903, 1915, 1927, 1939, 1951, 1963, 1975, 1987, 1999, 2011, 2023:
                performSegue(withIdentifier: "toCatController", sender: nil)
            case 1904, 1916, 1928, 1940, 1952, 1964, 1976, 1988, 2000, 2012, 2024:
                performSegue(withIdentifier: "toDragonController", sender: nil)
            case 1905, 1917, 1929, 1941, 1953, 1965, 1977, 1989, 2001, 2013:
                performSegue(withIdentifier: "toSnakeController", sender: nil)
            case 1906, 1918, 1930, 1942, 1954, 1966, 1978, 1990, 2002, 2014:
                performSegue(withIdentifier: "toHorseController", sender: nil)
            case 1907, 1919, 1931, 1943, 1955, 1967, 1979, 1991, 2003, 2015:
                performSegue(withIdentifier: "toGoatController", sender: nil)
            case 1908, 1920, 1932, 1944, 1956, 1968, 1980, 1992, 2004, 2016:
                performSegue(withIdentifier: "toMonkeyController", sender: nil)
            case 1909, 1921, 1933, 1945, 1957, 1969, 1981, 1993, 2005, 2017:
                performSegue(withIdentifier: "toRoosterController", sender: nil)
            case 1910, 1922, 1934, 1946, 1958, 1970, 1982, 1994, 2006, 2018:
                performSegue(withIdentifier: "toDogController", sender: nil)
            case 1911, 1923, 1935, 1947, 1959, 1971, 1983, 1995, 2007, 2019:
                performSegue(withIdentifier: "toPigController", sender: nil)
            case 2025:
                let alert = UIAlertController(title: "You're not born yet.", message: "You type the birthyear that are not current year. Would you want to know the Vietnamese Zodiac of the future birthyear?", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                    self.performSegue(withIdentifier: "toSnakeController", sender: nil)
                }
                let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
                    print("button clicked")
                }
                alert.addAction(okButton)
                alert.addAction(cancelButton)
                self.present(alert, animated: true, completion: nil)
            case 2026:
                let alert = UIAlertController(title: "You're not born yet.", message: "You type the birthyear that are not current year. Would you want to know the Vietnamese Zodiac of the future birthyear?", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                    self.performSegue(withIdentifier: "toHorseController", sender: nil)
                }
                let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
                    print("button clicked")
                }
                alert.addAction(okButton)
                alert.addAction(cancelButton)
                self.present(alert, animated: true, completion: nil)
            case 2027:
                let alert = UIAlertController(title: "You're not born yet.", message: "You type the birthyear that are not current year. Would you want to know the Vietnamese Zodiac of the future birthyear?", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                    self.performSegue(withIdentifier: "toGoatController", sender: nil)
                }
                let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
                    print("button clicked")
                }
                alert.addAction(okButton)
                alert.addAction(cancelButton)
                self.present(alert, animated: true, completion: nil)
            case 2028:
                let alert = UIAlertController(title: "You're not born yet.", message: "You type the birthyear that are not current year. Would you want to know the Vietnamese Zodiac of the future birthyear?", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                    self.performSegue(withIdentifier: "toMonkeyController", sender: nil)
                }
                let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
                    print("button clicked")
                }
                alert.addAction(okButton)
                alert.addAction(cancelButton)
                self.present(alert, animated: true, completion: nil)
            case 2029:
                let alert = UIAlertController(title: "You're not born yet.", message: "You type the birthyear that are not current year. Would you want to know the Vietnamese Zodiac of the future birthyear?", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                    self.performSegue(withIdentifier: "toRoosterController", sender: nil)
                }
                let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
                    print("button clicked")
                }
                alert.addAction(okButton)
                alert.addAction(cancelButton)
                self.present(alert, animated: true, completion: nil)
            case 2030:
                let alert = UIAlertController(title: "You're not born yet.", message: "You type the birthyear that are not current year. Would you want to know the Vietnamese Zodiac of the future birthyear?", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                    self.performSegue(withIdentifier: "toDogController", sender: nil)
                }
                let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
                    print("button clicked")
                }
                alert.addAction(okButton)
                alert.addAction(cancelButton)
                self.present(alert, animated: true, completion: nil)
            case 2031:
                let alert = UIAlertController(title: "You're not born yet.", message: "You type the birthyear that are not current year. Would you want to know the Vietnamese Zodiac of the future birthyear?", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                    self.performSegue(withIdentifier: "toPigController", sender: nil)
                }
                let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
                    print("button clicked")
                }
                alert.addAction(okButton)
                alert.addAction(cancelButton)
                self.present(alert, animated: true, completion: nil)
            default:
                let alert = UIAlertController(title: "Out of Range", message: "Please type your birthyear again to reveal your Vietnamese Zodiac.", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                    print ("button clicked")
                    
                }
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }

