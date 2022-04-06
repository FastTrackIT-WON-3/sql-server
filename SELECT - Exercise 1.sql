SELECT	* 
FROM	[dbo].[Person]
WHERE	YEAR([DateOfBirth]) BETWEEN 1970 AND 1990 AND
		[FirstName] LIKE '%z%'		
ORDER BY [DateOfBirth] ASC;