import emoji

fruits = ["Apple", "Banana", "Orange"]

prices = {
    "Apple": 2.5,
    "Banana": 1.2,
    "Orange": 3.0
}

print(emoji.emojize(":red_apple: Fruit Price List"))

for fruit in fruits:
    print(f"{fruit}: ${prices[fruit]}")

print(emoji.emojize(":thumbs_up: Have a nice day!"))