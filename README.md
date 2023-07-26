# MindfulCoderVentures
# Daily LeetCode Experience

## Introduction

This repository serves as a daily log of my experiences with LeetCode. I have made a decision to document my journey of practising LeetCode problems every day. There are two main reasons behind this decision. Firstly, it helps me stay disciplined and committed to daily coding practice, which in turn, enhances my problem-solving and critical thinking abilities. Secondly, I want to record this process as a reflection of my personal growth in the world of IT and coding. Since I embarked on this journey, I have found great fulfillment in every passing day, and I am eager to share my insights and progress with others.

## Motivation

As I explore the realms of IT and coding, I have come to appreciate the richness and depth they offer. In my current job, I encounter certain keywords like SQL and intriguing input boxes that make me wonder about the underlying code that powers them. I am fascinated by the realization that numerous efforts from various individuals have contributed to building these products. As a user, I feel fortunate to benefit from these innovations, and it fuels my desire to become a software developer myself. I aspire to be a part of the community that constructs and maintains impactful software.

## Repository Purpose

In this repository, I will be documenting my daily progress with LeetCode, including the problems I work on, the approaches I take, and the lessons I learn along the way. I hope that by doing so, I can inspire others to embark on their coding journeys and also receive valuable feedback from the community to improve my problem-solving skills.


## Date: 26th July 2023

### LeetCode Problem: 977

```java
class Solution {
    public int[] sortedSquares(int[] nums) {
        int[] result = new int[nums.length];
        int left = 0, right = nums.length - 1;
        int index = nums.length - 1;
        
        while (left <= right) {
            if (nums[left] * nums[left] > nums[right] * nums[right]) {
                result[index--] = nums[left] * nums[left];
                left++;
            } else {
                result[index--] = nums[right] * nums[right];
                right--;
            }
        }
        
        return result;
    }
}

## Reflection:

Today, I solved the LeetCode problem 977. At first, I wrote almost all the steps of the solution, except for the while loop with the condition `left <= right`. I was not entirely clear about its purpose. However, after some research, I finally understood why we need it. The while loop ensures that we correctly handle all the elements in the array, including both positive and negative values, and place their squared values in the result array in non-decreasing order.
简而言之,当left <= right 的时候这个循环继续.

As for why we cannot use `Math.pow` to calculate the squares, I found the answer during my investigation. The reason is that using `Math.pow` with floating-point arithmetic might introduce rounding errors and impact the accuracy of the results. In this case, since we are dealing with integers, directly multiplying the numbers is more efficient and avoids any inaccuracies.

Overall, today's coding experience has been enlightening, and I feel more confident in my problem-solving skills. I look forward to the next challenge and the opportunity to learn and grow further in my coding journey.
