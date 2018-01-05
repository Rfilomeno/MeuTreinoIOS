//
//  ViewController.swift
//  MeuTreino
//
//  Created by Rodrigo Filomeno on 05/01/2018.
//  Copyright © 2018 Rodrigo Filomeno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BtnTreinoA: UIButton!
    @IBOutlet weak var BtnTreinoB: UIButton!
    
    var SerieEscolhida = [Exercicio]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let view = segue.destination as! ExerciceViewController
        view.add(serie: SerieEscolhida)
//
    }
    
    
    func CriaSerieA() -> [Exercicio]{
        let titulo = Exercicio(nome: "Exercicio", maquina: "Maq.", series: "Series", repeticoes: "Rep.", carga: "Carga", assento: "Assento", imagem: "nil");
        let e1 = Exercicio(nome: "Corrida", maquina: "Esteira", series: "15 min", repeticoes: "-", carga: "6 / 9", assento: "-", imagem: "nil");
        let e2 = Exercicio(nome: "Supino", maquina: "20", series: "3", repeticoes: "10", carga: "30Kg", assento: "6",imagem: "nil");
        let e3 = Exercicio(nome: "Fly/Peck", maquina: "25", series: "3", repeticoes: "10", carga: "20Kg", assento: "6",imagem: "nil");
        let e4 = Exercicio(nome: "M. Flexora", maquina: "10", series: "3", repeticoes: "10", carga: "25Kg", assento: "1/3",imagem: "nil");
        let e5 = Exercicio(nome: "Tríceps Polia", maquina: "62", series: "3", repeticoes: "10", carga: "10Kg", assento: "-",imagem: "nil");
        let e6 = Exercicio(nome: "Cad. Abdutora", maquina: "4", series: "3", repeticoes: "10", carga: "40Kg", assento: "2",imagem: "nil");
        let e7 = Exercicio(nome: "Desenv. Maq.", maquina: "50", series: "3", repeticoes: "10", carga: "10Kg", assento: "7",imagem: "nil");
        let e8 = Exercicio(nome: "Abd. Ponte (DV)", maquina: "-", series: "3", repeticoes: "-", carga: "15 seg", assento: "-",imagem: "nil");
        return [titulo,e1,e2,e3,e4,e5,e6,e7,e8]
    }
    
    func CriaSerieB() -> [Exercicio]{
        let titulo = Exercicio(nome: "Exercicio", maquina: "Maq.", series: "Series", repeticoes: "Rep.", carga: "Carga", assento: "Assento", imagem: "nil");
        let e1 = Exercicio(nome: "Corrida", maquina: "Esteira", series: "15 min", repeticoes: "-", carga: "6 / 9", assento: "-", imagem: "nil");
        let e2 = Exercicio(nome: "Puxada Maq.", maquina: "32", series: "3", repeticoes: "10", carga: "30Kg", assento: "6",imagem: "nil");
        let e3 = Exercicio(nome: "Remada Maq.", maquina: "30", series: "3", repeticoes: "10", carga: "25Kg", assento: "6/7",imagem: "nil");
        let e4 = Exercicio(nome: "Cad. Extensora", maquina: "2", series: "3", repeticoes: "10", carga: "30Kg", assento: "4/2/4",imagem: "nil");
        let e5 = Exercicio(nome: "Rosca Direta", maquina: "62", series: "3", repeticoes: "10", carga: "10Kg", assento: "-",imagem: "nil");
        let e6 = Exercicio(nome: "Cad. Adutora", maquina: "5", series: "3", repeticoes: "10", carga: "40Kg", assento: "5",imagem: "nil");
        let e7 = Exercicio(nome: "Remada Alta", maquina: "62", series: "3", repeticoes: "10", carga: "10Kg", assento: "-",imagem: "nil");
        let e8 = Exercicio(nome: "Gêmeos Sent.", maquina: "7", series: "3", repeticoes: "10", carga: "30Kg", assento: "6",imagem: "nil");
        let e9 = Exercicio(nome: "Abd. Supra", maquina: "-", series: "3", repeticoes: "15", carga: "-", assento: "-",imagem: "nil");

        return [titulo,e1,e2,e3,e4,e5,e6,e7,e8,e9]
    }

    @IBAction func clickSerieA(_ sender: UIButton) {
        SerieEscolhida = CriaSerieA()
    }
    
    @IBAction func clickSerieB(_ sender: UIButton) {
        SerieEscolhida = CriaSerieB()
    }
}

