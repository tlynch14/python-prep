
# s1, s2 = string
# if s1 and s1 contain any of the same characters return YES, NO if not. 

    # Ex1
    # s1 = "hello"
    # s2 = "world"
    # YES

    # Ex2
    # s1 = "help"
    # s2 = "world"
    # NO

# Implementation
     # 1. Convert from string to set. This breaks the string up into unique characters only.
     # 2. I.e 'hello' becomes 'h', 'e, 'l', 'o'
     #    'world' stays as 'w', 'o', 'r', 'l', 'd'
     # 3. use set.intersection to cross-compare & return required YES/NO outputs.

def twoStrings(s1, s2):  
    new_set1 = set(s1)
    new_set2 = set(s2)
    if set.intersection(new_set1,new_set2):
        return "YES"
    return "NO"

# Translations - Ordering strings - lacks flexibility
txt = "Hello Sam!"
mytable = txt.maketrans("S", "P")

print(txt.translate(txt.maketrans("S","P")))
