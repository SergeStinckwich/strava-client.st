accessing
getCurrentAthlete
	| result athlete |
	result := ZnClient new
		get: 'https://www.strava.com/api/v3/athlete';
		formAt: 'access_token' put: accessToken;
		contentReader: [ :entity | STON fromString: entity contents ];
		get.
	athlete := StravaAthlete new.
	athlete firstName: (result at: #firstname).
	athlete lastName: (result at: #lastname).
	^ athlete