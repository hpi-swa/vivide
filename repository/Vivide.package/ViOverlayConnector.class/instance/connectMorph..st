initialization
connectMorph: aMorph

	self connect: aMorph signal: #positionChanged: toSelector: #update.
	self connect: aMorph signal: #extentChanged: toSelector: #update.