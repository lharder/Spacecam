# Spacecam

Spacecam is an endlessly scrolling camera for use with the Defold game engine: it keeps moving a repeating background image so that a player gets the impression of being able to move endlessly in any direction (which is very appropriate for a space game - hence the name :o)

Besides, the camera takes into account to which direction the player is moving: depending on the rotation angle, the camera keeps most of the visible screen area "in front" of the player. That allows for better reaction time for the player, assuming that the major part of the action takes place ahead of his flight direction, not behind.

## Status ##

This code is on a "works-for-me" basis - no guarantees for anything. Use at your own risk.

## Usage ##

To use the spacecam in one of your own Defold projects:

1. Include https://github.com/lharder/Spacecam/archive/master.zip in your dependencies
2. Add a new game object file to your collection, selecting "spacecam/background/background.go". This gameobject defines the endlessly scrolling background image. You can provide a custom gameobject, but obviously must use the corresponding lua script.
3. Add your player gameobject (a space ship or any other gameobject) to your collection
4. Add a new game object file as a child to your player gameobject, selecting "spacecam/camera/camera.go". This is the spacecam that will automatically follow the player as its parent
5. Setup the spacecam initially, usually in your player gameobject's init function:

```
require( "spacecam.Spacecam" )

function init( self )
  -- provide the gameobjects' ids you have set up in your editor
  Spacecam.setup( "/player", "/camera", "/background" )
end
```
After that, you are good to go.

## Example ##

You can see a working example for the spacecam's setup under the main folder: download the project, open it in the Defold editor and you will see the word "Player" moving around through space when you touch the screen.


