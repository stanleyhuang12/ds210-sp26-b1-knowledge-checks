# Knowledge Checks

**This page is a continuous work in progress. Check back regularly for updates.**

The intent of this page is to give you progressively more difficult challenges
that you should master as the course progresses.  You should attempt these with
no notes, references or AI assistance, as you won't have those on the quizzes.

> Don't move to the next challenge in each section until you have mastered the previous one.

> If a section is marked with a prerequisite section, completed that first!

> Knowledge checks are updated to cover up to Midterm 1.

- [Shell Commands](#shell-commands)
- [Git Commands](#git-commands)
- [Rust Command Line Tools](#rust-command-line-tools)
- [Basic Syntax](#basic-syntax)
- [System Concepts](#system-concepts)


## Shell Commands

Prerequisite: None

In zsh or bash shell...

<!-- q:id=shell_pwd_001 type=short_answer topic=shell diff=1 points=2 exam=true tags=terminal,filesystem -->
**How do you print the current working directory in bash or zsh?**
<br><br>


---



**How do you switch into a different directory?**
<br><br>


---

**How do you list contents of a directory?**
<br><br>


---

**How do you list detailed contents of a directory, including file permissions?**
<br><br>


---

**What do the first 10 letters represent in the detailed file listings?**
<br><br>

```bash
drwxr-xr-x@ 33 tgardos  staff   1056 Feb  3 09:49 book
-rw-r--r--@  1 tgardos  staff   1438 Jan 21 14:59 book.toml
```


---

**What does `tgardos` and `staff` represent in the detailed file listings?**
<br><br>

```bash
drwxr-xr-x@ 33 tgardos  staff   1056 Feb  3 09:49 book
-rw-r--r--@  1 tgardos  staff   1438 Jan 21 14:59 book.toml
```

---

**How do you list hidden files and directories in a directory?**
<br><br>


---

**What naming convention renders a file hidden?**
<br><br>


---

**What do the special characters `.` and `..` represent in file paths?**
<br><br>


---

**How do you recall previous commands at the command line?**

_Hint: You can see previous commands with one keypress._
<br><br>


---

**How do you list the most recently used commands?**

_Hint: This will print out a list of the most recent commands you issued._
<br><br>


---

## Git Commands

Prerequisite: [Shell Commands](#shell-commands)

**How do you clone a repository?**
<br><br>


---

**After you clone a repo, are you in the local repo or do you have to switch to it?**
<br><br>


---

**How do you list the branches in a repository?**
<br><br>


---

**How do you switch to a different branch?**
<br><br>


---

**How do you create a new branch?**
<br><br>


---

<!-- q:id=git_status_001 type=short_answer topic=git diff=1 points=2 exam=true tags=workflow,staging -->
**How do you check whether you have modified or untracked files in a git repository?**
<br><br>


---

**How do you stage changes in your repository?**

_Hint: You are adding them to the staging area._

<br>

---

**How do you commit changes to your repository along with a commit message in one step?**
<br><br>

---

**How do you merge a branch into the main branch?**
<br><br>

---

**How do you push changes to a remote repository?**
<br><br>

---

**How do you pull changes from a remote repository?**
<br><br>

---

<!-- q:id=git_sequence_001 type=short_answer topic=git diff=1 points=2 exam=true tags=workflow,staging -->

**Working with a remote repository**

What is the sequence of git and shell commands to:
- clone a repository, use the placeholder `<repository_url>`,
- make a topic branch called `hotfix`
- edit a file called `main.rs` (just use the placeholder `<edit main.rs>`),
- then all the remaining steps to stage the changes, commit the changes, push the changes to GitHub,
- use the placeholder`<create a pull request, approve and merge the pull request>`, and
- get the changes into the local repository's main branch
- delete the topic branch


---

<!-- q:id=git_local_001 type=short_answer topic=git diff=1 points=2 exam=true tags=workflow,staging -->

**Creating and working with a local repository**

Show the sequence for:
- creating a directory called `my_rust_project`
- switch into the directory
- initialize as a git repository
- create a branch called `hotfix`
- editing a file called `main.rs` (just use the placeholder `<edit main.rs>`)
- staging the changes
- commit the changes with a commit message
- switch to the main branch and merge the hotfix branch into it
- deleting the hotfix branch


---

## Rust Command Line Tools

Prerequisite: [Shell Commands](#shell-commands)

**How do you create a new Rust project?**
<br><br>

---

**How do you build a Rust project?**
<br><br>

---

**How do you run a Rust program?**
<br><br>

---

**How do you check if your project uses idiomatic Rust?**
<br><br>

---

**How do you correct common formatting issues in your Rust project?**
<br><br>

---

<!-- q:id=cargo_create_001 type=short_answer topic=rust diff=1 points=2 exam=true tags=workflow,staging -->

**Create and run a Rust projec using Cargo commands**

Show the command sequence for:
- Creating a new Rust project called `my_rust_project`
- Switch into the project directory
- Build the project (and verify no compiler errors)
- Run the project


---


<!-- q:id=cargo_commands_001 type=mcq_multi topic=rust diff=1 points=2 exam=true tags=rust,cargo,tooling -->
Select all statements that are true about Cargo commands:

- [ ] `cargo run` compiles and runs your program.
- [ ] `cargo check` verifies compilation quickly without producing a runnable binary.
- [ ] `cargo build --release` places optimized output under `target/release`.
- [ ] `cargo new` can only be used inside an existing Cargo project.


---


## Basic Rust Syntax

<!-- q:id=hello_world_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

**Hello World in Rust**

From memory, write a main function in Rust that prints "Hey world! I got this!".

```rust,editable



```

---

### Variables and Mutability

<!-- q:id=variables_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

**Variable Declaration in Rust**

From memory, write a main function with variable declarations in Rust that prints the following:
- declares a variable called `n` of type `i32` and assigns it the value `5`
- declares a variable called `x` of type `f32` and assigns it the value `3.14`
- declares a variable called `result` of type `f64` and assigns it the value `n * x`
- Prints the string "5 * 3.14 = 15.7", and would update correctly for any other values
  of `n` and `x`

```rust,editable





```


---

<!-- q:id=integers_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

Create a program that:

1. creates a u8 variable n with value 77
2. creates an f32 variable x with value 1.25
3. prints both numbers
4. multiplies them and puts the results in an f64 variable result
5. prints the result

Example output:

```bash
77
1.25
77 * 1.25 = 96.25
```

```rust,editable



```


---

<!-- q:id=mutable_variables_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

**Mutable Variables**

From memory, write a main function with a mutable variable declaration in Rust that prints the following:
- declares a mutable variable called `n` of type `i32` and assigns it the value `5`
- prints the value of `n`
- increments the value of `n` to `10`
- prints the value of `n`

```rust,editable


```


---

<!-- q:id=variable_shadowing_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

**Variable Shadowing and Scopes**

From memory, write a main function that initializes a variable y to 42, then start a scope block with a variable y initialized to 3.14 and print that variable, then end the scope block and print y again.

```rust,editable


```


---

<!-- q:id=find_bug_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

**Find the bug and fix it**

```rust,editable
fn main() {
    let x : i16 = 13;
    let y : i32 = -17;

    // won't work without the conversion
    println!("{}", x * y);
}
```


---

<!-- q:id=find_bug_002 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

**Find the bug and fix it**

```rust,editable
fn main() {
    let x:f32 = 4.0;
    let z:f64 = 1.25;

    println!("{:.1}", x * z);
}
```


---

<!-- q:id=bitwise_operators_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

Create a program that:

1. Creates an unsigned int x with value 19 and a signed int y with value -5
2. Prints both numbers in binary format (use {:08b} for 8-bit display)
3. Performs bitwise AND (&) and prints the result in binary
4. Performs bitwise OR (|) and prints the result in binary
5. Performs bitwise NOT (!) on both numbers and prints the results

Show what the expected output would be as well.

```rust,editable




```


---

<!-- q:id=string_and_string_slice_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

**String and string slice**

Create a program that:

1. Creates a `String` `s1` with value "Hello, "
2. Creates a string slice `s2` with value "World!"
3. Creates a *String* `s3` that is the concatenation of `s1` and `s2`
4. Prints the value of `s3`

Show what the expected output would be as well.

```rust,editable


```

> Note: There is actually a subtlety here that we purposely avoided but you can
> try out yourself by making `s1` a string slice and see what happens. It has to
> to do with ownership and borrowing which we cover later.


---

<!-- q:id=indexing_into_a_string_and_chars_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

**Indexing into a string and Chars**

Create a program that:

1. Creates a string slice `s` with value "Hello, World!"
2. Prints the first character of `s`
3. Prints the last character of `s`
4. Prints the third character of `s`

```rust,editable



```

---

<!-- q:id=booleans_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

Create a program that:

1. Creates an integer variable `x` with value 10
2. Creates a boolean variable `is_positive` with value `x > 0`
3. Prints the value of `is_positive`
4. Creates a boolean variable `is_negative` with value `x < 0`
5. Prints the value of `is_negative`
6. Creates a boolean variable `is_zero` with value `x == 0`
7. Prints the value of `is_zero`

```rust,editable



```


---

### Conditional Expressions

<!-- q:id=predict_output_001 type=predict_output topic=conditionals diff=2 points=3 exam=true tags=println,if_expression -->
**Predict the exact output of this Rust program.**

```rust
fn main() {
    let n = 4;
    if n % 2 == 0 {
        println!("even");
    } else {
        println!("odd");
    }
    println!("{}", n + 1);
}
```


---


<!-- q:id=conditional_expressions_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

Write a main function that:

1. creates a variable `threshold` with value 5
2. creates a variable `val` initialized to 10
3. then using print statements, if `val` is less than threshold, print "val is less than threshold"
4. otherwise, print "val is greater than or equal to threshold"
5. test it again with `val` = 3

```rust,editable
fn main() {

}
```


---

<!-- q:id=conditional_expressions_with_return_value_001 type=coding topic=conditionals diff=2 points=2 exam=true tags=rust,syntax,long -->

**Conditional Expressions with a return value**

Challenge: Ticket Pricing Based on Age

Write a program that uses a conditional expression with a `String`return value to calculate ticket prices:

- Age < 5: free ("Free")
- Age between 5 and 17: child ticket (\$10)
- Age between 18 and 64: adult ticket (\$20)
- Age 65 or older: senior ticket (\$12)

Print a message indicating the person's age and their ticket price.

```rust,editable
fn main() {

}
```


---

### Functions

<!-- q:id=functions_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

Write a function `say_hello` that takes a name and prints "Hello, {name}!".

```rust,editable


```


---

<!-- q:id=functions_002 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

Write a function `say_hello_format` that takes a name and returns a string "Hello, {name}!".

```rust,editable


```


---

<!-- q:id=functions_003 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

Write a function `calculate_area` that takes a length and width as `f64` and returns the area of a rectangle as `f64`. Call the function from main and print the result.

```rust,editable


```


---

### Loops and Arrays


<!-- q:id=loop_control_flow_001 type=mcq_multi topic=loops diff=1 points=2 exam=true tags=rust,loops,control_flow -->
Select all statements that are true about loop constructs in Rust:

- [ ] `for` is commonly used to iterate over collections like arrays.
- [ ] `while` is useful when iteration depends on a changing condition.
- [ ] `match` can replace all loops in Rust.
- [ ] `loop` is an unconditional loop that can be exited with `break`.


---


<!-- q:id=loops_and_arrays_001 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

Write a main function that prints all the multiples of n for numbers from 1 to m.
You can initialize `n` to 5 and `m` to 10.

```rust,editable


```


---

<!-- q:id=loops_and_arrays_002 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

Write a `for` loop to print the numbers from 12 to 0, skipped by 3.

```rust,editable


```


---

<!-- q:id=loops_and_arrays_003 type=coding topic=loops diff=2 points=2 exam=true tags=rust,syntax,long -->

**Finding prime numbers**

Write a main function that takes a starting and ending number and prints all the prime numbers in the range inclusive of starting and ending range.

_**Hint:** This is a an example of a short algorithm. Recall a number is prime if it is greater than 1 and has no divisors other than 1 and itself. There's no point in checking for divisors greater than the square root of the number because if there is a divisor greater than the square root, then there was also a divisor less than the square root so we would have already determined that the number is not prime._

```rust,editable



```


---


<!-- q:id=loops_and_arrays_004 type=coding topic=rust diff=1 points=2 exam=true tags=rust,syntax,short -->

**Ticket Pricing Based on Age in a Loop**

Loop over an array of ages and print the ticket price for each age

Write a program that uses a loop to calculate the ticket price for each age in the array `[3, 10, 30, 70]`:
- Age < 5: free ("Free")
- Age between 5 and 17: child ticket (\$10)
- Age between 18 and 64: adult ticket (\$20)
- Age 65 or older: senior ticket (\$12)

Print a message indicating the person's age and their ticket price.


```rust,editable



```


---

**While Loop**

Write a main loop that initializes a variable `num` to 10 and decrements it by 1 until it reaches 0. Print the value of `num` in each iteration.

```rust,editable


```


---

<!-- q:id=predict_output_002 type=predict_output topic=loops diff=2 points=3 exam=true tags=println,if_expression
 -->
**Predict the exact output of this Rust program.**

```rust,editable
fn main() {
let mut x = 1;
let result = loop {
    if x % 3 == 0 {
        x = x+1;
        continue;
    }
    println!("X is {}", x);
    x = x + 1;
    if x==9 {
        break x*2;
    }
};

println!("Result is {}", result);
}
```


---

<!-- q:id=predict_output_003 type=predict_output topic=loops diff=2 points=3 exam=true tags=println,if_expression -->

**Predict the exact output of this Rust program.**

```rust,editable
    fn main() {
    let mut x = 1;
    'outer_loop: loop {
        'inner_loop: loop {
            x = x + 1;
            if x % 5 != 0 {
                continue 'outer_loop;
            }
            if x > 15 {
                break 'outer_loop;
            }
        }
    };
    println!("Managed to escape! :-) with x {}", x);
}
```


---

<!-- q:id=predict_output_004 type=predict_output topic=loops diff=2 points=3 exam=true tags=println,if_expression -->
**Predict the exact output of this Rust program.**

```rust,editable
fn main() {
    let mut x = 1;
    'outer_loop: loop {
        println!("Hi outer loop");
        'inner_loop: loop {
            println!("Hi inner loop");
            x = x + 1;
            if x % 2 != 0 {
                break 'inner_loop;
            }
            println!("In the middle");
            if x >= 4 {
                break 'outer_loop;
            }
            println!("X is {}", x);
        }
        println!("In the end");
    };
    println!("Managed to escape! :-) with x {}", x);
}
```

---


### Tuples

**Tuples**

<!-- q:id=tuples_001 type=coding topic=tuples diff=1 points=2 exam=true tags=rust,syntax,short -->

Create a tuple with the values 1, 2, and 3 and debug print it as a single entity.
Show what the expected output would be as well.

```rust,editable


```


---

**Accessing Tuple Elements**

Create a tuple with the values 1, 2, and 3 and access the second element.

```rust,editable

```



---

<!-- q:id=tuple_indexing_001 type=fill_blank topic=tuples diff=1 points=2 exam=true tags=rust,tuples -->
For `let tuple = (10, 20, 30);`, the first element is accessed as `tuple.___` and
the third element is accessed as `tuple.___`.


---


**Returning a Tuple from a Function**

Write a function `find_min_max_average` that takes and array of 5 `i32` values
and returns a tuple of `(min, max, average)` of the values as datatype `(i32, i32, f64)`.

> Hint: take note that you are producing a floating point average from an integer
> sum and length, so think about what you have to do there.

Write a main function that tests the function by initializing and array to be
`[37, 42, 56, 12, 9]`, passing it to the function and then printing the results,
*without debug printing* -- either destructuring the tuple or indexing into the
tuple.

```rust,editable


```




---

### Enums and Match

<!-- q:id=enums_and_match_001 type=coding topic=enums_match diff=1 points=2 exam=true tags=rust,enum,match,short -->

**Basic Enum and Exhaustive Match**

Define an enum `Direction` with variants `North`, `East`, `South`, and `West`.

Write a function `abbrev(dir: Direction) -> &'static str` that uses `match` to return:
- `"N"` for `North`
- `"E"` for `East`
- `"S"` for `South`
- `"W"` for `West`

Write a `main` function that calls `abbrev` with `Direction::East` and prints the result.

```rust,editable

```


---

<!-- q:id=enums_and_match_002 type=coding topic=enums_match diff=1 points=2 exam=true tags=rust,enum,match,short -->

**Match with Wildcard Arm**

Define an enum `Status` with variants `Pending`, `InProgress`, `Completed`, and `Failed`.

Write a function `is_finished(status: Status) -> bool` using `match` such that:
- `Completed` returns `true`
- all other variants return `false` using `_ => ...`

Write a `main` function that tests the function with `Status::Completed` and `Status::Pending`.

```rust,editable

```


---

<!-- q:id=enums_and_match_003 type=coding topic=enums_match diff=2 points=2 exam=true tags=rust,enum,match,long -->

**Enum Variant with Data**

Define an enum `DivisionResult` with variants:
- `Ok(u32, u32)` for quotient and remainder
- `DivisionByZero`

Write a function `divide_with_remainder(x: u32, y: u32) -> DivisionResult`.
- If `y == 0`, return `DivisionByZero`
- Otherwise return `Ok(x / y, x % y)`

In `main`, call the function with `10` and `3`, then use `match` to print either:
- `quotient=<q>, remainder=<r>`
- or `cannot divide by zero`

```rust,editable

```


---

<!-- q:id=enums_and_match_004 type=coding topic=enums_match diff=2 points=2 exam=true tags=rust,enum,match,long -->

**Struct-Like Enum Variant**

Define this enum:

```rust
enum Message {
    Quit,
    Move { x: i32, y: i32 },
    Write(String),
}
```

_The main difference between this enum and the previous one is that this one has a variant with a struct-like data type, in this case `Move { x: i32, y: i32 }`
with the curly braces.  It works like the previous enum variant with a tuple,
but now we can give each field a name. You would initialize it like `let msg = Message::Move { x: 4, y: -2 };`._

Write a function `describe(msg: Message)` that uses `match` to print:
- `Quit`
- `Move to (x, y)` for `Move { x, y }`
- `Write: <text>` for `Write(text)`

In `main`, call `describe` with `Message::Move { x: 4, y: -2 }`.

```rust,editable



```


---

<!-- q:id=enums_and_match_005 type=coding topic=enums_match diff=2 points=2 exam=true tags=rust,enum,if_let,long -->

**Single-Branch Matching with `if let`**

Define an enum:

```rust
enum Direction {
    North,
    East,
    South,
    West,
}
```

In `main`, create `let dir = Direction::West;` and use `if let` with an `else` branch to print:
- `Going West` when the value is `West`
- `Not West` otherwise

```rust,editable

```


---

<!-- q:id=match_exhaustiveness_001 type=mcq_multi topic=enums_match diff=2 points=2 exam=true tags=rust,match,pattern -->
Select all statements that are true about `match` in Rust:

- [ ] `match` must be exhaustive over possible cases.
- [ ] The wildcard arm (`_`) can stand in for any remaining unmatched variants.
- [ ] The wildcard arm can only appear as the first arm in a `match`.
- [ ] If you do not cover all variants (or use `_`), the code will fail to compile.


---

<!-- q:id=if_let_usage_001 type=mcq_multi topic=enums_match diff=2 points=2 exam=true tags=rust,if_let,pattern -->
Select all statements that are true about `if let`:

- [ ] `if let` is convenient when you only care about one specific pattern.
- [ ] `if let` can be paired with `else` for a fallback branch.
- [ ] `if let` requires `==` for pattern matching comparisons.
- [ ] `if let` can reduce verbosity compared to a full `match` with many ignored arms.


---

<!-- q:id=pattern_matching_operator_001 type=mcq_multi topic=enums_match diff=1 points=2 exam=true tags=rust,match,if_let,syntax -->
Select all statements that are true about pattern matching syntax in Rust:

- [ ] In `if let`, a single `=` is used with a pattern.
- [ ] `==` tests value equality and is not the pattern-matching operator.
- [ ] `if let Some(x) == value` is valid Rust pattern matching syntax.
- [ ] In a `match`, each arm uses a pattern followed by `=>`.


---

<!-- q:id=match_wildcard_001 type=fill_blank topic=enums_match diff=1 points=2 exam=true tags=rust,match,pattern -->
In a `match` expression, the wildcard pattern `___` is commonly used as a
catch-all for remaining cases.


---

<!-- q:id=if_let_pattern_operator_001 type=fill_blank topic=enums_match diff=1 points=2 exam=true tags=rust,if_let,pattern -->
In `if let` pattern matching, Rust uses the `___` operator for matching (not
the equality operator).


---

## Ownership in Rust

Prerequisite: Complete [Basic Rust Syntax](#basic-rust-syntax)


## System Concepts

<!-- q:id=language_properties_001 type=mcq_multi topic=ownership diff=1 points=2 exam=true tags=rust,syntax -->

**Language Properties**

Rust language has:
- [ ] static data types
- [ ] dynamic data types

Python language has:
- [ ] static data types
- [ ] dynamic data types

Rust language memory management is:
- [ ] manual
- [ ] garbage collected
- [ ] ownership-based

Python language memory management is:
- [ ] manual
- [ ] garbage collected
- [ ] ownership-based

Select all that are true about Rust language:
- [ ] it is object-oriented
- [ ] is imperative
- [ ] is functional
- [ ] is declarative/logic

---

<!-- q:id=numeric_representation_001 type=fill_blank topic=ownership diff=1 points=2 exam=true tags=rust,syntax -->

**Numeric Representation**

Indicate which base the following number systems are in:

The decimal number system is base ________.

The binary number system is base ________.

The octal number system is base ________.

The hexadecimal number system is base ________.

---

<!-- q:id=convert_to_decimal_001 type=fill_blank topic=ownership diff=1 points=2 exam=true tags=rust,syntax -->

Convert the following numbers to decimal:

The binary number 0b0110_0101 is equivalent to the decimal number ________.

The binary number 0b1000_1010 is equivalent to the decimal number ________.

The hexadecimal number 0x1A is equivalent to the decimal number ________.

The octal number 0o15 is equivalent to the decimal number ________.

---







---


