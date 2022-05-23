class Food{
    var name: String
    var calorieCount: Int
    
    init(name: String, cal: Int){
        self.name = name
        self.calorieCount = cal
    }
    
    func readCalories(){
        print(calorieCount)
    }
}

let cheese = Food(name: "cheese", cal: 0)
cheese.readCalories()
