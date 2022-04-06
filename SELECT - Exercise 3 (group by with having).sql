SELECT	
		YEAR([DateOfBirth]) AS YearOfBirth,
		COUNT(*) AS PersonsCount
FROM	[dbo].[Person]
WHERE	YEAR([DateOfBirth]) BETWEEN 1960 AND 1980
GROUP BY
		YEAR([DateOfBirth])
HAVING
		COUNT(*) > 50
ORDER BY YearOfBirth ASC;

/*
1960 - 68 rows
1961 - 67 rows
1980 - 63 rows
*/