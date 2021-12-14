Class {
	#name : #TnFedExTrackingNumber,
	#superclass : #TnTrackingNumber,
	#category : #'TrackingNumbers-Core'
}

{ #category : #testing }
TnFedExTrackingNumber class >> isClassFor: aString [
	"Adapted from https://stackoverflow.com/questions/617298/tracking-number-patterns"
	
	^ aString size = 12 and: [ (aString allSatisfy: #isDigit) and: [ #('12' '14' '15' '20' '22' '28') anySatisfy: [ :prefix | aString beginsWith: prefix ] ] ]
]

{ #category : #accessing }
TnFedExTrackingNumber >> printOn: aStream [
	
	self number doWithIndex: [ :e :i |
		aStream nextPut: e.
		i % 4 = 0 ifTrue: [ aStream space ] ]
]

{ #category : #accessing }
TnFedExTrackingNumber >> url [
	^ 'https://www.fedex.com/apps/fedextrack/?action=track' asUrl
		queryAt: 'trackingnumber' put: number;
		yourself
]
