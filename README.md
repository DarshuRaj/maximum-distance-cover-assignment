
## What is the maximum distance that you can cover? 

You have to go on a trip in your car which can hold a limited amount of fuel. You know how many liters of fuel your car uses per hour for certain speeds and you have to find out how far a certain amount of fuel will take you when travelling at the optimal speed.

You will be given a set of speeds, a corresponding set of fuel consumption and an amount that tells you the amount of fuel in your tank.

The input will be
* The first line contains an integer N, that signifies the number of speeds for the car
* The second line contains N number of speeds
* The third line contains N number of consumption, such that if the car moves at ith speed (in km/hr) it consumes ith fuel (in ml)
* The 4th line contains the fuel available in your car

You have to tell what is the maximum distance that the car can travel (in kilometers) with the given amount of fuel, and travelling at a constant speed equal to one of the elements of speeds.

Note: You have to return a double value, with upto 3 digits after the decimal

### Sample Input (Plaintext Link)
        6
        250 240 230 220 210 211
        5000 4500 4000 3500 3000 3000
        50000
### Sample Output (Plaintext Link)
        3516.666
