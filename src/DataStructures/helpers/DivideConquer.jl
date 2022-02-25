"""
Divide & Conquer (Bisection method )

-has Bisection method 
1. normal way
2.Recursion [most used] [] <---

functions:
Context: divide & Conquer:
1. search() [the Easiest]
2. Right()  
3. Left()
     
A recursive Algorithm
1       n/2         n
|        |          |

1/ look at  n/2 index 

Compare left & compare right (do that in sequence)


if a[n/2] < a[n/2 ] ; n/2 middle index (Index)

"""
function search(arr, i = 1, val) #1
    val = findfirst(arr, i) #init val
    if val < arr[i] #terminal condition 
        return
        for i in enumerate(length(arr))  #range(1, len(arr)):
            #check modulo is length of array is divisible by 2 
            first = findfirst(arr)
            #TODO: Continue ...  <--- here 
            if arr[i-1] < val && val <= arr[i]    #  |      | 
                return i
            end

            # else if arr[i] > val && arr[i+1] >val 
        end
        #end #close if 
    end #close for 

    #else 
end
#end

#TODO: Bisection method #TODO: Revision #Sanity-check
#=
function searchRecursive(arr,i) #only ifs allowed 
    if val < arr[i] #fallback condition 
        return
    if arr[i] == val #special case(unicorn)

        #left side 
    elseif arr[i-1] < val &&  arr[i] >= val   #val <= arr[i]  |      | 
        bisect_left(a, x, low = 0, high = None) #3
    end
        #right side () 
    elseif arr[i-1] > val &&  arr[i] val <
        #TODO fill it 
        bisect_right(a, x, low=0, high=None) #2
    end
=#
#=
function  bisect_right(a, x, low=0, high=None) #2
    if hi isa nothing # Searching to the end
        hi = length(a) # get length 

    while low < high # More than one possibility
        mid = (low+high)//2 # Bisect (find midpoint)
    if x < a[mid] high = mid # Value < middle? Go left
        else low = mid+1 # Otherwise: go right
        return low
    end 

#left side 
function bisect_left(a, x, low = 0, high = None) #3
    if hi isa nothing # Searching to the end
        hi = length(a) # get length 

    while low > high
        # check n 
        mid = (low+high)//2
        return high 
    end 
end 
=#

"""iseven 
    Returns whether a number isEven or not 
```input:
m: a number 

```
output:
checkBool value or nothing
```
"""
function iseven(m) # \nerleg #͍
    ƞ = 0
    ƞ = m
    check = nothing
    condition = ƞ % 2
    if condition == 0
        check = true
    elseif Condition != 0
        check = false
    else# faulty input, or Unexpected error happened 
        return check
    end
    return check
end

iseven(2);
iseven(0);
iseven(6);
iseven(3)
"""Testing Area here 
        |   ----    |   ----    |
        left        mid         right 
1)if value[left] < value[mid] #expected - do none 
2)if value[left] > value[mid] #Action : swap (function call on recursion)
3)id value[left] == value[mid] #return 

1) if value[right] < value[mid] #expected - do none 
2) if value[right] > value[mid]
3) if value[right] == value[mid] #retrun 

Infer: generalize: Mid stays the same - whether left or right 
1) if value[i]< value[mid] # call left 
2) if value[i] > value[mid] # call right 
3) if value[i] == value[mid] # return  
------
only way is recursion for floats: 
beats mit 6.001 (freshmen can't do recursion) & 6.006 lecture @ (searching for time...) 
|  -------       |        ------          |
l                m                        r 
if (first(arr) - last(arr) )

function goleft(arr, i)
end 

function goright(arr, i)

end 
"""
"""
gets the Eucldian distance between 2 numbers
"""
euclideanDist(a::Int64, b::Int64) = (abs(max(a, b)) - abs(min(a, b))) # was (max(a, b) - abs(min(a, b))) #Unsymmetric 
function isMod(a::Int64, b::Int64)
    dif = dist(a, b)  #% 2 == 0 #? fl = true : fl = false;
    res = nothing
    if dif % 2 == 0  #rem(dif, 2) == 0
        res = true
    elseif dif % 2 != 0
        res = false
    else # sth else happened during evaluation of rem
        return res
    end
    return res
end
isMod(1, 3)


function dist(a::Int64, b::Int64)
    return euclideanDist(a, b)
end
#Solve problem: A. in the Abstract Domain 
function ϟ(a, b) #\upkoppa
    return a + b
end
using BenchmarkTools
@benchmark ϟ(1, 3) # maximum time:     0.100 ns (0.00% GC)
#=
BenchmarkTools.Trial: 10000 samples with 1000 evaluations.
 Range (min … max):  0.001 ns … 2.200 ns  ┊ GC (min … max): 0.00% … 0.00%
 Time  (median):     0.001 ns             ┊ GC (median):    0.00%
 Time  (mean ± σ):   0.042 ns ± 0.063 ns  ┊ GC (mean ± σ):  0.00% ± 0.00%

  █                                                       ▃  
  █▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁█ ▂=#

