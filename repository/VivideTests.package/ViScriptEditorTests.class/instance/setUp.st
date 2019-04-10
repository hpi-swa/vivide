running
setUp

	super setUp.
	
	script := [:num | num * num] asScript.
	editor object: script.