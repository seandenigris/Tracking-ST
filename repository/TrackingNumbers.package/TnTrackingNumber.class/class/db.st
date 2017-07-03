persistence
db

	^ DB ifNil: [ DB := OrderedCollection new ].