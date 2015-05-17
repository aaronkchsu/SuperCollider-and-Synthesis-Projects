{SinOsc.ar([261.6, 261.6 * 3/2], 0, 0.4)}.play; {SinOsc.ar(261.6 * 2, 0, 0.4)}.play;

// Sweet Variation 3
(
	{
	RLPF.ar(
		LFSaw.ar([70, 12], 0, 0.2), // Change [8, 12]
			LFNoise1.ar([2, 3].choose, 1700, 1600), // Change three stuff here
			0.05,
			mul: 0.4
		)
	}.play;
)
//Sweet Variation 2
(
	{
		RLPF.ar(
			LFSaw.ar([2, 3], 0, 0.2),
			LFNoise1.ar([2, 3].choose, 500, 1600),
			0.05,
			mul: 0.4
		)
	}.play;
)
// Sweet Variation 3
(
	{
		RLPF.ar(
			LFSaw.ar([90, 80], 0, 0.2),
			LFNoise1.ar([2, 3].choose, 1800, 4200),
			0.05,
			mul: 0.4
		)
	}.play;
)