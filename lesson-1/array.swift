var weapons: [String] = ["Katana", "Kunai", "Dick"]

weapons.append("Kusarigama")
weapons.insert("Shuriken",at: 2)


var swiftText = """
            __,
         (           o  /) _/_
          `.  , , , ,  //  /
        (___)(_(_/_(_ //_ (__
                     /)
                    (/
"""

print(swiftText)

for item in weapons {
    print(item)
}
