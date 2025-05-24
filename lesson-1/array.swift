var weapons: [String] = ["Katana", "Kunai", "Dick"]

weapons.append("Kusarigama")
weapons.insert("Shuriken",at: 2)

let sortedWeapons = weapons.sorted()

var swiftText = """
            __,
         (           o  /) _/_
          `.  , , , ,  //  /
        (___)(_(_/_(_ //_ (__
                     /)
                    (/
"""

sortedWeapons.forEach { Weapon in
    print(Weapon)    
}