@benchmark ϟ(1, 10^6) # maximum time:     44.800 ns (0.00% GC)
#=
BenchmarkTools.Trial: 10000 samples with 1000 evaluations.
 Range (min … max):  4.700 ns …  2.682 μs  ┊ GC (min … max): 0.00% … 0.00%
 Time  (median):     5.000 ns              ┊ GC (median):    0.00%
 Time  (mean ± σ):   8.556 ns ± 43.835 ns  ┊ GC (mean ± σ):  0.00% ± 0.00%

  █▄▃▄▄▄▄▄▂▂▂▂▃▂▁▁                                           ▂
  ██████████████████▇▇▇▆▇▆▆▇▆▆▄▆▅▅▅▄▅▆▅▅▄▄▅▅▅▆▅▄▆▆▆▇▇▆▆▆▆▅▁▅ █
  4.7 ns       Histogram: log(frequency) by time     27.4 ns <=
  #
#= there exits a huge dichotomy 
#infer: UnOptimized 
an increase of a 10^6 yeilds an increase in time maximum by  447.99999999999994 times 
=#
@time ϟ(1, 3) #  0.000000 seconds # in @time,  we care about allocation  
@time ϟ(1, 10^6)

#using Base.Threads

#nthreads() # 1 

using BenchmarkTools
global strError = "ERROR: Unexpected argument(s), faulty input"
@benchmark euclideanDist(10^2, 10^3)


#=

#special case 
if arr[m]  == idx return m; # isa try 
else 
#go right 
if arr[m] < idx return dichotomy (array, m+1, right)
else 
#go left
return Dichotomy ( array , l eft ,m-1 ) ;


look at middle n/2 

=#

#--- testing Area 

"""
```input:
    euclidDistance: a Calculated  Eucledian Distance (between 2 points)

```

```output:
```
"""
function midCriterion(euclidDistance)
    m = 0
    m = euclidDistance #euclideanDist(a, b) # | b - a | 
    condition = nothing
    condition = iseven(m)
    check = nothing
    if condition == true
        check = condition
    elseif condition == false
        check = condition
    else #if faulty input or Unexpected ERROR Occured 
        check
    end
    return check #whether check is true, false, nothing
end

#check #2:middle
"""middleCriterion
```input
  a: the `first()` in a range 
  b:the `last()` in  a range 
```
```output
 Returns `check`: the 

 Output is Calculated by: `check b-a`

 `output = `
   If check is true 

  If check if false

  Else, there must be an error in either input arguments: a, b (or an Unexpected error occured) 
  Otherwise,  return the `check`

  **see also:** `iseven`

  ```
"""
function midCriterion(a, b)
    m = 0
    m = euclideanDist(a, b) # | b - a | 
    condition = nothing
    condition = iseven(m)
    check = nothing
    if condition == true
        check = condition
    elseif condition == false
        check = condition
    else #if faulty input or Unexpected ERROR Occured 
        check
    end
    return check #whether check is true, false, nothing
