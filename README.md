# WavyRobloxObby
Created a Roblox Obby using a python script to generate platforms in rbxlx then insert them.  Platforms animated with simple LUA script

My kids got excited about building games in Roblox one weekend.  We started to play around with Roblox Studio.  They mentioned building an obby.  Basically an obstacle
course that you run by jumping from platform to platform.

There's a basic tutorial on how to do this here: https://developer.roblox.com/en-us/onboarding/intro-to-studio/1

Roblox has a fairly intuitive editor to use that you can use to visually place elements, then program the behavior of elements using LUA scripts

After a little bit of playing around I was getting the hang of it.  I wanted to do something a little more interesting than static platforms.  Looking at the LUA code its fairly
simple to make platforms move.  Then I thought it would be neat to make the platforms move up and down periodically like a wave. Then eventually a whole bunch of platforms moving
like waves on the ocean.

Waves were fairly simple, if you know a little physics.  If you know the basic wave equation y(x, t) = Asin(Bx + Ct).  y(x, t) is the height of a point along a wave at position x,
and you vary t with time you can get a moving platform.  A is the amplitude, or how high the wave moves, B determines wavelength, and C determines how fast the waves actually
move.   So the lua script for this is found in: 

platformHeightManager.lua

So, bigger is better right!?  Because a few moving platforms is boring.  But so is copying and pasting a bunch of platforms over and over to create a large field of platforms.
Gotta be a better way, right?  Thats when I figured out after a little bit of learning I found out that the .rbxlx file format is essentially a proprietary xml format.  So, 
I wrote a python script that would generate a field of platforms that I could cut and paste into the .rbxlx file, and voila, a large field of platforms, no more messing around
with the annoying visual editor.  The script I created is in the file:

platform01.py

You can play the resulting game at:
https://www.roblox.com/games/6978456956/Wavy-Platform-Obby

