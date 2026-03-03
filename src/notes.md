## Notes for the exam 




```
cargo test 
cargo run 
cargo run --release (runs faster because better optimization)

cargo.toml (the description of your dependencies)
cargo.lock (details of the packages, dependencies, and versions .. i.e., how to find it)

# prevents code rot i.e., mismatch in dependencies that prevents you from running or compiling the code
```

### compiler and interpreter 
1. a compiler translates the human-readable code into machine code to prepare for optimization 
2. interpreter compiles line by line and executes
- rust is a compiler language and gets compiled by rust compiler (rustc)
### statically and dyanmcially typed languages 


## key concepts: 
1. variable definition: define mutable and immutable variables 
    - mutability 
    - shadowing (overwriting a previously defined variable makes it inaccesible)

2. String literals (str) versus string slices (&str)
    * String::from("") -> string that has a dynamically allocated memory on the heap 
    * &str a reference to an immutable string 

3. tuples: how to access, create, and destructure tuples 
    * Accessing a member of the tuple x.0

4. Arrays are fixed in length unless we make it a mutable one 
    * Indexing an array:  x[0]

5. Enums 


### functions 

```
fn main()-> () {

}

the paranthesis () means void or no output; there is likely a side effect (i.e., intermediate changes not outputted)
```

### specifying ranges

* 1..5 (1, 2,3 ,4)
* 1..=5 (1, 2, 3, 4, 5)

* while keeps looping if some condition is true
* for iterates over a range or collection
* loop is infinite by default (continue and break to control how to break out of the loop)
    * what are labelled loops (?)

## Enums 
Enums are custom types that can hold data with variants 
* if you use match, you must specify every combination 

enum Status {
    Loading(u32), 
    Complete(u32), 
    Error(u32),
}

let s1 = Status::Loading(100); 

match s1 {
    Status::Loading(percent) => println!("Loading: {}%", percent),
    Status::Complete(total) => println!("Completed: {}", total),
    Status::Error(code) => println!("Error code: {}", code),
}

we can extract the data enums hold 