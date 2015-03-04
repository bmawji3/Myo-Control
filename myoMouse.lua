--Worked with Marc, Nicholas, and Shyam @ HackGTeeny

scriptId = 'com.thalmic.examples.outputeverything'

myo.controlMouse(enabled)

function onPoseEdge(pose, edge)
    myo.controlMouse(true)
	myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
	if pose == "fist" and edge == "on" then
		myo.mouse("left", "click")
	elseif pose == "fingersSpread" and edge == "on" then
		myo.mouse("right", "click")
	elseif pose == "waveOut" and edge == "on" then
		myo.centerMousePosition()
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
