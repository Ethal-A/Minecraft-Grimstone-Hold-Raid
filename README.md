# Grimstone Hold Raid
This is a personal projected that aims to discover what is possible in with Minecraft datapacks. This datapack is an arena where players fight against rounds of hostiles and bosses to win. It include a respawn system, various mechanics related to the different bosses and more.

This datapack was made for Minecraft version 1.20.1 and features may limitations of 1.20.1. It is also made with several mods in mind including: Illage and Portage (a mod that bring the Illage and Spillage mod to Minecraft version 1.20.1), AtomicStryker's Infernal Mobs, L_Ender 's Cataclysm, Illager Invasion, Iron's Spells 'n Spellbooks, Pehkui and more.

This datapack will not be maintained and there are no plans to bring it to future versions of Minecraft. You can test it for different Minecraft versions but it was designed for 1.20.1. Feel free to also fork this datapack and make your own version of it.

## How to Use
You will first need to create an arena in your Minecraft world. WorldEdit is a great mod for making this arena quickly. You will then need to edit every line in this datapack where the mob spawn locations are referenced, the dimensions of the arena are referenced and the reward of the arena is referenced. I recommend using a shortcut like CTRL + SHIFT + H in Visual Studio Code to quickly change these references.

### References that need changing
To make your life easier, I have included all the references that need changing here. Use whatever method is easiest to change them across the whole datapack.
- Arena boundries (from one of the corners, expanding in different directions): x=5046, y=298, z=-2109, dx=57, dy=21, dz=57
- Player respawn coordinates: 5074 306 -2081
- Hostile boss spawn coordinates: 5074 308 -2081
- Hostile spawn coordinates 1: 5055 308 -2100
- Hostile spawn coordinates 2: 5093 308 -2100
- Hostile spawn coordinates 3: 5055 308 -2062
- Hostile spawn coordinates 4: 5093 308 -2062
- Reward chest 1: 5074 299 -2080
- Reward chest 2: 5074 299 -2081
- Reward chest 3: 5074 299 -2082
- Reward chest 4 5075 299 -2080
- Reward chest 5 5075 299 -2081
- Reward chest 6 5075 299 -2082
- Reward chest 7 5073 299 -2080
- Reward chest 8 5073 299 -2081
- Reward chest 9 5073 299 -2082
- Success firework: 5074 301 -2081

### WorldEdit
This will not cover everything WorldEdit can do and nor am I an expert on it. Here is just some simple commands you may find useful for generating the arena.

Get a select wand for WorldEdit using the command:
- `//wand`

Select a start and end point using your tool (left mouse button and right mouse button on a block) to create a square or rectangle for the arena. Use the following commands to generate a hollow bedrock square or rectangle:
- `//set bedrock`
- `//outset 1`
- `//hollow 1`

Testing was conducted on a square whose interor block length and width was 47 (can fit 47 blocks in a straight line sideways) and interor block height was 19 (can fit 19 blocks in a straight line upwards). The arena was finally created with width and length of 57 blocks and 21 blocks of height. You may want to consider something similar for your arena.

### Starting the Arena
You will want to setup buttons with command blocks somewhere to allow players to:
1. Teleport to the arena (if there is no way in)
1. Teleport from the arena (if there is no way out)
1. Start the arena (will require both a command block and a chain command block):
    1. The command block will execute `function grimstone_hold_raid:load` to load everything.
    1. The chain block connected to the command block will execute `function grimstone_hold_raid:round1/round1`. Replace the round number to start at different rounds.

To start the arena you need a command block that executes the load function followed by chain command block that executes the round you want to start at.