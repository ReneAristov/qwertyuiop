import random
with open("characters.txt", "r") as file:
    characters = file.read().splitlines()
with open("output.txt", "w") as file:
    for character in characters:
        status = random.choice(["alive", "dead"])
        file.write(character + " – " + status)
print("Staatused on salvestatud faili output.txt.")
    
