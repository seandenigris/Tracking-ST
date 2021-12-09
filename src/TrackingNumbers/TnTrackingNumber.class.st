Class {
	#name : #TnTrackingNumber,
	#superclass : #Object,
	#instVars : [
		'number',
		'description'
	],
	#classVars : [
		'DB'
	],
	#category : #'TrackingNumbers-Core'
}

{ #category : #convenience }
TnTrackingNumber class >> add: trackingNumber [
	^ self db add: trackingNumber asTnTrackingNumber
]

{ #category : #accessing }
TnTrackingNumber class >> db [

	^ DB ifNil: [ DB := OrderedCollection new ].
]

{ #category : #accessing }
TnTrackingNumber class >> db: aCollection [

	DB := aCollection.
]

{ #category : #'instance creation' }
TnTrackingNumber class >> fromString: aString [
	| subclass |
	subclass := self subclasses detect: [ :e | e isClassFor: aString ].
	^ subclass new
			number: aString;
			yourself
]

{ #category : #persistence }
TnTrackingNumber class >> restoreFrom: anObject [

	self db: anObject.
]

{ #category : #persistence }
TnTrackingNumber class >> spData [

	^ DB
]

{ #category : #converting }
TnTrackingNumber >> asTnTrackingNumber [
	^ self
]

{ #category : #accessing }
TnTrackingNumber >> description [

	^ self maLazyInstVarUsing: self descriptionDescription
]

{ #category : #accessing }
TnTrackingNumber >> description: aString [
	description := aString
]

{ #category : #'magritte-accessing' }
TnTrackingNumber >> descriptionDescription [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #description;
		priority: 200;
		yourself
]

{ #category : #accessing }
TnTrackingNumber >> htmlLink [
	| template |
	template := '<a href="{url}"  
 target="_blank">
        {number}
</a>'.
	^ template format: { 
			#url -> self url.
			#number -> self number } asDictionary
]

{ #category : #'magritte-accessing' }
TnTrackingNumber >> htmlLinkDescription [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #htmlLink;
		readOnly: true;
		priority: 300;
		yourself
]

{ #category : #accessing }
TnTrackingNumber >> number [
	^ number
]

{ #category : #accessing }
TnTrackingNumber >> number: anObject [
	number := anObject
]

{ #category : #'magritte-accessing' }
TnTrackingNumber >> numberDescription [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #number;
		priority: 100;
		yourself
]

{ #category : #accessing }
TnTrackingNumber >> url [
	^ self subclassResponsibility
]
