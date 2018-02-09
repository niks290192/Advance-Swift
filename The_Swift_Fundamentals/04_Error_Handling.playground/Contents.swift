//: Playground - noun: a place where people can play

//The Swift Fundamentals
//Intro to Error Handling

//Problem//
//1. Warn your co-workers the functions can cause dangerous results.
//2. Understanding of a 'do-try' block
//3. Distinguish between 'try?', 'try!', and 'try'


func checkHeight(height: Int){
    if height > 200 {
        print("You are going to hit your head and fall off")
        //Take him/her off from the ride
        //Code....
        //Seatbeat Tighten
    } else if height < 140 {
        print("You mmight fly in the air")
        //Take him/her off from the ride
        //Code...
    } else {
        print("Enjoy")
        //Take him/her to ride
        //Code....
    }
}

