class Animal: 
    def __init__(self,name):
        self.name = name

    def speak(self): 
        raise NotImplementedError("Subclass must implement this abstract method")


class Dog(Animal): 
    def speak(self): 
        print(self.name + " says woof!")

class Cat(Animal): 
    def speak(self): 
        print(self.name + " says meow!")


Fido = Dog("Fido")
Elvis = Cat("Elvis")

Fido.speak()
Elvis.speak()
# Animal.speak() - throws NotImplementedError