## String, Vec, Borrowing 

#### challenge for string, vec 

```rust
// Fix this code so it compiles
fn main() {
    let mut numbers = vec![1, 2, 3]; // instantiates a mutable vector using vector macro
    let sum = calculate_sum(numbers); // calculates sum but moves ownership of the vector into the function so numbers will not run for the double_all() function and or print 
    double_all(numbers); // double_all numbers ideally needs to do an in-place modification of numbers without transfering ownership so that we can still call numbers outside of the function while it is doubled 
    println!("Sum: {}, Doubled: {:?}", sum, numbers);

}

fn calculate_sum(v: Vec<i32>) -> i32 {
    v.iter().sum()
}

fn double_all(v: Vec<i32>) {
    for x in v.iter() {
        x *= 2;
    }
}

//TODO: 
// - We have to change the arguments to be 
// &numbers for calculate sum and &mut numbers for double_all 
// change the typing in the function 
// we also have to change the iter for the mutable iteration into iter_mut()
// for the iter_mut, it gives us mutable references, so we have to dereference to make changes to original value 
```

```rust
// Fix this code so it compiles
fn main() {
    let mut numbers = vec![1, 2, 3];
    let sum = calculate_sum(&numbers);
    double_all(&mut numbers);
    println!("Sum: {}, Doubled: {:?}", sum, numbers);
}

fn calculate_sum(v: &Vec<i32>) -> i32 {
    v.iter().sum()
}

fn double_all(v: &mut Vec<i32>) {
    for x in v.iter_mut() {
        *x *= 2;
    }
}
```


### challenge 2 for string, vec 
Write a function reverse_words(s: &str) -> String that takes a string slice and returns a new String with words in reverse order. For example, "hello world rust" becomes "rust world hello".

```rust,editable
fn reverse_words(s: &str) -> String {
    // first we take an immutable reference of characters 
    let mut words_vector: Vec<&str> = s.split_whitespace().collect(); 
    word_vector.reverse();  // reverses in place 
    let reversed_words = words_vector.iter().map(|n| n.to_string()).collect::<Vec<String>>().join(" "); 
    reversed_words 
}

fn main() {
    let reversed_it = reverse_words("This is an example of a text to reverse"); 
    println!("{}", reversed_it); 
}
```



### Crates and mods

```rust,editable
// your code here

mod temperature {
    pub fn celsius_to_fahrenheit(c: f64) -> f64 {
        c * 1.8 + 32.0 
    }
    
    pub fn fahrenheit_to_celsius(f: f64) -> f64 {
        (f - 32.0) as f64 / 1.8
    }
    
    pub fn celsius_to_kelvin(c: f64) -> f64 {
        c + 273.15
    }
}

use temperature::*;  // bring all the function into the current scope 
fn main() {
    println!("100 degrees Celsius to Fahrenheit is {}", celsius_to_fahrenheit(100.0)); 
    println!("32 degrees Fahrenheit to Celsius is {}", fahrenheit_to_celsius(32.0)); 
    println!("0 degrees Celsius to Kelvin is {}", celsius_to_kelvin(0.0)); 
    
}

```


## Tests, crates, and modules

```rust
// your code here
fn max_of_three(tup: (i32, i32, i32)) -> i32 {
    let (val1:i32, val2:i32, val3: i32) = tup;  //destructure the tuple 
    let mut largest_val = i32::MIN; 
    if val1 > largest_val {
        largest_val = val1; 
    }
    if val2 > largest_val {
        largest_val = val2; 
    }
    if val3 > largest_val {
        largest_val = val3; 
    }
    
    largest_val
}

#[cfg(test)]
mod tests {
    use super::*;
    
    #[test]
    fn same_value() {
        assert_eq!(max_of_three((1, 1, 1)), 1)
    }
    
    #[test]
    fn negative_value() {
        assert_eq!(max_of_three((-1, -1, -2)), -1)
    }
    
    #[test]
    fn normal_test() {
        assert_eq!(max_of_three((-1, 4, 6)), 6)
    }
}
```