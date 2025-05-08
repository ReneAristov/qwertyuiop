import random


with open('characters.txt', 'r') as file:
    characters = file.readlines()


characters = [character.strip() for character in characters]


print("Initial characters:", characters)


with open('output.txt', 'w') as file:
    for character in characters:
        
        status = random.choice(['alive', 'dead'])
        file.write(character + " – " + status + "\n")


alive_characters = []
dead_characters = []

with open('output.txt', 'r') as file:
    for line in file.readlines():
        line = line.strip()
        if ' – ' in line:
            character, status = line.split(' – ', 1)
            if status == 'alive':
                alive_characters.append(character)
            elif status == 'dead':
                dead_characters.append(character)


with open('alive.txt', 'w') as file:
    for character in alive_characters:
        file.write(character + "\n")


with open('dead.txt', 'w') as file:
    for character in dead_characters:
        file.write(character + "\n")


with open('characters.txt', 'w') as file:
    for character in dead_characters:
        file.write(character + "\n")


print("Dead characters written to 'dead.txt'.")
print("Alive characters written to 'alive.txt'.")
print("Updated 'characters.txt' contains only dead characters.")

    
