# Ada - Incorrect Array Iteration in For Loop

This repository demonstrates a common, yet subtle error in Ada programming related to iterating over arrays. The incorrect code attempts to directly utilize the array's range attribute within a `for` loop, leading to unexpected behavior. The solution shows the correct way to iterate, utilizing the `First` and `Last` attributes and providing an explicit array index.

## Bug
The primary issue lies in directly using `My_Arr'Range` within the `for` loop. This attribute provides the index range (1..10), not the actual array values. To correctly iterate through the array values, you must use `My_Arr'First..My_Arr'Last` and then access individual array elements using their index.

## Solution
The solution utilizes `My_Arr'First..My_Arr'Last` to accurately traverse the array index range. The array elements are then accessed explicitly using the index variable `I`.
