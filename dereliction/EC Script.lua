--[[
	30% of this code isnt mine, but 67% is mine (modcharts, the scripted events.).

	ec devs, give me a credit if your gonna use this.
]]
local angleshit = 1;
local anglevar = 1;
local amogus = true;
local alphaisfucked = true; --made this since for some fucking reason pb kept appearing when they weren't supposed too xD
local hiStart = false
local fuckYouHiStart = true
local ripSpot = false
local allowCamZooms = true
local finalPart = false

function onCreatePost()
	-- this is sprite from dnb nullifed because I cant even.
	
	makeLuaSprite("shitsAss","thisIsForTheScreen",-10,-10)
	setObjectCamera("shitsAss",'other') -- 'other' for in front of hud, 'hud' to be on it i think i forgor
	addLuaSprite("shitsAss",true)
	makeGraphic("shitsAss",screenWidth+100,screenHeight+100,"000000")
	setProperty("shitsAss.alpha",0)
end
function onStepHit()
	if curStep == 1 then
		noteTweenX('howIsBoxy', 0, -2000, 0.000001, '')
		noteTweenX('howIsBoxy2', 1, -2000, 0.000001, '')
		noteTweenX('howIsBoxy3', 2, -2000, 0.000001, '')
		noteTweenX('howIsBoxy4', 3, -2000, 0.000001, '')

		noteTweenX('hihi', 4, -2000, 0.000001, '')
		noteTweenX('hihi2', 5, -2000, 0.000001, '')
		noteTweenX('hihi3', 6, -2000, 0.000001, '')
		noteTweenX('hihi4', 7, -2000, 0.000001, '')
	end
	if curStep == 128 then
			noteTweenX('balls5', 0, defaultOpponentStrumX0, 8.2, 'expoInOut')
			noteTweenX('balls6', 1, defaultOpponentStrumX1, 8.2, 'expoInOut')
			noteTweenX('balls7', 2, defaultOpponentStrumX2, 8.2, 'expoInOut')
			noteTweenX('balls8', 3, defaultOpponentStrumX3, 8.2, 'expoInOut')

			noteTweenX('hihi5', 4, defaultPlayerStrumX0, 8.2, 'expoInOut')
			noteTweenX('hihi6', 5, defaultPlayerStrumX1, 8.2, 'expoInOut')
			noteTweenX('hihi7', 6, defaultPlayerStrumX2, 8.2, 'expoInOut')
			noteTweenX('hihi8', 7, defaultPlayerStrumX3, 8.2, 'expoInOut')

			doTweenY('wtf', getProperty('healthBar'), 2000, 8.2, 'expoInOut')
			doTweenY('wtf2', getProperty('healthBarBG'), 2000, 8.2, 'expoInOut')
			doTweenY('wtf3', getProperty('iconP2'), 2000, 8.2, 'expoInOut')
			doTweenY('wtf4', getProperty('iconP1'), 2000, 8.2, 'expoInOut')
			doTweenY('whatTheF', getProperty('scoreTxt'), 2000, 8.2, 'expoInOut')

			doTweenY('wtf5', getProperty('timeBar'), -2000, 8.2, 'expoInOut')
			doTweenY('wtf6', getProperty('timeBarBG'), -2000, 8.2, 'expoInOut')
			doTweenY('wtf7', getProperty('timeTxt'), -2000, 8.2, 'expoInOut')
			doTweenY('wtf8', getProperty('iconP1'), -2000, 8.2, 'expoInOut')
	end
	if curStep == 256 then
		noteTweenX('fuck', 0, -1000, 1.2, 'elasticInOut')
		noteTweenX('fuck2', 1, -1000, 1.2, 'elasticInOut')
		noteTweenX('fuck3', 2, -1000, 1.2, 'elasticInOut')
		noteTweenX('fuck4', 3, -1000, 1.2, 'elasticInOut')
		
		noteTweenX('fuck5', 4, 435, 1.2, 'elasticInOut')
		noteTweenX('fuck6', 5, 535, 1.2, 'elasticInOut')
		noteTweenX('fuck7', 6, 635, 1.2, 'elasticInOut')
		noteTweenX('fuck8', 7, 735, 1.2, 'elasticInOut')
		hiStart = true
	end
	if curStep == 512 then
		ripSpot = true
		noteTweenX('ballsSack', 0, defaultOpponentStrumX0, 2.2, 'expoInOut')
		noteTweenX('ballsSack2', 1, defaultOpponentStrumX1, 2.2, 'expoInOut')
		noteTweenX('ballsSack3', 2, defaultOpponentStrumX2, 2.2, 'expoInOut')
		noteTweenX('ballsSack4', 3, defaultOpponentStrumX3, 2.2, 'expoInOut')
 end
	if curStep == 1008 then
		noteTweenX('ballsSack5', 0, -2000, 2.2, 'expoInOut')
		noteTweenX('ballsSack6', 1, -2000, 2.2, 'expoInOut')
		noteTweenX('ballsSack7', 2, -2000, 2.2, 'expoInOut')
		noteTweenX('ballsSack8', 3, -2000, 2.2, 'expoInOut')
		ripSpot = false
		noteTweenX('what', 4, 435, 1.2, 'elasticInOut')
		noteTweenX('fuck2', 5, 535, 1.2, 'elasticInOut')
		noteTweenX('fuck3', 6, 635, 1.2, 'elasticInOut')
		noteTweenX('fuck4', 7, 735, 1.2, 'elasticInOut')
	end
	if curStep == 1280 then
		doTweenAlpha('wtfMan', 'shitsAss', 1, 0.9)
	end
	if curStep == 1310 then
		doTweenAlpha('WHY', 'camHUD', 0, 0.00001)
	end
	if curStep == 1407 then
		setProperty('camGame.zoom', 6)
		allowCamZooms = false
		doTweenAlpha('HOLYSHIT', 'shitsAss', 0, 10.9)
		doTweenZoom('HEBACKWHAT', 'camGame', 1, 10.9, 'linear')
	end
	if curStep == 1648 then
		doTweenAlpha('holyShitImWinning', 'shitsAss', 1, 0.0000001)
		doTweenAlpha('final', 'camHUD', 1, 0.0000001)
	end
	if curStep == 1663 then
		doTweenAlpha('nvm', 'shitsAss', 0, 0.0000001)
		allowCamZooms = true
		finalPart = true
	end
