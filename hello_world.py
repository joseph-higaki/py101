class HelloWorld:    
    def __init__(self):
        self.message = "Hello, World!"

    def greet(self):
        return self.message

if __name__ == "__main__":
    # Create an instance of the HelloWorld class
    hello_world_instance = HelloWorld()
    print(hello_world_instance.greet())  # Call the display method to print the message
