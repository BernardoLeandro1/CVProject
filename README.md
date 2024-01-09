# CVProject
Repository for Visual Computation project, made by:

Bernardo Leandro - 98652

Florentino de Pinho - 98181

Miguel Marques - 98532

With the help of Godot game engine, we built an escape room where the player is locked in a house and needs to solve puzzles to progress through the different rooms to escape. We started creating the different levels, adding a puzzle to each one and then connecting all of them.

Throughout the game, we explore concepts such as object rotation and translation, lightning, particle systems, texture applications and animations.

How to Run:

Download the code and run it through Godot game engine

Results:

Bedroom - In this house division, the player is bound to the bed by a rope, which is a straight line where it tracks the player position to update the line coordinates and draw it, to cut the rope the player needs to pick up a scissor, after this the player needs to find the key that is on a desk drawer to unlock the door.

Living Room - The player has to follow the leads to find the code to unlock the lock on the door. For that the player has to move and interact with objects, rotating them. With each clue found, a light will be lit up and reveal a new clue. The clues are textures with labels for the text and a white background. The lights that light up are point lights and there is one spotlight for the first clue, which is already lit up. As for the lock, the initial model was downloaded and then modified, where the wheels' darker colors were replaced by brighter colors, to make it more clear which numbers are shown. Each lock wheel is rotated separately from the others, and when the player finds the code and puts it in, there is an animation on the lock and sound signalizing that the level is passed. 
 
Kitchen -  The third room locks the player in a kitchen where the only way out is blocked by fire, which is based on a particle system composed by 4 equal particle systems put side by side. These particles are processed in the GPU and the material used is unshaded and with an additive blend mode. When the player reaches the stove they can see a recipe that needs to be prepared to escape the room. They will need to grab, transport and insert the 3 ingredients in the pan, each ingredient will increase the amount of particles emitted by the system and consequently the steam that is produced. The base material for these particles has the same characteristics of the fire but only using 1 system, another color gradient and scaled down. The yellow kitchen wall has a texture applied to it to look less smooth.

Basement - Once the player finishes the kitchen recipe, they will be able to access the stairs to the basement, which is completely dark. Before proceeding, they will need to find a flashlight to guide them through the final puzzle: a dark maze. The flashlight is no more than a moveable pointlight with a limited range. The player must rotate this tool accordingly to be able to find the exit. A brick texture was applied to every maze wall to make the room appear more rustic. The key of this level is to illuminate and explore the different paths to check if they are dead ends. Finally, when the player finds the ladder to the outside, the game will end.


Learning outcomes:

The development of this game helped us understand the different visual computing processes behind the creation of 3D images as well as having a notion of how perspective transformation needs to be applied    
depending on the position of the player. It also made us aware of how visual perception and attention need to be handled to facilitate the players understanding of the objectives they need to achieve to progress through the game. Besides that, we learned how to use a new game engine.

Links for:

Final Presentation: https://uapt33090-my.sharepoint.com/:p:/g/personal/florentino_ua_pt/EVWjuJoP-WJPjTYb76lz2iUBFbqz6Hjfe8FqrJkbP4o92g?rtime=cvzb4YMQ3Eg

Video Report: https://www.youtube.com/watch?v=XMHf9rXqzc4 
