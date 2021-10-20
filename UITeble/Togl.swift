//
//  Togl.swift
//  UITeble
//
//  Created by Kaznacheev on 20.10.2021.
//

import UIKit

class Togl: UITableViewController {
let nameImage = [
                 "Alberto Ruiz - 7 Elements (Original Mix)",
                 "Dave Wincent - Red Eye (Original Mix)",
                 "E-Spectro - End Station (Original Mix)",
                 "Edna Ann - Phasma (Konstantin Yoodza Remix)",
                 "Ilija Djokovic - Delusion (Original Mix)",
                 "John Baptiste - Mycelium (Original Mix)",
                 "Lane 8 - Fingerprint (Original Mix)",
                 "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
                 "Metodi Hristov, Gallya - Badmash (Original Mix)",
                 "Veerus, Maxie Devine - Nightmare (Original Mix)"
                ]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameImage.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(named: nameImage[indexPath.row])
        
        content.text = nameImage[indexPath.row]
        content.imageProperties.tintColor = .red
        
        cell.contentConfiguration = content
        return cell
    }
   
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "deteilID" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                guard let deteilVS = segue.destination as? DeteilViewController else { return }
                deteilVS.nameTreack = nameImage[indexPath.row]
            }
        }
    }
}
