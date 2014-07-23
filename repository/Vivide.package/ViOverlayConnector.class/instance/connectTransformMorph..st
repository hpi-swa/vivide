initialization
connectTransformMorph: aMorph

	self connectMorph: aMorph.
	self connect: aMorph signal: #offsetChanged: toSelector: #update.