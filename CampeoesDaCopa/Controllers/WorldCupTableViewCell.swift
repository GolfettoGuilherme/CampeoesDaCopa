//
//  WorldCupTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Guilherme Golfetto on 25/10/21.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbYEar: UILabel!
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lvWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var lbWinnerScore: UILabel!
    @IBOutlet weak var lvViceScore: UILabel!
    
    @IBOutlet weak var lbCountry: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(with cup: WorldCup) {
        lbYEar.text = "\(cup.year)"
        ivWinner.image = UIImage(named: "\(cup.winner).png")
        ivVice.image = UIImage(named: "\(cup.vice).png")
        lvWinner.text = cup.winner
        lbVice.text = cup.vice
        lbCountry.text = cup.country
        lbWinnerScore.text = cup.winnerScore
        lvViceScore.text = cup.viceScore
    }

}
