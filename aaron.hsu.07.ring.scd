

/*
Assignment follow along
*/
(
SynthDef("RingTone", {
	arg freq = 440, onOffRate = 1, pulseWidth = 0.5, ringRate = 5,
	ringOffset = 1000, ringScale = 1.0, har = 4, sweepScale = 1, sweepOffset = 11;
	var mix;
	mix = Blip.ar(LFPulse.kr(ringRate, mul: ringOffset * ringScale, add: ringOffset),
		LFSaw.kr(har, mul: sweepScale, add: sweepOffset),
		mul: LFPulse.kr(onOffRate, width: pulseWidth));
	Out.ar(0, mix);
}).load;


// quick and easy interface
ControlSpec.specs.addAll(
	[
		\freq -> ControlSpec(20, 2000, 1, 1, 440),
		\pulseWidth -> ControlSpec(0.1, 0.9, 0, 0.01, 0.5),
		\ringOffset -> ControlSpec(100, 2000, 1, 1, 800),
		\ringScale -> ControlSpec(0.5, 1.5, 0, 0.01, 1.0),
		\ringRate -> ControlSpec(2, 15, 0, 0.1, 2),
		\har -> ControlSpec(1/2, 15, 0, 0.1, 2),
		\sweepScale -> ControlSpec(2, 13, 0, 0.1, 5),
		\sweepOffset -> ControlSpec(4, 20, 0, 0.1, 21),
		\onOffRate -> ControlSpec(1/5, 10, 0, 0.1, 1)
	]
);

SynthDescLib.global[\RingTone].makeWindow;
)