end
function onBeatHit()

    if curBeat > 0 then
        function opponentNoteHit(ipiss, piss2, piss3, sus) -- SUS? SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?
            if piss2 == 0 then
              triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.01');
            elseif piss2 == 1 then
                    triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.01');
            elseif piss2 == 2 then
                    triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.01');
            elseif piss2 == 3 then
                    triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.01');
            end
        
            if mustHitSection == false then
                health = getProperty('health')
                if getProperty('health') > 0 then
                    setProperty('health', health- 0.007);
                end
            end 
        end

    end


end

function onUpdate(elapsed)
    setProperty('timeBar.color', getColorFromHex('A020F0'))
    setProperty('timeBarBG.color', getColorFromHex('A020F0'))
				songPos = getSongPosition()
    local ass = (songPos/500)*(bpm/60)
				local ass2 = (songPos/500)*(bpm/60)
    if amogus == true then
						local currentBeat = (songPos/2000)*(bpm/60)
      if curStep >= 0 then
        setProperty('dad.angle',0+currentBeat*10)
        setProperty('gf.angle',0+currentBeat*260)
        setProperty('boyfriend.angle',0+currentBeat*5)
     --     doTweenY('tween1', 'dad', 100 - -600*math.sin((currentBeat+12*12)*math.pi), 1.4)
     --     doTweenX('tween2', 'dad', 1000 - -2500*math.sin((currentBeat+12*12)*math.pi), 3.5)
    end
  end
	if hiStart then
		if ripSpot then
			noteTweenX('fuck5', 4, defaultPlayerStrumX0 - 150 * math.sin((ass / 1.2), math.pi), 1.2)
			noteTweenX('fuck6', 5, defaultPlayerStrumX1 - 150 * math.sin((ass / 1.2), math.pi), 1.2)
			noteTweenX('fuck7', 6, defaultPlayerStrumX2 - 150 * math.sin((ass / 1.2), math.pi), 1.2)
			noteTweenX('fuck8', 7, defaultPlayerStrumX3 - 150 * math.sin((ass / 1.2), math.pi), 1.2)
		elseif finalPart then
			noteTweenX('fuck5', 4, 435 - 300 * math.sin((ass / 1.2), math.pi), 1.2)
			noteTweenX('fuck6', 5, 535 - 300 * math.sin((ass / 1.2), math.pi), 1.2)
			noteTweenX('fuck7', 6, 635 - 300 * math.sin((ass / 1.2), math.pi), 1.2)
			noteTweenX('fuck8', 7, 735 - 300 * math.sin((ass / 1.2), math.pi), 1.2)
		else
			noteTweenX('fuck5', 4, 435 - 150 * math.sin((ass / 1.2), math.pi), 1.2)
			noteTweenX('fuck6', 5, 535 - 150 * math.sin((ass / 1.2), math.pi), 1.2)
			noteTweenX('fuck7', 6, 635 - 150 * math.sin((ass / 1.2), math.pi), 1.2)
			noteTweenX('fuck8', 7, 735 - 150 * math.sin((ass / 1.2), math.pi), 1.2)
		end
		
	if finalPart then
			noteTweenY('ASS', 4, defaultPlayerStrumY0 + 300 * math.sin((ass + 1), math.pi), 0.5)
			noteTweenY('ASS2', 5, defaultPlayerStrumY1 + 300 * math.sin((ass + 2), math.pi), 0.5)
			noteTweenY('ASS3', 6, defaultPlayerStrumY2 + 300 * math.sin((ass + 3), math.pi), 0.5)
			noteTweenY('ASS4', 7, defaultPlayerStrumY3 + 300 * math.sin((ass + 4), math.pi), 0.5)
	else
			noteTweenY('ASS', 4, defaultPlayerStrumY0 + 100 * math.sin((ass + 1), math.pi), 0.5)
			noteTweenY('ASS2', 5, defaultPlayerStrumY1 + 100 * math.sin((ass + 2), math.pi), 0.5)
			noteTweenY('ASS3', 6, defaultPlayerStrumY2 + 100 * math.sin((ass + 3), math.pi), 0.5)
			noteTweenY('ASS4', 7, defaultPlayerStrumY3 + 100 * math.sin((ass + 4), math.pi), 0.5)
		end
	end
	
	function onMoveCamera(focus)
		if allowCamZooms then
			if focus == "boyfriend" then
							setProperty('defaultCamZoom', 1.02)
			elseif focus == "dad" then
						setProperty('defaultCamZoom', 0.65)
		 end
	 end
 end
end
