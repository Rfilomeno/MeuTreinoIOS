//
//  MyCell.swift
//  MeuTreino
//
//  Created by Rodrigo Filomeno on 05/01/2018.
//  Copyright © 2018 Rodrigo Filomeno. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {
    
    @IBOutlet weak var txtNome: UILabel!
    @IBOutlet weak var txtMaquina: UILabel!
    @IBOutlet weak var txtSeries: UILabel!
    @IBOutlet weak var txtRepeticoes: UILabel!
    @IBOutlet weak var txtCarga: UILabel!
    @IBOutlet weak var txtAssento: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
