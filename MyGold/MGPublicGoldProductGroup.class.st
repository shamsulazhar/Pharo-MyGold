"
Public Gold products
"
Class {
	#name : #MGPublicGoldProductGroup,
	#superclass : #MGProductGroup,
	#instVars : [
		'weight',
		'pgSell',
		'pgBuy'
	],
	#category : #MyGold
}

{ #category : #assertions }
MGPublicGoldProductGroup class >> checkHeader: aHeader [
	self assert: (aHeader at: 1) = 'Weight'.
	self assert: (aHeader at: 2) = 'PG Sell (RM'.
	self assert: (aHeader at: 3) = 'PG Buy (RM'
]

{ #category : #'data retrieval' }
MGPublicGoldProductGroup class >> extractDateTimeDictFromNodeValue: aString [
	| substrings prefix dateStr timeStr date time |
	substrings := aString substrings.
	prefix := (substrings at: 1) , (substrings at: 2).
	dateStr := substrings at: 3.
	timeStr := substrings at: 4.
	date := dateStr asDate.
	time := timeStr asTime.
	^ Dictionary
		newFrom:
			{(#prefix -> prefix).
			(#date -> date).
			(#time -> time)}
]

{ #category : #'data retrieval' }
MGPublicGoldProductGroup class >> extractDateTimeNodeValue: aNode [
	| pgDateDivs pgDateDiv found fontNodes fontNode dateNodes |
	pgDateDivs := aNode
		allSelect: [ :node | node hasClass: 'title-table2' ].
	self assert: pgDateDivs size = 1.
	pgDateDiv := pgDateDivs at: 1.
	found := pgDateDiv children
		reject: [ :node | 
			| attributes |
			attributes := node attributes.
			(attributes includesKey: 'style')
				and: [ (attributes at: 'style') = 'display:none;' ] ].
	self assert: found size = 1.
	fontNodes := (found at: 1) children
		select: [ :node | node nodeName = 'FONT' ].
	self assert: fontNodes size = 1.
	fontNode := fontNodes at: 1.
	dateNodes := fontNode
		allSelect: [ :node | node nodeValue beginsWith: '(Last Update' ].
	self assert: dateNodes size = 1.
	^ (dateNodes at: 1) nodeValue
]

{ #category : #constants }
MGPublicGoldProductGroup class >> vendorClass [
	^ MGPublicGold 
]

{ #category : #testing }
MGPublicGoldProductGroup >> isSimilarTo: anObject [
	^ anObject timeStamp = self timeStamp
		& (anObject weight = self weight)
]

{ #category : #accessing }
MGPublicGoldProductGroup >> pgBuy [
	^ pgBuy
]

{ #category : #accessing }
MGPublicGoldProductGroup >> pgBuy: anObject [
	pgBuy := anObject
]

{ #category : #accessing }
MGPublicGoldProductGroup >> pgSell [
	^ pgSell
]

{ #category : #accessing }
MGPublicGoldProductGroup >> pgSell: anObject [
	pgSell := anObject
]

{ #category : #initialization }
MGPublicGoldProductGroup >> setData: aData [
	self weight: (aData at: 1).
	self pgSell: (aData at: 2).
	self pgBuy: (aData at: 3)
]

{ #category : #accessing }
MGPublicGoldProductGroup >> weight [
	^ weight
]

{ #category : #accessing }
MGPublicGoldProductGroup >> weight: anObject [
	weight := anObject
]
