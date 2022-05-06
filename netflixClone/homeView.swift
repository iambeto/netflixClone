import SwiftUI

struct homeView: View {
    var vm = HomeVM()
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            //main vstack
            VStack{
                
            ForEach(vm.allCategories, id: \.self) { category in
            VStack {
                HStack {
                    Text(category)
                    Spacer()
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            ForEach(vm.getMovie(forCat: category)) { movie in
                                standardHomeMovie(movie: movie)
                                    .frame(width: 100, height: 200)
                                    .padding(.horizontal, 20)
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
