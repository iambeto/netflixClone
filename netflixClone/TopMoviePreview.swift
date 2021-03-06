//
//  TopMoviePreview.swift
//  netflixClone
//
//  Created by Robert Cabrera on 5/9/22.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast( cat: String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                            
                        
                        HStack {
                            Text(category)
                            
                            if !isCategoryLast(cat: category) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 3))
                            }
                        }
                    }
                }
                
                Text("Row of buttons")
            }
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
