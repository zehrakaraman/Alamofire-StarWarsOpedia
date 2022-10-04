//
//  HomeViewController.swift
//  Alamofire-StarWarsOpedia
//
//  Created by Zehra on 4.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    let searchController = UISearchController(searchResultsController: nil)

    @IBOutlet weak var filmsListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = ""
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background")!)
        
        navigationBarImage()
        
        filmsListTableView.backgroundColor = .clear
    }
    
}

extension HomeViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "filmCell", for: indexPath)
        cell.backgroundColor = .clear
        return cell
    }
}


