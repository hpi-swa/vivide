as yet unclassified
createTextPane

	^ ViTextView new in: [:v |
		v hResizing: #spaceFill; vResizing: #spaceFill.
		v disconnectDefaultSignals.
	v]