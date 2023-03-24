"
Gold bullion product
"
Class {
	#name : #MGUOBProductGroup,
	#superclass : #MGProductGroup,
	#category : #MyGold
}

{ #category : #assertions }
MGUOBProductGroup class >> checkHeader: aHeader [
	self assert: (aHeader at: 1) = 'Weight'.
	self assert: (aHeader at: 2) = 'Gold Type'.
	self assert: (aHeader at: 3) = 'West M''sia - Bank Selling (RM'.
	self assert: (aHeader at: 4) = 'Bank Buying (RM'.
	self assert: (aHeader at: 5) = 'East M''sia - Bank Selling (RM'
]

{ #category : #'data retrieval' }
MGUOBProductGroup class >> extractDateTimeDictFromNodeValue: aString [
	| substrings prefix dateStr timeStr date time |
	substrings := aString substrings.
	prefix := (substrings at: 1) , (substrings at: 2)
		, (substrings at: 3).
	dateStr := substrings at: 4.
	timeStr := substrings at: 5.
	date := Date readFrom: dateStr pattern: 'dd/mm/yyyy'.
	time := timeStr asTime.
	^ Dictionary
		newFrom:
			{(#prefix -> prefix).
			(#date -> date).
			(#time -> time)}
]

{ #category : #'data retrieval' }
MGUOBProductGroup class >> extractDateTimeNodeValue: aNode [
	| dateNode |
	dateNode := aNode detect: [ :node | node hasClass: 'datetxt' ].
	^ (dateNode children at: 1) nodeValue
]

{ #category : #constants }
MGUOBProductGroup class >> priceTableKey: anObject [
	^ 'nova-funds-list-table'
]

{ #category : #constants }
MGUOBProductGroup class >> vendorClass [
	^ MGUOB
]
