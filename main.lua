display.setDefault ( "background", 10/255, 78/255, 221/255 )



local dPad = display.newImageRect( "assets/images/d-pad.png", 200, 200 )

dPad.x = 160

dPad.y = display.contentHeight - 75

dPad.id = "d-pad"



local upArrow = display.newImageRect( "assets/images/upArrow.png", 50, 30)

upArrow.x = 160

upArrow.y = display.contentHeight - 148

upArrow.id = "up arrow"



local downArrow = display.newImageRect( "assets/images/downArrow.png", 50, 30)

downArrow.x = 160

downArrow.y = display.contentHeight - 2

downArrow.id = "down arrow"



local rightArrow = display.newImageRect( "assets/images/rightArrow.png", 30, 50)

rightArrow.x = 233

rightArrow.y = display.contentHeight - 75

rightArrow.id = "right arrow"



local leftArrow = display.newImageRect( "assets/images/leftArrow.png", 30, 50)

leftArrow.x = 87

leftArrow.y = display.contentHeight - 75

leftArrow.id = "right arrow"



local theCharacter = display.newImageRect( "assets/images/character.png", 200, 200 )

theCharacter.x = display.contentCenterX

theCharacter.y = display.contentCenterY

theCharacter.id = "the character"

 

function upArrow:touch( event )

    if ( event.phase == "ended" ) then

        -- move the character up

        transition.moveBy( theCharacter, { 

        	x = 0, -- move 0 in the x direction 

        	y = -50, -- move up 50 pixels

        	time = 100 -- move in a 1/10 of a second

        	} )

    end



    return true

end



function downArrow:touch( event )

    if ( event.phase == "ended" ) then

        -- move the character down

        transition.moveBy( theCharacter, { 

        	x = 0, -- move 0 in the x direction 

        	y = 50, -- move down 50 pixels

        	time = 100 -- move in a 1/10 of a second

        	} )

    end



    return true

end



function rightArrow:touch( event )

    if ( event.phase == "ended" ) then

        -- move the character right

        transition.moveBy( theCharacter, { 

        	x = 50, -- move right 50 pixels 

        	y = 0, -- move 0 pixels in the y direction

        	time = 100 -- move in a 1/10 of a second

        	} )

    end



    return true

end



function leftArrow:touch( event )

    if ( event.phase == "ended" ) then

        -- move the character left

        transition.moveBy( theCharacter, { 

        	x = -50, -- move left 50 pixels 

        	y = 0, -- move 0 in the y direction

        	time = 100 -- move in a 1/10 of a second

        	} )

    end



    return true

end



upArrow:addEventListener( "touch", upArrow )



downArrow:addEventListener( "touch", downArrow )



rightArrow:addEventListener( "touch", rightArrow)



leftArrow:addEventListener( "touch", leftArrow)