--Worked with Marc, Nicholas, and Shyam @ HackGTeeny

scriptId = 'com.thalmic.examples.outputeverything'

function onPoseEdge(pose, edge)
    myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
	if pose == "fingersSpread" and edge =="on" then
		myo.keyboard("up_arrow", "press")
	elseif pose == "fist" and  edge =="on" then
		myo.keyboard("down_arrow", "press")
	elseif pose == "waveIn" and  edge =="on" then
		myo.keyboard("left_arrow", "press")
	elseif pose == "waveOut" and  edge =="on" then
		myo.keyboard("right_arrow", "press")
	elseif pose == "rest" then
		myo.keyboard("s", "press")
	end
end

function onPeriodic()
end

function onForegroundWindowChange(app, title)
    myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
    return true
end

function activeAppName()
    return "Output Everything"
end

function onActiveChange(isActive)
    myo.debug("onActiveChange")
end
