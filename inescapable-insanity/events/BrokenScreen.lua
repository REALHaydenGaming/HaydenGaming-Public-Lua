--[[ inescapable himself asked me to do it, so I am.
also hi shittards this is fucking public on my github page (github.com/REALHaydenGaming/HaydenGaming-Public-Lua)
do not take the fucking code, you do not reserve my rights idiot.

also this code only took 19 minutes.
]]

local howBigWidth = screenWidth -- change this if needed/
local howBigHeight = screenHeight
-- the amount of health draining done, should be putted as a timer rather than a single blow out.
local healthDrain = 0.2
-- the start of the health draining
local heyWhatTheFuck = false
-- end of the health draining
local noFuckYou = false

function onCreate()
	 makeLuaSprite('image', 'inesacapable put your thing here.', math.random(100 + howBigHeight, 19 + howBigHeight / 25), math.random(100 + howBigWidth, 19 + howBigWidth / 25));
		addLuaSprite('image', true);
		setObjectCamera('image', 'hud');
		setProperty('image.alpha', 0)
end

function onEvent(name, value1, value2)
	if name == "BrokenScreen" then
		setProperty('defaultCamZoom', 1.15)
		-- important value. you place your number down. keep in mind your value 1 also applys to your alpha time.
		runTimer('wait', value1)
		-- here is your fucking health drain shit.
		healthDrain = value2
	end
end

function onTweenCompleted(tag)
	if tag == 'wait' then
		-- awesome shit goes here :fire:
		
		setProperty('defaultCamZoom', 0.85)
		triggerEvent('Screen Shake', '0.1, 0.01', '0.4, 0.05')
		setProperty('image.alpha', 1)
		doTweenAlpha('shitFuck', 'image', 0, value1, 'sineInOut')
		runTimer('healthDrainEvent', 0.002)
	end
	if tag == 'healthDrainEvent' then
		heyWhatTheFuck = true
		runTimer('endDrain', 3)
	end
	if tag == 'endDrain' then
		heyWhatTheFuck = false
		setProperty('health', getProperty('health') + 0.1 / healthDrain)
	end
end

function onUpdate(elapsed)
	if heyWhatTheFuck then
		if healthDrain then
			if getProperty('health') > 0 then
				healthDrain = healthDrain - 0.3;
				setProperty('health', getProperty('health') - 0.3 * elapsed);
				if healthDrain < 0 then
						healthDrain = 0;
				end
			end
 end
end
