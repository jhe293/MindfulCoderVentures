## Daily Log: 2nd August 2023

### Learning about Time Complexity in Online Judge Algorithms

Today, I decided to delve into the topic of time complexity in online judge algorithms. Through an article, I learned about the time complexities of different algorithms involving recursion.

#### Function 1: Iterative Approach

```java
int function1(int x, int n) {
    int result = 1;  // Note: Any number raised to the power of 0 is equal to 1
    for (int i = 0; i < n; i++) {
        result = result * x;
    }
    return result;
}

Time Complexity: O(n)

#### Function 2: Recursive Approach

```java
int function2(int x, int n) {
    if (n == 0) {
        return 1; // Any number raised to the power of 0 is equal to 1
    }
    return function2(x, n - 1) * x;
}

Time Complexity: O(n)

####Function 3: Improved Recursive Approach

```java
 int function3(int x, int n) {
    if (n == 0) return 1;
    if (n == 1) return x;

    if (n % 2 == 1) {
        return function3(x, n / 2) * function3(x, n / 2) * x;
    }
    return function3(x, n / 2) * function3(x, n / 2);
}

Time Complexity: O(n)

####Function 4: Optimized Recursive Approach
```java
int function4(int x, int n) {
    if (n == 0) return 1;
    if (n == 1) return x;
    int t = function4(x, n / 2); // This step extracts the recursive operation

    if (n % 2 == 1) {
        return t * t * x;
    }
    return t * t;
}

Time Complexity: O(log n)

Reflections
I found today's learning about time complexity in online judge algorithms to be extremely interesting. It's intriguing how algorithms with seemingly similar recursive approaches can have different time complexities. I discovered that even when we expect O(log n), there could be unexpected cases where the complexity turns out to be O(n). This calls for careful analysis and understanding of the underlying principles. I am excited to explore more advanced algorithms and data structures in the future to enhance my problem-solving skills further