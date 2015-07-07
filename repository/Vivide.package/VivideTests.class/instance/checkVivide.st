support
checkVivide

	self assert: vivide world ~~ ActiveWorld.
	self assert: ViActiveVivide value == vivide.
	self assert: ViActiveVivide world ~~ ActiveWorld.