end
#done!
using BenchmarkTools
@benchmark midCriterion(1, 3) # |3 - 1| = 2 is isEven -true-> retrun isMidCriterion ->true  #  maximum time:     13.900 ns (0.00% GC)
@benchmark midCriterion(1, 10^6) # maximum time:     maximum time:     36.800 ns (0.00% GC)
#=increasing problem by 10^6 yeilds a relative increase in Computation time by  2.6474820143884887 times 
=#
#2.2. middle Computation 
"""
middle = 4-1 /2= 3/2 = 1.5 [false] (do ceil & floor) -> ceil = 2 , floor = 1  
returns mid Criterion 

```input
    m: middle part given by formula `m = b - a`
    checks 
```

```output check:: Bool
  returns a Bool check given by `check= midCriterion(m)`
```

"""
function middle(a, b) # working 
    criterion = nothing
    criterion = midCriterion(a, b)
    # check = nothing;check = midCriterion(m) #b-a
    check = nothing
    above = nothing
    below = nothing
    condition = criterion #   b-a 
    if condition == true
        #return true #a.s. #eucledian Distance divided by 2 returing a whole integer
        check = Int(ϟ(a, b) // 2) # euclideanDist(a, b) // 2 #* 1.0 # | b - a | // 2 isa Integer #euclideanDist -to-> ϟ

    elseif condition == false
        #return false #a.s.# check = euclideanDist(a,b)//2*1.0
        #GET Ceil & Floor
        check = ϟ(a, b) / 2 # euclideanDist(a, b) / 2 * 1.0 # freely allowing floats, to be ceiled & floored 
        above = Int(ceil(check)) #nearest index above
        below = Int(floor(check))
    else # faulty Input or Unexpected Error Occured
        return check  # nothing
    end
    return condition, check, above, below
end
#
middle(1, 4) #false # (false, 2.5, 3, 2) 
middle(1, 3) #true  # 
euclideanDist(1, 3) # (true, 2//1, nothing, nothing)
#need functional notation so that output of middle(a,b) | middleExtraction argiments 


function middleExtraction(condition, checkedValue; above = nothing, below = nothing)
    ⫙ = []
    criterion = nothing
    criterion = condition
    if criterion == true # there is only 1 value  
        # only get the checkedValue 
        push!(⫙, checkedValue)
    elseif criterion == false
        #then we have above & below to get (know for sure that below is under above) 

        push!(⫙, above)
        push!(⫙, below)
    else # faulty input or Unexpected error Occured
        return
    end

    return q
end
#=
⫙ = middleExtraction(true,2) #\forkv
l = length(⫙)
if l ==1 
    ♐ =  
elseif  l ==2 
    ♐ = 
else #error faulty Input
    return  

end
return 
=#


#another idea: pass in middle function, as a whole 
#function middleExtraction(middle,a,b) end
#---testing area 2 

"""returns a boolean
```input:

```

```output:

```
"""#testing purposes only 
function checkCriterion(ch, :operator = [%, +, -, *], operand)
    check = nothing
    check = ch
    condition = nothing
    condition = :check:operator:operand
    if condition == true
        return true #a.s. 
    elseif condition == false
        return false #a.s. 
    else # faulty Input or Unexpected Error Occured
        return check
    end
    return check
end
checkCriterion(3, %, 2)
#=
function iseven(m)
    check = nothing;
    check = m
    if m %2 == 0
        check = true
    else if m % 2 != 0
        check == false
    else #faulty input, or Unexpected ERROR Occured 
        return check 
    end
    return check  #check has a valid value: either true or false 
end
=# =#

#Relationship between 2 consecutive Rationals is 1 99% a.s. 
"""BisectSort
```input:
v: a concrete Vector (implements an AbstractArray{T,1})
a: 
```

```output:
```
"""
#Solve problem: B. in the Applied Domain

#TODO: Check this function 
function BisectSort(v, a::Int64, b::Int64)
    #TODO:  check sanity 
    #1. get the ranges  & indicies of current vector 
    firstindex(v, a)
    firstindex(v, b)
    aVal = a #_first = first(v) # Warning   #   <---   
    bVal = b #_last = last(v) # Warning     #   <---
    bIdx = lastindex(b)
    aIdx = firstindex(a)
    #set terminal condition: in
    euclidDist = euclideanDist(aIdx, bIdx)
    if euclidDist == 1
        # compare a, b  last compare 
        a, b = compare(a, b)
        # 
        return
        #end  
    elseif euclidDist > 1  # a-b> 1#there are still indicies to explore 
        #calculate next mini-subrange (blookup? -> not recursive, middle ->Yes )
        #blookupRecursive()
        #BisectSort()  
        return middle(a, b)#1.5 false , 1.5 
    else
        println(strError)
    end
end


function BisectSort(v::Vector)
    #1. get the ranges  & indicies of current vector 
    aVal = first(v)
    bVal = last(v)
    bIdx = lastindex(v)
    aIdx = firstindex(v)
    #set terminal condition: in
    euclidDist = euclideanDist(aIdx, bIdx) #checks distance of an array
    if euclidDist == 1 #fallback condition 
        # compare a, b  last compare 
        a, b = compare(a, bIdx)
        # 
        return a, b
        #end  
    elseif euclidDist > 1  # a-b> 1#there are still indicies to explore 
        #calculate next mini-subrange (blookup? -> not recursive, middle ->Yes )
        #blookupRecursive()
        # BisectSort(a,b)  #TODO: 
        return BisectSort(v, aVal, bVal) # reality 
    #return middle(a, b)#1.5 false , 1.5  #ideal expectation 
    else
        println(strError)
    end
end


"""
right hand argument is assumed to have a lower side
"""
function compare(a::Int64, b::Int64)
    min = 0
    max = 0
    min = a
    max = b
    if a > b # only if  
        #swap       
        min, max = max, min
    else #faulty input , Unexpected code  
        println(strError)
        return
    end
    return min, max
end


swp = include("swap.jl")


function compare(arr; aIdx, bIdx)
    aVal = 0
    bVal = 0
    aVal = arr[aIdx] # 5 v[1]= 5
    bVal = arr[bIdx] # v[last] = 1  5>1
    #if aVal < bVal
    if aVal > bVal   # a > b #should be a <b 
        #swap       
        aVal, bVal = swapping(aVal, bVal) #x, y) # (bVal, aVal)
    #min, max = max, min #TODO
    elseif aVal < bVal
        return aVal, bVal
    else #faulty input , Unexpected code  
        println(strError)
        return
    end
    return aVal, bVal  #min, max #deketed values 
end

function compare(arr)
    aVal = 0
    bVal = 0
    aVal = first(arr) # arr[aIdx] # 5 v[1]= 5
    bVal = last(arr) #arr[bIdx] # v[last] = 1  5>1
    aIdx = firstindex(arr)
    bIdx = lastindex(arr) # bVal)
    #if aVal < bVal
    if aVal > bVal   # a > b #should be a < b 
        #1. swap values        
        aVal, bVal = swap(aVal, bVal) #x, y) # (bVal, aVal) #ERROR T not defined 
        #swap indicies
        aIdx, bIdx = bIdx, aIdx
        #update array (with correct orders)
        arr[aIdx], arr[bIdx] = arr[bIdx], arr[aIdx]

        #min, max = max, min #TODO
    elseif aVal < bVal # at that level (diff length) of indicies # the array is correct  
        return aVal, bVal

    else #faulty input , Unexpected code  
        println(strError)
        return
    end
    return aVal, bVal  #min, max #deketed values 
end

res = compare(v) #
aVal = first(v)# 10 
bVal = last(v) # 3 
aIdx = firstindex(v)
bIdx = lastindex(v)
#-----------------------------------
#check indicies : a< b 
aIdx > bIdx ? true : false
#check valuse: aVal > bVal <---- Infer: swap (TODO:Automatic)
aVal > bIdx ? true : false
a, b = swap(v[aIdx], v[bIdx])
v[aIdx], v[bIdx] = v[aIdx], v[bIdx] # swap is not functioning, as expected 
#manual work - working !
tmp = v[aIdx]
v[aIdx] = v[bIdx]
v[bIdx] = tmp

#-------------------------------------------------------------------

#@benchmark v[aIdx], v[bIdx] =
@benchmark oldschoolSwap(v[aIdx], v[bIdx])
"""
run betrics 

    @btime   80.498 ns (1 allocation: 32 bytes)
    @time 0.000008 seconds (1 allocation: 32 bytes)
    @benchmark 
    BenchmarkTools.Trial: 10000 samples with 963 evaluations.
    Range (min … max):   80.893 ns …  2.189 μs  ┊ GC (min … max): 0.00% … 95.18%
    Time  (median):      86.604 ns              ┊ GC (median):    0.00%
    Time  (mean ± σ):   101.256 ns ± 55.861 ns  ┊ GC (mean ± σ):  1.05% ±  2.30%

    ▅▇█▄▂▁▃▅▃▂▂ ▁ ▁▁▂▁                                           ▁
    ███████████████████████████▇▇▇▇▇▇▇▇▇▆▇▆▆▇▇▇▆▆▆▆▆▇▆▆▆▆▅▆▅▅▄▄▆ █
    80.9 ns       Histogram: log(frequency) by time       239 ns <

    Memory estimate: 32 bytes, allocs estimate: 1.
"""
function oldschoolSwap(x, y)
    tmp = x
    x = y
    y = tmp
    return x, y
end
#returning firstindex(aVal) = lastIndex(bVal) = 1 
#infer: a swap must be done by the condition: aVal > bVal  


swap(first(v), last(v))

#testing compare 
v = [5, 3, 1]

res = compare(v, firstindex(v), firstindex(v)) #ERROR! 


function swap(a, b)
    #    a, b = nothing
    if typeof(a) == typeof(b) == Float64 || typeof(a) == typeof(b) == Array{T,N}
        # swap floats  (or arrays)
        a, b = swp.swap!(a, b)

    else
        #faulty input  
        println(strError) #defaults to this 
    end
    return a, b
end

#testRun 
# v = collect(1:3) #given intRange, collect it as a vector v=1,2,3 #that is vector of index 
v = [10, 7, 3] #that's a typical scenario! 
euclideanDist(3, 1)

#res = BisectSort(v)

aVal = first(v)
bVal = last(v)
bIdx = lastindex(v)
aIdx = firstindex(v)
#set terminal condition: in
euclidDist = euclideanDist(aIdx, bIdx) #checks distance of an array
stack = []
if euclidDist > 1  # a-b> 1#there are still indicies to explore 
    #calculate next mini-subrange (blookup? -> not recursive, middle ->Yes )
    #blookupRecursive()
    # BisectSort(a,b)  #TODO: 
    push!(stack, BisectSort(v, aVal, bVal)) # reality 
end
stack #nothing 
compare(v)