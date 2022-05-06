import SwiftUI
import Kingfisher

struct standardHomeMovie: View {
    var movie: Movie
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct standardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        standardHomeMovie(movie: exampleMovie1)
            
    }
}
