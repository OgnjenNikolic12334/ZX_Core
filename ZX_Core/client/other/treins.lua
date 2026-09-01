CreateThread(function()
    if Config.OtherFunctions.Trains.functional then
	SwitchTrainTrack(0, true)
	SwitchTrainTrack(3, true)
	SetRandomTrainsFrequency(120000)
	SetRandomTrains(true)
    end
end)
