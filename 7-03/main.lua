-----------------------------------------------------------------------------------------

--

-- main.lua

--

-----------------------------------------------------------------------------------------


-- Gravity


local physics = require( "physics" )


physics.start()
physics.setGravity( 0, 25 ) -- ( x, y )
physics.setDrawMode( "hybrid" )   -- Shows collision engine outlines only


local ground = display.newImage( "./assets/land.png" )
ground.x = display.contentCenterX
ground.y = display.contentHeight
ground.id = "ground"
physics.addBody( ground, "static", { 
    friction = 0.5, 
    bounce = 0.3 
    } )


local theCharacter = display.newImage( "./assets/Idle.png" )
theCharacter.x = display.contentCenterX
theCharacter.y = display.contentCenterY
theCharacter.id = "the character"
physics.addBody( theCharacter, "dynamic", { 
    density = 3.0, 
    friction = 0.5, 
    bounce = 0.3 
    })