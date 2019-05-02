display.setDefault( "background", 0/255, 200/255, 200/255 )
----------

-- Calculate button, school image and a work image
-----------------------------
local calculateButton = display.newImageRect( "./calculate.png", 300, 300 )
calculateButton.x = display.contentCenterX
calculateButton.y = 210
calculateButton.id = " calculateButton "
-----------------------------

-- Titles for the text fields.
-------------------
local title1 = display.newText( "Type your age here: ", 160, 290, native.systemFont, 45 )
title1:setFillColor( 0 )
title1.y = 1070
title1.x = 200

local title2 = display.newText( "Type the day here: ", 160, 410, native.systemFont, 45 )
title2:setFillColor( 0 )
title2.y = 1190
title2.x = 200
-------------------

-- Text feild for the age and the day.
----------------------
local myAgeTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 110, 300, 80 )
myAgeTextfield.id = " myAgeTextField"

local theDayTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 230, 300, 80 )
theDayTextfield.id = "the day TextField"
----------------------

-- Calendar text
local screenText = display.newText( "Calendar", 160, 130, native.systemFont, 80 )
screenText.x = display.contentCenterX
screenText.y = 950
screenText:setFillColor( 0 )

-- Calculate button function
local function calculateButtonTouch ( event )
	myAge = tonumber( myAgeTextfield.text )
	theDay = ( theDayTextfield.text )
-- If statement to determine if they go to school, go to work or relax for the weekend based on the day and their age.
	if (myAge > 0) and ( theDay == "saturday" or theDay == "sunday" ) then
		screenText.text = "Time to relax for the weekend!"
	elseif ( myAge >= 18 ) and ( theDay ~= "saturday" or theDay ~= "sunday") then
		screenText.text = "Time to go to work!"
	elseif ( myAge < 18 ) and ( theDay ~= "saturday" or theDay ~= "sunday") then
		screenText.text = "Time for school!"
	end
end

calculateButton:addEventListener( "touch", calculateButtonTouch )