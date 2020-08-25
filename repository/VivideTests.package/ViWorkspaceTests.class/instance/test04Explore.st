tests - toolset
test04Explore

	| object window pane |
	object := Dictionary newFrom: {
		#firstname -> 'John'.
		#lastname -> 'Doe'. }.
		
	window := vivide openExplorer: object. "Shorter: object explore -- but no tool window."
	pane := window.
	self
		assert: {object} equals: pane objects;
		assert: #objectExplorer asScript equals: pane script.