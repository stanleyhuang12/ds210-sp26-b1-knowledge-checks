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