squeak - tools
doTestCase: aTestCase

	^ self class
		iconForTestClass: aTestCase class
		selector: aTestCase selector