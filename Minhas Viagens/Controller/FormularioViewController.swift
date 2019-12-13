//
//  FormularioViewController.swift
//  Minhas Viagens
//
//  Created by IFPB on 12/12/2019.
//  Copyright © 2019 IFPB. All rights reserved.
//

import UIKit

class FormularioViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate 	 {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var pkViewLocais: UIPickerView!
    @IBOutlet weak var lbLocal: UILabel!
    
    var localSelecionado: Cidade?
    
    let locais = [Cidade(nome: "IFPB - Joao Pessoa", latitude: -7.135801, longitude: -34.874500),
                  Cidade(nome: "Marco Zero - Recife", latitude: -8.063194, longitude: -34.871131),
                  Cidade(nome: "HI Nova Iorque Hostel - Nova Iorque", latitude: 40.798777, longitude: -73.966868),
                  Cidade(nome: "Museu do Louvre - Paris", latitude: 48.860574, longitude: 2.337595),
                  Cidade(nome: "Universidade Montreal - Montreal", latitude: 45.505686, longitude: -73.615057),
                  Cidade(nome: "Atomium - Bruxelas", latitude: 50.894856, longitude: 4.341665),
                  Cidade(nome: "Museu Arte Moderna Toquio - Toquio", latitude: 35.690311, longitude: 139.755111),
                  Cidade(nome: "YongSan-Gu - Seul", latitude: 37.530005, longitude: 126.979686),
                  Cidade(nome: "Opera de Sidney - Sidney", latitude: -33.856766, longitude: 151.215098),
                  Cidade(nome: "Buckingham Palace - Londres", latitude: 51.501879, longitude: -0.140506)]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return locais[row].nome
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return locais.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        localSelecionado = locais[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "form_maps"){
            let svc = segue.destination as! MapsViewController
            if(localSelecionado?.nome != nil){
                svc.localSelecionado = localSelecionado
            }
            
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
