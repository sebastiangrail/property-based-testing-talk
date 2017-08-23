autoscale: true
slidenumbers: true

# Property Based Testing

---

## Testing a `max` function with conventional unit tests

---

# Test Driven Development

- write a "single" unit test describing an aspect of the program
- run the test, which should fail because the program lacks that feature
- write "just enough" code, the simplest possible, to make the test pass
- "refactor" the code until it conforms to the simplicity criteria
- repeat, "accumulating" unit tests over time

<br />
> https://www.agilealliance.org/glossary/tdd/

---

![Agile Alliance](Images/AgileAlliance.png)

---



```swift
func max(_ x: Int, _ y: Int) -> Int {
  return 0
}
```

# ✅

---

```swift
XCTAssertEqual(max(1, 2), 2)
```

```swift
func max(_ x: Int, _ y: Int) -> Int {
  return 0
}
```

# 🔴

---

```swift
XCTAssertEqual(max(1, 2), 2)
```

```swift
func max(_ x: Int, _ y: Int) -> Int {
  return 2
}
```

# ✅

---

```swift
XCTAssertEqual(max(1, 2), 2)
XCTAssertEqual(max(1, 3), 3)
```

```swift
func max(_ x: Int, _ y: Int) -> Int {
  return 2
}
```

# 🔴

---

```swift
XCTAssertEqual(max(1, 2), 2)
XCTAssertEqual(max(1, 3), 3)
```

```swift
func max(_ x: Int, _ y: Int) -> Int {
  return y
}
```

# ✅

---

```swift
XCTAssertEqual(max(1, 2), 2)
XCTAssertEqual(max(1, 3), 3)
XCTAssertEqual(max(3, 1), 3)
```

```swift
func max(_ x: Int, _ y: Int) -> Int {
  return y
}
```

# 🔴

---

```swift
XCTAssertEqual(max(1, 2), 2)
XCTAssertEqual(max(1, 3), 3)
XCTAssertEqual(max(3, 1), 3)
```

```swift
func max(_ x: Int, _ y: Int) -> Int {
  if x == 3 {
    return x
  }
  return y
}
```

# ✅

---

```swift
XCTAssertEqual(max(1, 2), 2)
XCTAssertEqual(max(1, 3), 3)
XCTAssertEqual(max(3, 1), 3)
XCTAssertEqual(max(4, 1), 3)
```

```swift
func max(_ x: Int, _ y: Int) -> Int {
  if x == 3 {
    return x
  }
  return y
}
```

# 🔴

---

```swift
XCTAssertEqual(max(1, 2), 2)
XCTAssertEqual(max(1, 3), 3)
XCTAssertEqual(max(3, 1), 3)
XCTAssertEqual(max(4, 1), 3)
```

```swift
func max(_ x: Int, _ y: Int) -> Int {
  if x == 3 || x == 4 {
    return x
  }
  return y
}
```

# ✅

---

# ✋

---

```swift
func max(_ x: Int, _ y: Int) -> Int {
  return 0
}
```

---

```swift
func max(_ x: Int, _ y: Int) -> Int {
  return 0
}
```

```swift
let (a, b) = (Int.random, Int.random)
let result = max(a, b)
XCTAssert(result == a || result == b)
```

# ✅
### (if `Int.random` happens to be `0`)

---

```swift
func max(_ x: Int, _ y: Int) -> Int {
  return 0
}
```

```swift
for _ in 0..<100 {
  let (a, b) = (Int.random, Int.random)
  let result = max(a, b)
  XCTAssert(result == a || result == b)
}
```

# 🔴

---

```swift
func max(_ x: Int, _ y: Int) -> Int {
  return x
}
```

```swift
for _ in 0..<100 {
  let (a, b) = (Int.random, Int.random)
  let result = max(a, b)
  XCTAssert(result == a || result == b)
}
```

# ✅

---

```swift
func max(_ x: Int, _ y: Int) -> Int {
  return x
}
```

```swift
for _ in 0..<100 {
  let (a, b) = (Int.random, Int.random)
  let result = max(a, b)
  XCTAssert(result == a || result == b)
}
for _ in 0..<100 {
  let (a, b) = (Int.random, Int.random)
  let result = max(a, b)
  XCTAssert(result >= a && result >= b)
}
```

# 🔴
---

```swift
func max(_ x: Int, _ y: Int) -> Int {
  return x > y ? x : y
}
```

```swift
for _ in 0..<100 {
  let (a, b) = (Int.random, Int.random)
  let result = max(a, b)
  XCTAssert(result == a || result == b)
}
for _ in 0..<100 {
  let (a, b) = (Int.random, Int.random)
  let result = max(a, b)
  XCTAssert(result >= a && result >= b)
}
```

# ✅

---

# Properties

```swift
XCTAssert(result == a || result == b)
XCTAssert(result >= a && result >= b)
```

---

# Properties

```swift
XCTAssert(result == a || result == b)
XCTAssert(result >= a && result >= b)
```

- $$\forall a \in \mathbb{Z}, b \in \mathbb{Z}, max(a,b) = a \lor max(a,b) = b$$
- $$\forall a \in \mathbb{Z}, b \in \mathbb{Z}, max(a,b) \geq a \land max(a,b) \geq b$$

---

# Properties

- $$\forall a \in \mathbb{Z}, b \in \mathbb{Z}, max(a,b) = a \lor max(a,b) = b$$

```swift
forAll { (a: Int, b: Int) in
  max(a,b) == a || max(a,b) == b
}
```

- $$\forall a \in \mathbb{Z}, b \in \mathbb{Z}, max(a,b) \geq a \land max(a,b) \geq b$$

```swift
forAll { (a: Int, b: Int) in
  max(a,b) >= a && max(a,b) >= b
}
```

---

# SwiftCheck

---

```swift
func testMax() {
  property("max returns one of its inputs") <- forAll { (a: Int, b: Int) in
    max(a,b) == a || max(a,b) == b
  }
}
```

---

- Some examples of properties
- generating custom types
- modifying generators
- replaying tests
