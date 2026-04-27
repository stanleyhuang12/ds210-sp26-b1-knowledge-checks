# Reference Material

<!--
pandoc -s src/final_exam_reference_material.md -o generated_exams/final_exam_reference_material.tex -V geometry:margin=1in -V fontsize=11pt
-->

## Iterator Methods and Adapters

* `next(&mut self) -> Option<Self::Item>`  Get the next element of an iterator (`None` if there isn't one)
* `collect<B>(self) -> B` -> Transforms the iterator into a collection of type `B`
* `take(n: usize) -> Take<Self>` -> Take first N elements of an iterator and _turn them into an iterator_
* `skip(n: usize) -> Skip<Self>` -> Skip first N elements of an iterator and _turn them into an iterator_
* `cycle() -> Cycle<Self>` -> Turn a finite iterator into an infinite one that repeats itself
* `for_each(|x| ...) -> ()` -> Apply a closure to each element in the iterator
* `filter(|x| ...) -> Filter<Self, P>` -> _Create new iterator_ from old one for elements where closure is true
* `map(|x| ...) -> Map<Self, F>` -> _Create new iterator_ by applying closure to input iterator
* `any(|x| ...) -> bool` -> Return `true` if closure is true for any element of the iterator
* `fold(init: B, |acc, x| ...) -> B` -> Initialize accumulator to `init`, execute closure on each element
* `reduce(|acc, x| ...) -> Option<Self::Item>` -> Similar to fold but the initial value is the first element
* `zip(other_iter) -> Zip<Self, U>` -> Zip two iterators together into pairs of `(a, b)`
* `enumerate() -> Enumerate<Self>` -> Create iterator of `(index, element)` pairs
* `partition(|x| ...) -> (B, B)` -> Split iterator into two _collections_ based on predicate
* `sum() -> S` -> Sum all elements (works on numeric iterators)
* `count() -> usize` -> Count the number of elements in the iterator
* `copied() -> Copied<Self>` -> Create iterator of owned copies from an iterator of references
* `find(|x| ...) -> Option<Self::Item>` -> Return the first element for which the closure is true (`None` if none)

## String and &str Methods

* `s.len() -> usize` -> Number of bytes in the string
* `s.contains("sub") -> bool` -> `true` if string contains the substring
* `s.to_uppercase() -> String` -> Returns a new `String` in uppercase
* `s.to_lowercase() -> String` -> Returns a new `String` in lowercase
* `s.push('c') -> ()` -> Append a single character (mutates `String`)
* `s.push_str("text") -> ()` -> Append a string slice (mutates `String`)
* `s.chars() -> Chars<'_>` -> Iterator over the characters of the string
* `s.split_whitespace() -> SplitWhitespace<'_>` -> Iterator of substrings split by whitespace
* `s.parse::<T>() -> Result<T, T::Err>` -> Parse the string into type `T`
* `s.is_empty() -> bool` -> `true` if the string has length 0

## Vec Methods

* `v.push(val) -> ()` -> Append element to the end
* `v.pop() -> Option<T>` -> Remove and return last element
* `v.get(i: usize) -> Option<&T>` -> Safe bounds-checked access
* `v.len() -> usize` -> Number of elements
* `v.is_empty() -> bool` -> `true` if the vector has no elements
* `v.iter() -> Iter<'_, T>` -> Iterator of immutable references `&T`
* `v.iter_mut() -> IterMut<'_, T>` -> Iterator of mutable references `&mut T`
* `v.into_iter() -> IntoIter<T>` -> Consuming iterator of owned values `T`
* `v.sort() -> ()` -> Sort in place in ascending order (requires `T: Ord`)
* `v.sort_by(|a, b| ...) -> ()` -> Sort in place using a comparison closure (closure returns `Ordering`)
* `v.sort_by_key(|x| ...) -> ()` -> Sort in place using a key function
* `v.contains(&x) -> bool` -> `true` if the vector contains `x` (O(n) linear scan)
* `v.to_vec() -> Vec<T>` -> Copy a slice `&[T]` into a new `Vec<T>` (requires `T: Clone`)

## Option Methods

* `opt.unwrap() -> T` -> Extract the value or **panic** if `None`
* `opt.unwrap_or(default: T) -> T` -> Extract the value or return `default` (eager)
* `opt.unwrap_or_else(|| ...) -> T` -> Extract the value or compute default via closure (lazy)
* `opt.map(|x| ...) -> Option<U>` -> Transform the inner value; `None` stays `None`
* `opt.is_some() -> bool` -> `true` if `Some`
* `opt.is_none() -> bool` -> `true` if `None`

## Other Useful Methods

* `val.clone() -> T` -> Create a deep copy of the value
* `a.cmp(&b) -> std::cmp::Ordering` -> Compare two values; returns `Ordering::Less`, `Equal`, or `Greater`
* `ordering.then(other: Ordering) -> Ordering` -> Use `other` as a tiebreaker when `ordering` is `Equal` (e.g. `a.cmp(&b).then(x.cmp(&y))`)
* `val.into() -> U` -> Convert `val` into type `U` via the `Into`/`From` trait (e.g. `"text".into()` produces a `String`)
* `(x as f64).sqrt() -> f64` -> Square root of a floating-point number
* `format!("...", args) -> String` -> Like `println!` but returns a `String` instead of printing
* `print!("...", args)` -> Like `println!` but does **not** append a newline
* `{:?}` -> Debug format specifier (in `println!` / `format!`)
* `{:.2}` -> Display with 2 decimal places

## Test Assertion Macros

* `assert!(expr) -> ()` -> Pass if `expr` is `true`
* `assert_eq!(a, b) -> ()` -> Pass if `a == b`; shows both values on failure
* `assert_ne!(a, b) -> ()` -> Pass if `a != b`; shows both values on failure
* Assert macros can take an optional custom failure message, e.g., `assert_eq!(a, b, "{} is not equal to {}", a, b)`.

## HashMap Methods

### Basic Operations:

* `new()`: Creates an empty HashMap.
* `insert(key, value) -> Option<V>`: Adds a key-value pair to the map. If the map did not have the key then `None` is returned, if the map did have the key _the old value is returned_ as `Some(V)`.
* `remove(key) -> Option<V>`: Removes a key-value pair from the map. If the map did not have the key then `None` is returned, if the map did have the key the value is returned as `Some(V)`.
* `get(key) -> Option<&V>`: Returns a reference to the value in the map, if any, that is equal to the given key. Returns `None` if the key is not present.
* `contains_key(key) -> bool`: Checks if the map contains a specific key. Returns `true` if present, `false` otherwise.
* `len() -> usize`: Returns the number of key-value pairs in the map.
* `is_empty() -> bool`: Checks if the map contains no key-value pairs.
* `clear()`: Removes all key-value pairs from the map.
* `drain()`: Clears the map and returns all key-value pairs as an iterator.

### Entry API:

* `entry(key).or_insert(value)`: Returns a mutable reference to the value in the map, if any, that is equal to the given key. If the key is not present, inserts the given value and returns a mutable reference to the new value.
* `entry(key).or_insert_with(|| ...)`: Like `or_insert`, but the default value is computed lazily from a closure (useful when construction is expensive, e.g. `or_insert_with(Vec::new)`).

### Iterators and Views:

* `iter()`: Returns an immutable iterator over the key-value pairs in the map.
* `iter_mut()`: Returns a mutable iterator over the key-value pairs in the map.
* `into_iter()`: Returns a consuming iterator of owned `(key, value)` pairs (moves the map).
* `keys()`: Returns an iterator over the keys in the map.
* `values()`: Returns an iterator over the values in the map.
* `values_mut()`: Returns a mutable iterator over the values in the map.

### Indexing:

* `map[&key]`: Returns a reference to the value for `key`. **Panics** if the key is absent. Use `get` for a non-panicking alternative.

## HashSet Methods

### Basic Operations:

* `new()`: Creates an empty HashSet.
* `insert(value)`: Adds a value to the set. Returns true if the value was not present, false otherwise.
* `remove(value)`: Removes a value from the set. Returns true if the value was present, false otherwise.
* `contains(value)`: Checks if the set contains a specific value. Returns true if present, false otherwise.
* `len()`: Returns the number of elements in the set.
* `is_empty()`: Checks if the set contains no elements.
* `clear()`: Removes all elements from the set.
* `drain()`: Returns an iterator that removes all elements and yields them. The set becomes empty after this operation.

### Entry API:

* `entry(value).or_insert(value)`: Returns a mutable reference to the value in the set, if any, that is equal to the given value. If the value is not present, inserts the given value and returns a mutable reference to the new value.

### Set Operations:

* `union(&self, other: &HashSet<T>)`: Returns an iterator over the elements that are in self or other (or both).
* `intersection(&self, other: &HashSet<T>)`: Returns an iterator over the elements that are in both self and other.
* `difference(&self, other: &HashSet<T>)`: Returns an iterator over the elements that are in self but not in other.
* `symmetric_difference(&self, other: &HashSet<T>)`: Returns an iterator over the elements that are in self or other, but not in both.
* `is_subset(&self, other: &HashSet<T>)`: Checks if self is a subset of other.
* `is_superset(&self, other: &HashSet<T>)`: Checks if self is a superset of other.
* `is_disjoint(&self, other: &HashSet<T>)`: Checks if self has no elements in common with other.

### Iterators and Views:

* `iter()`: Returns an immutable iterator over the elements in the set.
* `get(value)`: Returns a reference to the value in the set, if any, that is equal to the given value.

## BTreeMap Methods

### Basic Operations:

* `new()`: Creates an empty BTreeMap.
* `insert(key, value) -> Option<V>`: Adds a key-value pair to the map. If the map did not have the key then `None` is returned, if the map did have the key _the old value is returned_ as `Some(V)`.
* `remove(key) -> Option<V>`: Removes a key-value pair from the map. If the map did not have the key then `None` is returned, if the map did have the key the value is returned as `Some(V)`.
* `get(key) -> Option<&V>`: Returns a reference to the value in the map, if any, that is equal to the given key. Returns `None` if the key is not present.
* `contains_key(key) -> bool`: Checks if the map contains a specific key. Returns `true` if present, `false` otherwise.
* `len() -> usize`: Returns the number of key-value pairs in the map.
* `is_empty() -> bool`: Checks if the map contains no key-value pairs.
* `clear()`: Removes all key-value pairs from the map.
* `drain()`: Clears the map and returns all key-value pairs as an iterator.

### Entry API:

* `entry(key).or_insert(value)`: Returns a mutable reference to the value in the map, if any, that is equal to the given key. If the key is not present, inserts the given value and returns a mutable reference to the new value.
* `entry(key).or_insert_with(|| ...)`: Like `or_insert`, but the default value is computed lazily from a closure (e.g. `or_insert_with(Vec::new)`).

### Iterators and Views:

* `iter()`: Returns an immutable iterator over the key-value pairs in the map.
* `iter_mut()`: Returns a mutable iterator over the key-value pairs in the map.
* `into_iter()`: Returns a consuming iterator of owned `(key, value)` pairs (moves the map).
* `keys()`: Returns an iterator over the keys in the map.
* `values()`: Returns an iterator over the values in the map.
* `values_mut()`: Returns a mutable iterator over the values in the map.
* `range(start..end)`: Returns an iterator over the key-value pairs in the map in the range `[start, end)`.
* `first_key_value()`: Returns the first key-value pair in the map.
* `last_key_value()`: Returns the last key-value pair in the map.

### Indexing:

* `map[&key]`: Returns a reference to the value for `key`. **Panics** if the key is absent. Use `get` for a non-panicking alternative.

## BTreeSet Methods

### Basic Operations:

* `new()`: Creates an empty BTreeSet.
* `insert(value)`: Adds a value to the set. Returns true if the value was not present, false otherwise.
* `remove(value)`: Removes a value from the set. Returns true if the value was present, false otherwise.
* `contains(value)`: Checks if the set contains a specific value. Returns true if present, false otherwise.
* `len()`: Returns the number of elements in the set.
* `is_empty()`: Checks if the set contains no elements.
* `clear()`: Removes all elements from the set.
* `drain()`: Returns an iterator that removes all elements and yields them. The set becomes empty after this operation.

### Entry API:

* `entry(value).or_insert(value)`: Returns a mutable reference to the value in the set, if any, that is equal to the given value. If the value is not present, inserts the given value and returns a mutable reference to the new value.

### Set Operations:

* `union(&self, other: &BTreeSet<T>)`: Returns an iterator over the elements that are in self or other (or both).
* `intersection(&self, other: &BTreeSet<T>)`: Returns an iterator over the elements that are in both self and other.
* `difference(&self, other: &BTreeSet<T>)`: Returns an iterator over the elements that are in self but not in other.
* `symmetric_difference(&self, other: &BTreeSet<T>)`: Returns an iterator over the elements that are in self or other, but not in both.
* `is_subset(&self, other: &BTreeSet<T>)`: Checks if self is a subset of other.
* `is_superset(&self, other: &BTreeSet<T>)`: Checks if self is a superset of other.
* `is_disjoint(&self, other: &BTreeSet<T>)`: Checks if self has no elements in common with other.

### Iterators and Views:

* `iter()`: Returns an immutable iterator over the elements in the set.
* `get(value)`: Returns a reference to the value in the set, if any, that is equal to the given value.

## BinaryHeap Methods (Max-Heap)

`std::collections::BinaryHeap` is a max-heap priority queue. Use `std::cmp::Reverse` to get a min-heap.

* `new()`: Creates an empty `BinaryHeap`.
* `from(vals)`: Creates a `BinaryHeap` from an array or vector.
* `from_iter(iter)`: Creates a `BinaryHeap` from an iterator.
* `push(value) -> ()`: Inserts a value into the heap.
* `pop() -> Option<T>`: Removes and returns the largest element, or `None` if empty.
* `peek() -> Option<&T>`: Returns a reference to the largest element without removing it.
* `len() -> usize`: Number of elements.
* `is_empty() -> bool`: `true` if the heap has no elements.
* `iter()`: Returns an iterator over the elements in arbitrary order (not sorted).
* `into_sorted_vec() -> Vec<T>`: Consumes the heap and returns a `Vec` sorted in ascending order.

## VecDeque Methods (Double-Ended Queue)

`std::collections::VecDeque` is a double-ended queue (ring buffer). Commonly used as a FIFO queue via `push_back` / `pop_front`.

* `new()`: Creates an empty `VecDeque`.
* `push_back(value) -> ()`: Appends an element to the back.
* `push_front(value) -> ()`: Prepends an element to the front.
* `pop_back() -> Option<T>`: Removes and returns the back element.
* `pop_front() -> Option<T>`: Removes and returns the front element.
* `front() -> Option<&T>`: Reference to the front element.
* `back() -> Option<&T>`: Reference to the back element.
* `len() -> usize`: Number of elements.
* `is_empty() -> bool`: `true` if empty.
* `iter()`: Iterator from front to back.

## LinkedList Methods

`std::collections::LinkedList` is a doubly-linked list.

* `new()`: Creates an empty `LinkedList`.
* `push_back(value) -> ()`: Appends an element to the back.
* `push_front(value) -> ()`: Prepends an element to the front.
* `pop_back() -> Option<T>`: Removes and returns the back element.
* `pop_front() -> Option<T>`: Removes and returns the front element.
* `front() -> Option<&T>`: Reference to the front element.
* `back() -> Option<&T>`: Reference to the back element.
* `len() -> usize`: Number of elements.
* `is_empty() -> bool`: `true` if empty.
* `iter()`: Iterator from front to back.

## Common Derivable Traits

Add with `#[derive(...)]` on a `struct` or `enum`:

* `Debug`: Enables formatting with `{:?}` in `println!` / `format!`.
* `Clone`: Provides `.clone()` to produce a deep copy.
* `Copy`: Value is copied (bitwise) on assignment instead of moved. Requires `Clone`. Only valid for types whose fields are all `Copy` (e.g., no `String`, no `Vec<T>`).
* `PartialEq`: Enables `==` and `!=`.
* `Eq`: Marker trait for total equality (no `NaN`-like values). Requires `PartialEq`. Needed (with `Hash`) for `HashMap` / `HashSet` keys.
* `PartialOrd`: Enables `<`, `<=`, `>`, `>=` via `partial_cmp`.
* `Ord`: Total ordering via `cmp`. Requires `Eq` and `PartialOrd`. Needed for `BTreeMap` / `BTreeSet` keys and `BinaryHeap` elements.
* `Hash`: Enables use as a `HashMap` / `HashSet` key. Typically combined with `Eq`.
* `Default`: Provides `T::default()` that returns a default value.

Example:

```rust
#[derive(Debug, Clone, PartialEq, Eq, Hash)]
struct Point { x: i32, y: i32 }
```
