-- Ik there isn't much done but here you go! will be updated soon!@!!!@!@
local angleshit = 1;
local anglevar = 1;
local alphaisfucked = true; --made this since for some fucking reason pb kept appearing when they weren't supposed too xD
local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'canzies');
	end
end

function onUpdate()
	setProperty('timeBar.color', getColorFromHex('ffffff'))
    setProperty('timeBarBG.color', getColorFromHex('ffffff'))
end


function onBeatHit()
    if curBeat > 0 then
        if curBeat % 2 == 0 then
            angleshit = anglevar;
        else
            angleshit = -anglevar;
        end
	
        setProperty('camHUD.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circIn')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.004, 'circOut')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circIn')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.004, 'circIn')
								if curBeat % 1 == 0 then
									triggerEvent('Change Scroll Speed', '0.7', '0.001');
									triggerEvent('Change Scroll Speed', '1', '0.2');
							 end
    end
end

function opponentNoteHit(ipiss, piss2, piss3, sus) -- SUS? SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?
    if piss2 == 0 then
      triggerEvent('Add Camera Zoom', '-0.01', '-0.005');
      triggerEvent('Screen Shake', '0.1, 0.01', '0.01, 0.01');
    elseif piss2 == 1 then
        triggerEvent('Add Camera Zoom', '0.01', '0.005');
        triggerEvent('Screen Shake', '0.1, 0.01', '0.01, 0.01');
    elseif piss2 == 2 then
        triggerEvent('Add Camera Zoom', '0.01', '0.005');
        triggerEvent('Screen Shake', '0.1, 0.01', '0.01, 0.01');
    elseif piss2 == 3 then
        triggerEvent('Add Camera Zoom', '0.01', '0.005');
        triggerEvent('Screen Shake', '0.1, 0.01', '0.01, 0.01');
    end

end      
