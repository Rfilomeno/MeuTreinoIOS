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
        let e1 = Exercicio(nome: "Caminhada", maquina: "Esteira", series: "30 min", repeticoes: "-", carga: "6.0 Km/h", assento: "-", imagem: "esteira.jpg");
        let e2 = Exercicio(nome: "Supino", maquina: "20", series: "3", repeticoes: "10", carga: "20Kg", assento: "6",imagem: "supinomaquina.jpg");
        let e3 = Exercicio(nome: "Supino Inclinado", maquina: "21", series: "3", repeticoes: "10", carga: "20Kg", assento: "4",imagem: "Supinoinclinadomaquina.jpg");
        let e4 = Exercicio(nome: "Flexão de Joelhos", maquina: "CAN", series: "3", repeticoes: "10", carga: "5Kg", assento: "-",imagem: "flexaojoelho.jpg");
        let e5 = Exercicio(nome: "Tríceps Polia", maquina: "62", series: "3", repeticoes: "10", carga: "10Kg", assento: "6",imagem: "tricepspolia.jpg");
        let e6 = Exercicio(nome: "Cad. Abdutora", maquina: "4", series: "3", repeticoes: "10", carga: "30Kg", assento: "2",imagem: "cadeiraabdutora.jpg");
        let e7 = Exercicio(nome: "Elevação quadril", maquina: "-", series: "3", repeticoes: "10", carga: "-", assento: "-",imagem: "elevacaoquadril.jpg");
        let e8 = Exercicio(nome: "Gêmeos Sent.", maquina: "7", series: "3", repeticoes: "10", carga: "30Kg", assento: "7",imagem: "gemeossentado.jpg");
        return [titulo,e1,e2,e3,e4,e5,e6,e7,e8]
    }
    
    func CriaSerieB() -> [Exercicio]{
        let titulo = Exercicio(nome: "Exercicio", maquina: "Maq.", series: "Series", repeticoes: "Rep.", carga: "Carga", assento: "Assento", imagem: "nil");
        let e1 = Exercicio(nome: "Caminhada", maquina: "Esteira", series: "30 min", repeticoes: "-", carga: "6.0 Km/h", assento: "-", imagem: "esteira.jpg");
        let e2 = Exercicio(nome: "Puxada Maq.", maquina: "32", series: "3", repeticoes: "10", carga: "20Kg", assento: "9",imagem: "puxadamaquina.jpg");
        let e3 = Exercicio(nome: "Remada Maq.", maquina: "30", series: "3", repeticoes: "10", carga: "20Kg", assento: "6",imagem: "remadamaquina.jpg");
        let e4 = Exercicio(nome: "Cad. Extensora", maquina: "2", series: "3", repeticoes: "8", carga: "25Kg", assento: "4/2/5",imagem: "cadeiraextensora.jpg");
        let e5 = Exercicio(nome: "Agachamento com bola", maquina: "-", series: "3", repeticoes: "10", carga: "-", assento: "-",imagem: "Agachamentobola.jpg");
        let e6 = Exercicio(nome: "Bíceps Maq.", maquina: "53", series: "3", repeticoes: "8", carga: "15Kg", assento: "9",imagem: "BicepsMaq.jpg");
        let e7 = Exercicio(nome: "Cad. Adutora", maquina: "5", series: "3", repeticoes: "10", carga: "30Kg", assento: "-",imagem: "cadeiraadutora.jpg");
        let e8 = Exercicio(nome: "Remada Alta", maquina: "62", series: "3", repeticoes: "10", carga: "10Kg", assento: "-",imagem: "remadaalta.jpg");
       
        return [titulo,e1,e2,e3,e4,e5,e6,e7,e8]
    }

    @IBAction func clickSerieA(_ sender: UIButton) {
        SerieEscolhida = CriaSerieA()
    }
    
    @IBAction func clickSerieB(_ sender: UIButton) {
        SerieEscolhida = CriaSerieB()
    }
}

