# Hash as Index

## Exercise Overview

After the array, the second-to-most important data structure is the *hash table*. In various programming languages, the hash table is called by different names, but in Ruby, it's simply known as a *hash*. You've seen the hash before, although you may have not gotten a lot of practice with it yet.

While a hash is most typically used to store data that comes in the form of pairs, it can also be used to increase the speed of your code. 

In a nutshell, the speed of code is determined by how many steps it takes for the code to run. A hash can help to make your code faster by virtue of the fact that it only takes a single step to look up a key in a hash. (Right now, we're not going to get into why this is true, but trust us on this.) 

If used cleverly, then, we can take advantage of a hash to get our code to run in fewer steps, and thus faster. I like referring to this technique as using a hash "as an index".

And hey! We even have a video about how this works. As the first step of this exercise, go ahead and [watch this video](https://anyonecanlearntocode.com/think-like-a-software-engineer/videos/34).

(This is from our [Think Like an Engineer video series](https://anyonecanlearntocode.com/think-like-a-software-engineer/videos), which comes out once a week. As a side recommendation, we highly recommend subscribing to this series and also watching our past videos, as it can help you pick up the software engineering mindset pretty quickly.)

The rest of the exercise is described below.

## A Note About Decomposition

This deep dive leans heavily on decomposition. You're not expected to do much Googling outside the research of syntax.

## Exercise Details

For this deep dive, you'll be working on four separate sub-exercises. There are four methods inside the file `hash_as_index.rb`, and your job is to complete each one. However, you'll need to complete each method in two different ways! We'll explain this below.

Here are the instructions for each of the four exercises.

### Exercise 1: Intersection of Two Arrays

In the video mentioned in the overview above (you already watched it, right?), it describes two different ways to find the intersection of two arrays. One approach used "brute force" via nested loops, and the other used a hash to find the intersection in much fewer steps.

For Exercise 1, your job is to write the code for *both* of these approaches. You can write your code inside the `intersection` method, which you'll note accepts two different arrays as its arguments.

After you've written the first version, you can comment your code out to start working on the second version.

### Exercise 2: Find Array Duplicate

In Exercise 2, you will be completing a method named `find_first_duplicate` that finds the first duplicate value in an array. 

For example, the array:

```
[4, 3, 6, 8, 0, 3, 5, 7, 2, 9]
```

contains two instances of the integer `3`. As such, your method should return `3`. 

(You can assume that there's no more than one pair of duplicates, or you can simply return the first duplicate value you encounter.)

If an array contains *no* duplicate values, your method should return `nil`.

Again, as in all the exercises of this deep dive, you need to create *two* versions of this method. The first method will use nested loops with the brute-force approach. 

(Both loops would work within the single array, with one pointing at one number, and the other comparing every other value to that number. One other note: You may want to consider using other loops than the `each` loop, such as the `while` loop.)

After completing the brute-force version, comment it out and rewrite the same method using a hash approach in order to make your code run in fewer steps.

### Exercise 3: Array Subset

In this exercise, you will be determining whether one array is a *subset* of another array.

Let's say that we're dealing with two arrays, which we'll call Array #1 and Array #2. Array #2 would be considered a subset of Array #1 if *all* of the values of Array #2 can be found somewhere inside Array #1. 

For example, if our two arrays were:

```
array_1 = [1, 2, 3, 4, 5, 6]
array_2 = [6, 3, 2]
```

Here, Array #2 *is* a subset of Array #1 because the `6`, `3`, and `2` from Array #2 can all be found in Array #1. This is true even though Array #1 has some additional values beyond those in Array #2.

However, if our arrays were:

```
array_1 = [1, 2, 3, 4, 5, 6]
array_2 = [6, 3, 7]
```

In this case, Array #2 is *not* a subset of Array #1, since the `7` from Array #2 cannot be found anywhere inside Array #1.

Your job is to complete the method called `subset`. This method will accept two arrays, and the method should return `true` if `array_2` is a subset of `array_1`, and `false` if it is not.

First, you should write this method using the nested-loop brute-force approach. Once you've done this, rewrite the method using a hash to make the code more efficient. 

### Exercise 4: Two Sum

For this exercise, you'll be completing the `two_sum` method, which will accept an array of numbers.

The method should return `true` if there is at least one pair of numbers that add up to 10. That is, there needs to be some combination of exactly two numbers that add up to 10. If there isn't such a pair, the method should return `false`.

For example, let's look at the following array:

```
[5, 2, 9, 3, 0, 4, 8]
```

Here, since the `2` and `8` add up to 10, the `two_sum` method should return `true`.

However, in the array:

```
[5, 2, 9, 3, 0, 4]
```

The `two_sum` method should return `false`. Even though the *three* numbers `5`, `2`, and `3` add up to 10, the method should still return `false`. This is because we should only return `true` if we have exactly *two* numbers that add up to 10.

First, complete this method using a nested-loops brute-force approach. Then, make your code take fewer steps by using a hash. To make the hash approach work, there's a small clever epiphany that you'll have to try to figure out. This epiphany isn't obvious at first, but once you discover it, your code will be glorious.

## Unit Tests - Only Half the Story

This exercise comes with unit tests, found in the `test_hash_as_index.rb` file. You can run the tests with:

```
ruby test_hash_as_index.rb
```

> IMPORTANT NOTE: For this deep dive, the unit tests won't give you feedback as to whether you used a hash approach or a nested-loops approach. All these tests are designed to do are to let you know if your methods return the correct values. However, it's up to you to verify that you've written the code for both approaches.

Note that by default, most of the tests are skipped. You'll have to comment out the `skip` keyword to activate each of the tests.

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```