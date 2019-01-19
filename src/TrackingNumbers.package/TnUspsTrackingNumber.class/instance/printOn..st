accessing
printOn: aStream
	
	self number doWithIndex: [ :e :i |
		aStream nextPut: e.
		i % 4 = 0 ifTrue: [ aStream space ] ]