local angleshit = 1;
local anglevar = 1;
local amogus = true;
local alphaisfucked = true; --made this since for some fucking reason pb kept appearing when they weren't supposed too xD
local hiStart = false
local fuckYouHiStart = true
local ripSpot = false
local allowCamZooms = true
local finalPart = false
local chromaticGoesHardNgl = false

local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		seenCutscene = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'canzies');
	end
end


function onBeatHit()
    if curBeat >= 19 then
        doTweenAlpha('dadahtryu89', 'dad', 1, 1, quadOut)
    end
    if curBeat >= 32 then
        doTweenAlpha('bfhahgfsu[u9edfras', 'boyfriend', 1, 1, quadOut)
    end
    if curBeat >= 48 then
        doTweenAlpha('gflololo', 'gf', 1, 1, quadOut)
    end
    if curBeat > 672 and curBeat < 674 then 
		playSound('sorry', 0.4);
	end

    if curBeat > 480 then
        if curBeat % 2 == 0 then
            angleshit = anglevar;
        else
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
    end
				if chromaticGoesHardNgl then
						if curBeat % 2 == 0 then
								doChromaticPulse("game", 0.01, stepCrochet*0.004, "cubeIn")
								doChromaticPulse("hud", 0.01, stepCrochet*0.004, "cubeIn")
								doChromaticPulse("dad", 0.02, stepCrochet*0.004, "cubeIn")
						end
				end
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
                    setProperty('health', health- 0.0007);
                end
            end 
        end

    end


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
		chromaticGoesHardNgl = true
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
		hiStart = false
		noteTweenX('what', 4, 435, 1.2, 'elasticInOut')
		noteTweenX('fuck2', 5, 545, 1.2, 'elasticInOut')
		noteTweenX('fuck3', 6, 655, 1.2, 'elasticInOut')
		noteTweenX('fuck4', 7, 775, 1.2, 'elasticInOut')
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
function onCreate()
				addChromaticAbberationEffect("hud", 0.0002);
				addChromaticAbberationEffect("game", 0.001);
				addChromaticAbberationEffect("boyfriend", 0.0021);
				addChromaticAbberationEffect("dad", 0.0032);
				addChromaticAbberationEffect("iconP1", 0.01);
				addChromaticAbberationEffect("iconP2", 0.02);
    setProperty('dad.alpha', 0)
    setProperty('boyfriend.alpha', 0)
    setProperty('gf.alpha', 0)
    setProperty('skipCountdown',true)
    makeLuaSprite('epicflash','',0,0)
    makeGraphic('epicflash',3000,3000,'FFFFFF')
    addLuaSprite('epicflash',true)
    setProperty('epicflash.alpha', 0)
    setObjectCamera('epicflash','other')
    makeLuaSprite('introfade','',0,0)
    makeGraphic('introfade',3000,3000,'000000')
    setObjectCamera('introfade','other')
    addLuaSprite('introfade',true)
    doTweenAlpha('introfade1','introfade',0,2,'linear')
    makeLuaText('dis', "Original by hortas | Remix by Emperor Yami", 600, 680, 0)
    doTweenAlpha('disbye','dis',0,8,'linear')
    setTextSize('dis', 20)
    setTextColor('dis', 'FFFFFF')
    addLuaText('dis',true)
end
function onUpdate(elapsed)
	setProperty('timeBar.color', getColorFromHex('800080'))
    setProperty('timeBarBG.color', getColorFromHex('800080'))
	setProperty('dad.angle',0+ass*10)
 setProperty('gf.angle',0+ass*260)
 setProperty('boyfriend.angle',0+ass*5)
	local ass = (songPos/500)*(bpm/60)
end

function onUpdatePost()
	setProperty('introSoundsSuffix', '-bambi')
end
