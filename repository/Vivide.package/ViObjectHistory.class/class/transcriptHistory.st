as yet unclassified
transcriptHistory

	^ TranscriptHistory ifNil: [TranscriptHistory := ViTranscriptHistory new limit: 100].