import UIKit

struct Movie {
    var isoCode: String
    var name: String
}

class MoviesTableViewController: UITableViewController {
    
    let key = "1813247ca482af0ff206fff8519caf6c"
    
    let query = "Batman"
    
    let url = URL(string: "https://api.themoviedb.org/3/search/movie? api_key=1813247ca482af0ff206fff8519caf6c&query=batman&page=1")
    
    let movies = [
        Movie(isoCode: "at", name: "Austria"),
        Movie(isoCode: "be", name: "Belgium"),
        Movie(isoCode: "de", name: "Germany"),
        Movie(isoCode: "el", name: "Greece"),
        Movie(isoCode: "fr", name: "France"),
    ]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)

        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.name
        cell.detailTextLabel?.text = movie.isoCode
        cell.imageView?.image = UIImage(named: movie.isoCode)

        return cell
    }

}
