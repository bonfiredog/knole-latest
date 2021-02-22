///StartListeningToMicrophone (to be placed in a Create event)

DebugMicGraph = true
MicrophoneVolume = 0;
us_old = -1;

//Begin audio recording and create buffer and graph
if (audio_get_recorder_count() == 0) {
    //There is no microphone or recording is not supported.
    global.MicrophoneNotSupported = true
    exit;
    
}

MicRecording = audio_start_recording(0);
if (DebugMicGraph)
Graph = ds_list_create();
MicAudioBuffer = buffer_create(4800*2, buffer_fixed, 2);

