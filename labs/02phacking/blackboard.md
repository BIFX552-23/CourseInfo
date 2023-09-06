# p-hacking

Complete the [p-hacking lab](https://bifx552-23.github.io/CourseInfo/labs/02phacking/) and put your random seed in the comments when submitting this assignment.

For full credit:

* Your seed should return a vector of all 1's when run through the following code:

```
set.seed(<your seed>)

rbinom(10, 1, 0.5)
```