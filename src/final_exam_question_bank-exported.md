# Final Exam Question Bank

This file contains the question bank for the final exam.

There are 5 types of questions, which are worth the following points:

- select all that are true = 2 points
- short answer = 2 points
- predict the output = 3 points
- short coding challenge = 4 points
- long coding challenge = 8 points

The final exam will be organized into five parts:

- Part 1: 8 points, 4 questions, 2 points each -- select all that are true
- Part 2: 8 points, 4 questions, 2 points each -- short answer questions
- Part 3: 12 points, 4 questions, 3 points each -- predict the output and explain why
- Part 4: 8 points, 2 questions, 4 points each -- short coding challenges
- Part 5: 16 points, 2 questions, 8 points each -- longer coding challenges

The final exam will be worth 52 points and the questions will be sampled from
this question bank.

You'll have 2 hours (120 minutes) to complete the exam.

The exam is closed notes, no electronic devices, but you will be given the
following [final_exam_reference_material.md](final_exam_reference_material.md)
at the exam.

<!--
Point conventions for final exam (override the default in CLAUDE.md for this bank):
mcq_multi = 2 points
short_answer = 2 points
predict_output = 3 points
coding + short tag = 4 points
coding + long tag = 8 points
-->

## Select All That Are True (mcq_multi)

Select all statements that are true about ownership and moves in Rust:

- [ ] A. Assigning a `String` to another variable moves ownership; the original variable is no longer valid.
- [ ] B. Passing a `&String` (a shared reference) to a function moves ownership of the `String` into the function.
- [ ] C. Assigning an `i32` to another variable moves ownership; the original variable is no longer valid.
- [ ] D. A value is dropped when its owner goes out of scope.


---

Select all statements that are true about borrowing rules at a single point in a program:

- [ ] A. You can have any number of immutable references (`&T`) simultaneously.
- [ ] B. You can have one mutable reference (`&mut T`) and one immutable reference simultaneously.
- [ ] C. You can have at most one mutable reference at a time.
- [ ] D. A mutable reference `&mut T` gives you read-only access to the value it points at.


---

Select all statements that are true about traits in Rust:

- [ ] A. A trait defines a set of method signatures (and optionally default implementations) that types can implement.
- [ ] B. You can implement a trait you did not define on a type you did not define.
- [ ] C. A single type can implement multiple traits.
- [ ] D. A trait method can have a default implementation that implementors may override.


---

Select all statements that are true about `#[derive(...)]` in Rust:

- [ ] A. `#[derive(Debug)]` lets you print a value with `{:?}`.
- [ ] B. To derive `Copy`, the type must also derive (or implement) `Clone`.
- [ ] C. You can derive `Copy` on a struct that has a `String` field.
- [ ] D. To use a struct as a `HashMap` key, the struct typically needs to derive `Eq` and `Hash`.


---

Select all statements that are true about lifetimes in Rust:

- [ ] A. Lifetimes describe how long references are valid and are checked at compile time.
- [ ] B. Lifetime annotations change how long a value lives at runtime.
- [ ] C. A function signature like `fn longest<'a>(x: &'a str, y: &'a str) -> &'a str` says the returned reference is valid for at least as long as both inputs.
- [ ] D. Every function that takes a reference parameter must include an explicit lifetime annotation written out by the programmer.


---

Select all statements that are true about generics in Rust:

- [ ] A. `fn largest<T: PartialOrd>(list: &[T]) -> &T` works for any type `T` that can be ordered.
- [ ] B. Generics are resolved at runtime through dynamic dispatch by default.
- [ ] C. A trait bound like `T: Clone + Debug` means that `T` must implement at least one of `Clone` or `Debug`.
- [ ] D. Generic functions always rely on runtime type information (RTTI) to decide which type-specific code to execute.


---

Select all statements that are true about iterators in Rust:

- [ ] A. Calling `.map(...)` on an iterator does the work immediately.
- [ ] B. Iterator adaptors like `filter`, `map`, and `take` are lazy — no work happens until a consuming method runs.
- [ ] C. `.collect()` is a consuming method that drives the iterator to completion.
- [ ] D. `.sum()` is a consuming method that returns the total of all elements.


---

Select all statements that are true about closures in Rust:

- [ ] A. A closure can capture variables from its enclosing scope by reference, by mutable reference, or by move.
- [ ] B. The `move` keyword forces the closure to take ownership of captured variables.
- [ ] C. A closure and a regular `fn` function have exactly the same type in Rust.
- [ ] D. Closures are commonly passed to iterator methods such as `map`, `filter`, and `fold`.


---

