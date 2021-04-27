# Using a generator
def gen_fib(n): 

    a = 1
    b = 1
    
    for i in range(n):
        yield a
        a,b  = b, a + b

for number in gen_fib(10):
    print(number)

# Without a generataor - holding everything in list, lacks memory efficiency.

    a = 1
    b = 1
    output = []
    
    for i in range(n):
        output.append(a)
        a,b  = b, a + b