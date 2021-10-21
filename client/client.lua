local recording = false

RegisterCommand('record', function(source,args)
    if not recording then 
        if args[1] == 'replay' then 
            recording = true
            StartRecording(0)
        else
            recording = true
            StartRecording(1)
        end
    else
        Notification('~r~You are already recording')
    end
end,false)

RegisterKeyMapping('record', 'Start Recording', 'keyboard', '')

RegisterCommand('stoprecord', function(source,args)
    if recording then 
        recording = false
        StopRecordingAndSaveClip()
    else
        Notification('~r~You arent recording')
    end
end,false)

RegisterKeyMapping('stoprecord', 'Stop Recording', 'keyboard', '')

RegisterCommand('rockstareditor', function(source)
    NetworkSessionLeaveSinglePlayer()
    ActivateRockstarEditor()
end,false)

RegisterKeyMapping('rockstareditor', 'Rockstar Editor', 'keyboard', '')

function Notification(text)
    SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end