Select all statements that are true about `Option<T>` and `Result<T, E>`:

- [ ] A. `Option<T>` represents a value that may or may not be present.
- [ ] B. `Result<T, E>` represents either a success value of type `T` or an error of type `E`.
- [ ] C. Calling `.unwrap()` on `None` returns the default value of type `T` rather than panicking.
- [ ] D. `match` cannot be used to destructure `Option` or `Result` values.


---

Select all statements that are true about `HashMap<K, V>`:

- [ ] A. Keys must implement `Eq` and `Hash`.
- [ ] B. Iteration order is guaranteed to match insertion order.
- [ ] C. Average `insert`, `get`, and `remove` are O(1).
- [ ] D. Calling `insert` on an existing key replaces the old value and returns `Some(old_value)`.


---

Select all statements that are true about `BTreeMap<K, V>`:

- [ ] A. Keys must implement `Ord`.
- [ ] B. Iteration visits entries in insertion order.
- [ ] C. `insert`, `get`, and `remove` are O(1) average-case, just like `HashMap`.
- [ ] D. `first_key_value()` returns the entry that was inserted first in time.


---

Select all statements that are true about `HashSet<T>`:

- [ ] A. A `HashSet` stores unique values — inserting an existing value has no effect on set membership.
- [ ] B. `insert` returns `true` if the value was newly inserted and `false` if it was already present.
- [ ] C. `HashSet` iteration is guaranteed to visit elements in the order they were inserted.
- [ ] D. `HashSet` keeps its elements in sorted order.


---

Select all statements that are true about `BinaryHeap<T>` in Rust:

- [ ] A. By default, `BinaryHeap<T>` is a max-heap: `pop()` returns the largest element.
- [ ] B. Elements only need to implement `PartialOrd`, so a `BinaryHeap<f64>` compiles and works as-is.
- [ ] C. Iterating with `.iter()` returns elements in sorted order.
- [ ] D. `BinaryHeap::peek()` removes and returns the largest element.


---

Select all statements that are true about stacks and queues in Rust:

- [ ] A. A `Vec<T>` can be used as a stack via `push` / `pop`, with both operations running in amortized O(1).
- [ ] B. Stacks are LIFO (last-in, first-out) and queues are FIFO (first-in, first-out).
- [ ] C. `VecDeque<T>` supports efficient `push_back` and `pop_front`, making it a natural FIFO queue.
- [ ] D. `Vec::remove(0)` is an O(1) operation.


---

Select all statements that are true about the (average-case) complexity of common operations:

- [ ] A. Inserting at the front of a `Vec<T>` with `vec.insert(0, x)` is O(1).
- [ ] B. `HashMap::get` is O(1) on average.
- [ ] C. `BTreeMap::get` is O(1) on average, just like `HashMap::get`.
- [ ] D. Looking up an element by value in an unsorted `Vec<T>` with `.contains(&x)` is O(log n).


---

Select all statements that are true about the `Entry` API on `HashMap` and `BTreeMap`:

- [ ] A. `map.entry(key).or_insert(default)` inserts `default` only if the key is absent, and returns a mutable reference to the value.
- [ ] B. `map.entry(key).or_insert(default)` always overwrites the existing value when the key is already present.
- [ ] C. The `Entry` API is available only on `HashMap`; `BTreeMap` does not provide an `entry` method.
- [ ] D. Internally, `map.entry(key).or_insert(v)` performs two separate lookups (one to check for the key, one to insert), so it is slower than a manual `get` + `insert`.


---

## Short Answer (short_answer)

**Why does Rust have an ownership system? Name one problem it prevents at compile time that languages like C or Python handle differently.**


---

**What is a trait in Rust? Give one concrete example of a standard-library trait and describe what it lets you do.**


---

**What does a lifetime annotation like `'a` in `fn longest<'a>(x: &'a str, y: &'a str) -> &'a str` tell the Rust compiler?**


---

**Why are generics useful in Rust? Give one example.**


---

**What does it mean that iterator adaptors in Rust are "lazy"? Give an example of an adaptor and an example of a consumer.**


---

**How does a closure in Rust differ from a regular `fn` function?**


---

**What is the difference between `Option<T>` and `Result<T, E>`, and when would you reach for each?**


---

**What is the role of the hash function when using a `HashMap<K, V>`, and why must keys implement `Eq` as well as `Hash`?**


---

**When would you choose `BTreeMap<K, V>` over `HashMap<K, V>`? Name one specific advantage.**


---

**Give one concrete use case where a `HashSet<T>` is a better choice than a `Vec<T>`, and briefly explain why.**


