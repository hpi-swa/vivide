accessing - history
transcriptHistory

	^ transcriptHistory ifNil: [transcriptHistory := ViTranscriptHistory new limit: 100]