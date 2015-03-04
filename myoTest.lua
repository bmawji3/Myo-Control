--Worked with Marc, Nicholas, and Shyam @ HackGTeeny

scriptId = 'com.thalmic.scripts.presentation'

function forward()
    myo.debug("forward")
	myo.keyboard("down_arrow", "press")
end

function backward()
	myo.debug("backward")
    myo.keyboard("up_arrow", "press")
end

function upDown()
	if pose == "waveIn" then
		forward()
	elseif pose == "waveOut" then
		backward()
	end
end