---

**What is `BinaryHeap<T>` useful for? Describe one typical use case and the order in which `pop()` returns elements.**


---

**Explain the difference between a stack and a queue. Which Rust standard-library type is a good fit for each?**


---

**Describe the difference between O(1), O(n), and O(log n) time complexity in plain language. Give one Rust collection operation for each.**


---

**What problem does the `Entry` API on `HashMap` / `BTreeMap` solve, compared with using `contains_key` followed by `insert`?**


---

**Name three commonly derived traits in Rust and briefly describe what `#[derive(...)]` gives you for each.**


---

**Give one reason why `Vec<T>` is usually preferred over `LinkedList<T>` in Rust, even when you need to frequently grow a collection.**


---

## Predict the Output (predict_output)

**What is the output of this program?**

```rust
fn main() {
    let x = 5;
    let y = x;
    let x = x + 1;
    println!("{} {}", x, y);
}
```


---

**What is the output of this program?**

```rust
fn double<T: std::ops::Add<Output = T> + Copy>(x: T) -> T {
    x + x
}

fn main() {
    println!("{} {}", double(3), double(2.5));
}
```


---

**What is the output of this program?**

```rust
fn main() {
    let a: Option<i32> = Some(7);
    let b: Option<i32> = None;
    println!("{} {}", a.unwrap_or(0), b.unwrap_or(0));
}
```


---

**What is the output of this program?**

```rust
fn main() {
    let total: i32 = (1..=5)
        .filter(|x| x % 2 == 1)
        .map(|x| x * x)
        .sum();
    println!("{}", total);
}
```


---

**What is the output of this program?**

```rust
fn main() {
    let names = vec!["Alice", "Bob", "Carol"];
    let scores = vec![90, 85, 95];
    for (i, (n, s)) in names.iter().zip(scores.iter()).enumerate() {
        println!("{}: {} = {}", i, n, s);
    }
}
```


---

**What is the output of this program?**

```rust
fn main() {
    let greeting = String::from("Hello");
    let say = move || println!("{}, world!", greeting);
    say();
    say();
}
```


---

**What is the output of this program?**

```rust
#[derive(Debug)]
struct Point {
    x: i32,
    y: i32,
}

fn main() {
    let p = Point { x: 1, y: 2 };
    println!("{:?}", p);
}
```


---

**What is the output of this program?**

```rust
use std::collections::HashMap;

fn main() {
    let mut map: HashMap<&str, i32> = HashMap::new();
    map.insert("a", 1);
    let prev = map.insert("a", 2);
    println!("{:?} {:?}", prev, map.get("a"));
}
```


---

**What is the output of this program?**

```rust
use std::collections::HashMap;

fn main() {
    let mut counts: HashMap<char, i32> = HashMap::new();
    for c in "banana".chars() {
        *counts.entry(c).or_insert(0) += 1;
    }
    let mut items: Vec<(char, i32)> = counts.into_iter().collect();
    items.sort();
    println!("{:?}", items);
}
```


---

**What is the output of this program?**

```rust
use std::collections::HashSet;

fn main() {
    let mut seen: HashSet<i32> = HashSet::new();
    println!("{}", seen.insert(1));
    println!("{}", seen.insert(2));
    println!("{}", seen.insert(1));
}
```


---

**What is the output of this program?**

```rust
use std::collections::BTreeMap;

fn main() {
    let mut scores: BTreeMap<&str, i32> = BTreeMap::new();
    scores.insert("carol", 95);
    scores.insert("alice", 90);
    scores.insert("bob", 85);
    for (name, score) in &scores {
        println!("{} {}", name, score);
    }
}
```


---

**What is the output of this program?**

```rust
use std::collections::BinaryHeap;

fn main() {
    let mut heap: BinaryHeap<i32> = BinaryHeap::new();
    for x in [3, 1, 4, 1, 5, 9, 2] {
        heap.push(x);
    }
    while let Some(top) = heap.pop() {
        print!("{} ", top);
    }
    println!();
}
```


---

**What is the output of this program?**

```rust
use std::collections::VecDeque;

fn main() {
    let mut q: VecDeque<i32> = VecDeque::new();
    q.push_back(1);
    q.push_back(2);
    q.push_front(0);
    q.push_back(3);
    while let Some(x) = q.pop_front() {
        print!("{} ", x);
    }
    println!();
}
```


---

**What is the output of this program?**

```rust
fn classify(x: i32) -> &'static str {
    match x {
        n if n < 0 => "negative",
        0 => "zero",
        1..=9 => "single digit",
        _ => "big",
    }
}

fn main() {
    for x in [-1, 0, 7, 42] {
        println!("{}: {}", x, classify(x));
    }
}
```


