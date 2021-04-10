( 
  s.reboot { // server options are only updated on reboot 
    // configure the sound server: here you could add hardware specific options 
    // see http://doc.sccode.org/Classes/ServerOptions.html 
    // increase these if:
    s.options.numBuffers = 1024 * 256; // need to load more samples
    s.options.memSize = 8192 * 32; // "alloc failed" messages
    s.options.numWireBufs = 64; // "exceeded number of interconnect buffers" messages
    s.options.maxNodes = 1024 * 32; // drop outs and the message "too many nodes"
    s.options.numOutputBusChannels = 2; // hardware output channel size, if necessary
    s.options.numInputBusChannels = 2; // hardware output channel size, if necessary

    // boot the server and start SuperDirt 
    s.waitForBoot { 
      ~dirt = SuperDirt(2, s); // two output channels
      ~dirt.loadSoundFiles; // load samples
      ~dirt.loadSoundFiles("~/tidal/AKWF-FREE/AKWF/*");
      s.sync; // optionally: wait for samples to be read 
      // start listening on port 57120
      // create twelve orbits busses each sending audio to channel 0
      ~dirt.start(57120, 0 ! 12); 

      // MIDI stuff
      MIDIClient.init;
      ~midiOut = MIDIOut.newByName("Studio 24c", "Studio 24c MIDI 1");
      ~midiOut.latency = 0;
      ~dirt.soundLibrary.addMIDI(\midi, ~midiOut);
    };
  };
);

//(
//s.waitForBoot {
//	~dirt = SuperDirt(2, s); // two output channels
//
//	~dirt.loadSoundFiles("~/samples/*");
//	~dirt.loadSoundFiles("~/.local/share/SuperCollider/downloaded-quarks/Dirt-Samples/*");
//
//	s.sync; // wait for supercollider to finish booting up
//	~dirt.start(57120, [0, 0]); // start superdirt, listening on port 57120, create twelve orbits each sending audio to channel 0
//
//  MIDIClient.init;
//  ~midiOut = MIDIOut.newByName("Studio 24c", "Studio 24c MIDI 1");
//  ~midiOut.latency = 0;
//  ~dirt.soundLibrary.addMIDI(\midi, ~midiOut);
//};
//);
