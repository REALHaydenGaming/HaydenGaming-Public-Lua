--[[ mod link: https://gamebanana.com/mods/387274
keep in mind like 87% of this code is mine and 13% goes to crumb and others.
]]
local playDialogue = false;
local playedVideo = false;
local okTheyCanMoveCameras = false
local holyShit = false 
local angleshit = 1
local anglevar = 1
local heheStartOfholyShit = false
local noCamBoom = false
local noCamBoomAddon = false

function onCreate()
	setProperty('skipCountdown', true)
	setProperty('setRating.cameras', 'camGame')
end
function onBeatHit()
	if holyShit then
			if curBeat > 0 then
					if curBeat % 4 == 0 then
							angleshit = anglevar;
					else
							angleshit = -anglevar;
					end
					setProperty('camHUD.angle',angleshit*10)
					setProperty('camGame.angle',angleshit*10)
					doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
					doTweenX('tuin', 'camHUD', -angleshit*30, crochet*0.001, 'circIn')
					doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
					doTweenX('ttrn', 'camGame', -angleshit*30, crochet*0.001, 'circIn')
		end
	end
	
	if noCamBoom then
			if curBeat > 0 then
				if curBeat % 4 then
					setProperty('camGame.zoom', 1.09)
					doTweenZoom('Beat2', 'camGame', 1, 1.3, 'cubeOut')
		else
				setProperty('camGame.zoom', 1.02)
				doTweenZoom('Beat2', 'camGame', 1, 1.3, 'cubeOut')
		end
	if noCamBoomAddon then
			if curBeat > 0 then
				if curBeat % 2 then
					setProperty('camGame.zoom', 1.09)
					doTweenZoom('Beat2', 'camGame', 1, 1.3, 'cubeOut')
		else
				setProperty('camGame.zoom', 1.02)
				doTweenZoom('Beat2', 'camGame', 1, 1.3, 'cubeOut')
		end
end
function onStartCountdown()
	if not playedVideo and isStoryMode and not seenCutscene then 
		startVideo('grape');
		playDialogue = true;
		playedVideo = true;
		return Function_Stop;
	elseif playDialogue then 
		playedVideo = true;
		playDialogue = false;
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);

		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then 
		startDialogue('dialogue', 'Cheesefries');
	end
end


function onUpdate()
	setProperty('timeBar.color', getColorFromHex('a349a4'))
    setProperty('timeBarBG.color', getColorFromHex('a349a4'))
	function onMoveCamera(focus)
			if focus == "boyfriend" then
							setProperty('defaultCamZoom', 1.05)
			elseif focus == "dad" then
						setProperty('defaultCamZoom', 0.75)
		 end
		end
end

function onStepHit()
	if curStep == 1 then
		doTweenAlpha('die', "camHUD", 0, 0.9, 'linear')
		doTweenZoom('myAssItch', "camGame", 1.38, 13.68, 'quadInOut')
	end
	if curStep == 127 then
		doTweenAlpha('exosphereStinks', "camHUD", 1, 22.9, 'linear')
	end
	if curStep == 255 then
		setProperty('defaultCamZoom', 1.15)
		noCamBoom = true
	end
	if curStep == 320 then
		noCamBoomAddon = true
	end
	if curStep == 448 then
		holyShit = true
		heheStartOfholyShit = true
	end
	if curStep == 577 then
			heheStartOfholyShit = false
			doTweenAlpha('nahWhatTheFuck', "camHUD", 0.5, 1.2, 'linear')
	end
	if curStep == 704 then
			doTweenAlpha('okWeCOKING', "camHUD", 1, 1.2, 'linear')
	end
end
