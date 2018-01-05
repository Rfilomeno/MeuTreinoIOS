//
//  ExerciceViewController.swift
//  MeuTreino
//
//  Created by Rodrigo Filomeno on 05/01/2018.
//  Copyright © 2018 Rodrigo Filomeno. All rights reserved.
//

import UIKit

class ExerciceViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Serie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCell
        cell.txtNome.text = Serie[indexPath.row].Nome
        cell.txtMaquina.text = Serie[indexPath.row].Maquina
        cell.txtSeries.text = Serie[indexPath.row].Series
        cell.txtRepeticoes.text = Serie[indexPath.row].Repeticoes
        cell.txtCarga.text = Serie[indexPath.row].Carga
        cell.txtAssento.text = Serie[indexPath.row].Assento
        
        return cell
    }
    

    @IBOutlet weak var TableViewExercicio: UITableView!
    @IBOutlet weak var ImageViewExercicio: UIImageView!
    var Serie:[Exercicio] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableViewExercicio.dataSource = self
        TableViewExercicio.delegate = self
        
        print("Numero de exercicios é \(Serie.count)")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func add(serie: [Exercicio]) {
        self.Serie = serie
    }
    
}