---

**What is the output of this program?**

```rust
fn longest<'a>(x: &'a str, y: &'a str) -> &'a str {
    if x.len() >= y.len() { x } else { y }
}

fn main() {
    let s1 = String::from("hello");
    let s2 = String::from("ds210");
    let result = longest(&s1, &s2);
    println!("{}", result);
}
```


---

**What is the output of this program?**

```rust
struct Rectangle {
    width: u32,
    height: u32,
}

impl Rectangle {
    fn area(&self) -> u32 {
        self.width * self.height
    }
}

fn main() {
    let r = Rectangle { width: 3, height: 4 };
    println!("{}", r.area());
}
```


---

## Short Coding Challenges (coding + short tag)

**Write a function `char_count(s: &str) -> HashMap<char, usize>` that returns a map from each character in `s` to the number of times it appears.**

Call it in `main` with `"rust"` and print the resulting map with `{:?}`.

```rust,editable



```


---

**In `main`, start with `let nums = vec![1, 2, 2, 3, 1, 4, 3, 5];` and use a `HashSet<i32>` to count how many distinct values appear. Print the count.**

```rust,editable



```


---

**In `main`, build a `BTreeMap<&str, i32>` from the pairs `("banana", 3)`, `("apple", 5)`, `("cherry", 2)`, and then iterate and print each `name score` pair on its own line.**

The output should be in alphabetical order by name because of the map type.

```rust,editable



```


---

**In `main`, use a `BinaryHeap<i32>` to find and print the three largest values in `vec![4, 10, 2, 8, 15, 7, 1]`, in descending order, separated by spaces.**

```rust,editable



```


---

**In `main`, use `VecDeque<i32>` as a FIFO queue. Enqueue the numbers 1 through 5 (in order), then dequeue them all and print each dequeued value on its own line.**

```rust,editable



```


---

**In `main`, use iterator methods to compute and print the sum of squares of the even numbers in `1..=10`.**

```rust,editable



```


---

**In `main`, given `vec![3, 1, 4, 1, 5, 9, 2, 6, 5]`, use `.partition(...)` to split the values into two `Vec<i32>`s: those less than 5 and those greater than or equal to 5. Then print the lengths of the two resulting vectors.**

```rust,editable



```


---

**Given `let fruits = vec!["apple", "banana", "apple", "cherry", "banana", "apple"];`, in `main` build a `HashMap<&str, i32>` using the `entry` API that inserts each key and increments the count for each key and print how many times `"apple"` appears.**

```rust,editable



```


---

**Write a function `first_long<'a>(words: &'a [&'a str], min_len: usize) -> Option<&'a str>` that returns the first word in `words` whose length is at least `min_len`, or `None` if there isn't one.**

Call it from `main` with `&["hi", "ok", "rust", "hello"]` and `min_len = 4`, and print the result using `{:?}`.

```rust,editable



```


---

**Write a generic function `largest<T: PartialOrd + Copy>(list: &[T]) -> T` that returns the largest element of the slice. Assume the slice is non-empty.**

Call it from `main` once with `&[10, 3, 7, 25, 4]` and once with `&[1.5_f64, 2.5, 0.5]` and print both results.

```rust,editable



```


---

**In `main`, start with `let mut scores = vec![("alice", 85), ("bob", 92), ("carol", 78)];` and use `sort_by` with a closure to sort the vector by score in descending order. Print the resulting vector with `{:?}`.**

```rust,editable



```


---

## Long Coding Challenges (coding + long tag)

**Write a program that:**
- counts word frequencies in a sentence and
- prints the three most frequent words, along with their counts, in descending order of frequency.

Use the sentence `"the quick brown fox jumps over the lazy dog the fox runs fast over the hill"`. Split on whitespace to get words (do not worry about punctuation or case). **Break ties by alphabetical order of the word.**

Expected output:

```text
the 4
fox 2
over 2
```

```rust,editable



```


---

**Write a program that prints, in sorted order, the values that appear in both input vectors:**

```rust
let a = vec![1, 2, 3, 4, 5, 6];
let b = vec![4, 5, 6, 7, 8, 9];
```

**Use `HashSet` for the membership checks, then sort the resulting common values before printing them (one per line).**

Expected output:

```text
4
5
6
```

```rust,editable



```


---

