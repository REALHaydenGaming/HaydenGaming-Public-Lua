function onUpdate(elapsed)
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