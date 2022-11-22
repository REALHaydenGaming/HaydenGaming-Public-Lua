-- THIS ONLY WORKS ON OS ENGINE 1.2.0!!!

function onCreate()
    -- idk whata add.
end

function onBeatHit()
    if curBeat == 0 then
         doTweenZoom('dad?', 'camGame', 1.4, 8, 'sineIn')
         doTweenAlpha('fuckyouhud', 'camHUD', 0, 0.5, 'quadOut')
    end
    if curBeat == 64 then
        ballSackReal = true
        cancelTween('dad?')
        doTweenAlpha('fuckyouhud', 'camHUD', 1, 0.5, 'quadOut')
        doTweenZoom('fatherMoment', 'camGame', 0.8, 1, 'cubeOut')
								
								noteTweenAlpha('wtf1', 0, 0.5, 2.3, 'expoOut')
								noteTweenAlpha('wtf2', 1, 0.5, 2.3, 'expoOut')
								noteTweenAlpha('wtf3', 2, 0.5, 2.3, 'expoOut')
								noteTweenAlpha('wtf4', 3, 0.5, 2.3, 'expoOut')
								
								-- opponent strums go here
								noteTweenX('wtfMain5', 0, 415, 2.3, 'expoOut')
								noteTweenX('wtfMain6', 1, 525, 2.3, 'expoOut')
								noteTweenX('wtfMain7', 2, 625, 2.3, 'expoOut')
								noteTweenX('wtfMain8', 3, 725, 2.3, 'expoOut')
		
								noteTweenY('yoPeak1', 0, defaultPlayerStrumsY0 + 320, 2.3, 'expoOut')
								noteTweenY('yoPeak2', 0, defaultPlayerStrumsY1 + 320, 2.3, 'expoOut')
								noteTweenY('yoPeak3', 0, defaultPlayerStrumsY2 + 320, 2.3, 'expoOut')
								noteTweenY('yoPeak4', 0, defaultPlayerStrumsY3 + 320, 2.3, 'expoOut')
								
								noteTweenAngle('hahaAngleGoBRRR1', 0, 360, 2.3, 'expoOut')
								noteTweenAngle('hahaAngleGoBRRR2', 1, 360, 2.3, 'expoOut')
								noteTweenAngle('hahaAngleGoBRRR3', 2, 360, 2.3, 'expoOut')
								noteTweenAngle('hahaAngleGoBRRR4', 3, 360, 2.3, 'expoOut')
		
								-- player strums go here (this forces middle scroll!@!!@!@!@)
								noteTweenX('wtfMain9', 4, 415, 2.3, 'expoOut')
								noteTweenX('wtfMain10', 5, 525, 2.3, 'expoOut')
								noteTweenX('wtfMain11', 6, 625, 2.3, 'expoOut')
								noteTweenX('wtfMain12', 7, 725, 2.3, 'expoOut')
								noteTweenAngle('hahaAngleGoBRRR5', 4, 360, 2.3, 'expoOut')
								noteTweenAngle('hahaAngleGoBRRR6', 5, 360, 2.3, 'expoOut')
								noteTweenAngle('hahaAngleGoBRRR7', 6, 360, 2.3, 'expoOut')
								noteTweenAngle('hahaAngleGoBRRR8', 7, 360, 2.3, 'expoOut')
		
								-- middlescroll stuff to not annoy people
								if middlescroll then
										noteTweenAlpha('wtfExtra1', 0, 0.5, 2.3, 'expoOut')
										noteTweenAlpha('wtfExtra2', 1, 0.5, 2.3, 'expoOut')
										noteTweenAlpha('wtfExtra3', 2, 0.5, 2.3, 'expoOut')
										noteTweenAlpha('wtfExtra4', 3, 0.5, 2.3, 'expoOut')
			
										-- Bugfixes for Angle Tweening not happening on Middlescroll.
										noteTweenAngle('hahaAngleGoBRRRExtra1', 0, 360, 2.3, 'expoOut')
										noteTweenAngle('hahaAngleGoBRRRExtra2', 1, 360, 2.3, 'expoOut')
										noteTweenAngle('hahaAngleGoBRRRExtra3', 2, 360, 2.3, 'expoOut')
										noteTweenAngle('hahaAngleGoBRRRExtra4', 3, 360, 2.3, 'expoOut')
			
										-- Incase people have Opponent Notes off, they cant do shit about this unless you remove this!!!!!
										noteTweenX('wtf5', 0, defaultPlayerStrumX0, 2.3, 'expoOut')
										noteTweenX('wtf6', 1, defaultPlayerStrumX1, 2.3, 'expoOut')
										noteTweenX('wtf7', 2, defaultPlayerStrumX2, 2.3, 'expoOut')
										noteTweenX('wtf8', 3, defaultPlayerStrumX3, 2.3, 'expoOut')
								end
    end
    
if ballSackReal == true then
        setProperty('camGame.zoom', 1.05)
        doTweenZoom('Beat2', 'camHUD', 1, 3, 'cubeOut')
        doTweenZoom('Beat1', 'camHUD', 1, 3, 'cubeIn')
						if curBeat >= 1 == 0 then
								noteTweenAngle('anger1', 4, 360, 0.2, 'linear')
								noteTweenAngle('anger2', 5, 360, 0.2, 'linear')
								noteTweenAngle('anger3', 6, 360, 0.2, 'linear')
								noteTweenAngle('anger4', 7, 360, 0.2, 'linear')
						else
								noteTweenAngle('anger5', 4, -360, 0.5, 'linear')
								noteTweenAngle('anger6', 5, -360, 0.5, 'linear')
								noteTweenAngle('anger7', 6, -360, 0.5, 'linear')
								noteTweenAngle('anger8', 7, -360, 0.5, 'linear')
						end
    end
end