**Build a small "grade book"**
- Given `let entries = vec![("carol", 72), ("alice", 95), ("bob", 58), ("alice", 88), ("bob", 80)];`,
- insert each pair into a `BTreeMap<&str, Vec<i32>>` keyed by name, with the list of that student's scores as the value.
- Then iterate the map (which will give names in alphabetical order)
    - and print each student's name followed by their average score, formatted to one decimal place.

**Hint:** To print 1 decimal place, use `{:.1}` in the `println!` macro.

Expected output:

```text
alice 91.5
bob 69.0
carol 72.0
```

```rust,editable



```


---

**Write:**
- a function `kth_largest(nums: &[i32], k: usize) -> Option<i32>` that returns the `k`-th largest value in the slice (1-indexed).
- If `k` is zero or larger than the slice length, return `None`.
- Use a `BinaryHeap` to find the answer
- Call the function from `main` with `&[7, 2, 9, 4, 11, 3]` and `k = 3`
- Print the result with `{:?}`.

Expected output:

```text
Some(7)
```

```rust,editable



```


---

**Write a function `is_balanced(s: &str) -> bool` that returns `true` if every opening bracket in `s` is matched by a closing bracket of the same type in the correct order. Support `()`, `[]`, and `{}`. Ignore any other characters.**

Use a `Vec<char>` as a stack. Call the function from `main` on each of these inputs and print the result on its own line:

```rust
let cases = ["()[]{}", "([{}])", "(]", "((()"];
```

Expected output:

```text
true
true
false
false
```

```rust,editable



```


---

**Implement the following:**
- Write a function `moving_avg(values: &[f64], window: usize) -> Vec<f64>` that computes the rolling average over a sliding window of size `window`.
- Use a `VecDeque<f64>` to track the window.
- Only emit an average once the window is fully populated, so the output length is `values.len() - window + 1` (or empty if `values.len() < window`).**

Call the function from `main` with `values = &[1.0, 2.0, 3.0, 4.0, 5.0]` and `window = 3`, and print each result on its own line, formatted to one decimal place.

Expected output:

```text
2.0
3.0
4.0
```

```rust,editable



```


---

**Implement the following article and tweet structs and trait:**
- Define a trait `Summary` with a single method `summary(&self) -> String`.
- Define two structs: `Tweet { user: String, text: String }` and `Article { title: String, body: String }`.
- Implement `Summary` for the two structs.
    - The tweet summary should be `"@user: text"`, and
    - the article summary should be `"title — first 20 chars of body"`
        - (use `.chars().take(20).collect::<String>()` to get the first 20 characters)
- In `main`, create:
    - A `Tweet` with user `"alice"` and text `"hello rust!"`
    - An `Article` with title `"DS210"` and body `"Rust is a systems language."`
    - Call the `summary` method for each and print the result.

**Hint:** Use the `format!` macro to create the summary strings.

Expected output:

```text
@alice: hello rust!
DS210 — Rust is a systems language.
```

```rust,editable



```


---

**Given the slice of `(city, temp_f)` pairs:**

```rust
let readings = vec![
    ("Boston", 48.0_f64), ("Phoenix", 102.5),
    ("Denver", 77.0), ("Miami", 88.0), ("Anchorage", 36.0),
];
```

**Write a program that:**
- prints every city whose temperature is above 75°F,
    - with its temperature converted to Celsius (formula: `(f - 32.0) * 5.0 / 9.0`),
    - one per line.
- Sort the output alphabetically by city.
- Use iterator methods (`filter`, `map`, `collect`, `sort_by_key`, ...) rather than explicit loops.

Each printed line should look like `Phoenix 39.2` (temperature formatted to one decimal place).

```rust,editable



```


---

**Define a struct `Rectangle { width: u32, height: u32 }` with three methods:**

1. `area(&self) -> u32`
2. `perimeter(&self) -> u32`
3. `can_hold(&self, other: &Rectangle) -> bool` — returns `true` if `self` is strictly larger than `other` in both dimensions

**In `main`, create `let a = Rectangle { width: 10, height: 5 };` and `let b = Rectangle { width: 4, height: 3 };`. Print `a.area()`, `a.perimeter()`, and `a.can_hold(&b)` each on their own line.**

```rust,editable



```


---

**Implement the following:**
- You are given `let scores = vec![("alice", 90), ("bob", 75), ("alice", 82), ("carol", 88), ("bob", 91), ("alice", 79)];`
- Using the `Entry` API on a `HashMap<&str, (i32, i32)>` (where the value is `(total_points, count)`),
- compute each student's average.
- Then print a line for each student in alphabetical order, formatted `name avg` with the average rounded to one decimal place.

Expected output:

```text
alice 83.7
bob 83.0
carol 88.0
```

```rust,editable



```


---
