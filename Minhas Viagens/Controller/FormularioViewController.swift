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
    
    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var pkViewLocais: UIPickerView!
    @IBOutlet weak var lbLocal: UILabel!
    
    //-8.063194, -34.871131
    //-7.119501, -34.823815
    //48.860574, 2.337595
    //51.501879, -0.140506
    
    var localSelecionado: Cidade = Cidade(nome: "", latitude: 0, longitude: 0)
    
    let locais = [Cidade(nome: "Marco Zero - Recife", latitude: -8.063194, longitude: -34.871131),
                  Cidade(nome: "Cabo Branco - Joao Pessoa", latitude: -7.119501, longitude: -34.823815),
                  Cidade(nome: "Louvre - Paris", latitude: 48.860574, longitude: 2.337595),
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
        lbLocal.text = locais[row].nome
        localSelecionado = locais[row]
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
