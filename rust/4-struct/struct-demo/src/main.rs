#[derive(Debug)]

struct Person {
    name: String,
    age: i8
}

impl Person {
    fn say_hi(&self, str: &str) {
        println!("hi {}", str);
    }
}

fn main() {
    let lutao = Person {name:String::from("Lutao"), age:18};

    println!("{:?}", lutao);
    lutao.say_hi("buddy")
}
