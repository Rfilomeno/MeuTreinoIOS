//
//  DetailViewController.swift
//  MeuTreino
//
//  Created by Rodrigo Filomeno on 08/01/2018.
//  Copyright © 2018 Rodrigo Filomeno. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var txtExercicio: UILabel!
    @IBOutlet weak var txtMaquina: UILabel!
    @IBOutlet weak var txtSeries: UILabel!
    @IBOutlet weak var txtRepeticoes: UILabel!
    @IBOutlet weak var txtCarga: UILabel!
    @IBOutlet weak var txtAssento: UILabel!
    @IBOutlet weak var imagem: UIImageView!
    
    
    
    
    
    var exercicio = Exercicio(nome: "none", maquina: "", series: "", repeticoes: "", carga: "", assento: "", imagem: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtExercicio.text = exercicio.Nome
        txtMaquina.text = "Maquina: \(exercicio.Maquina)"
        txtSeries.text = " Séries: \(exercicio.Series)"
        txtRepeticoes.text = "Repetições: \(exercicio.Repeticoes)"
        txtCarga.text = "Carga: \(exercicio.Carga)"
        txtAssento.text = "Assento: \(exercicio.Assento)"
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func add(exercicio: Exercicio){
        self.exercicio = exercicio
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
