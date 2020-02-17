interpreting - background
upToNextPropertiesForced

	[self upToExtraction]
		on: ViAsyncError do: [:ex | ex resume].