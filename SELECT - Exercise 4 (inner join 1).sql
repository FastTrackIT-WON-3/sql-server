SELECT
		*
FROM
		[dbo].[Person] AS pers
		INNER JOIN [dbo].[Address] AS addr ON pers.ResidenceAddressId = addr.AddressId
		INNER JOIN [dbo].[City] AS city ON addr.CityId = city.CityId
		INNER JOIN [dbo].[County] AS jud ON city.CountyId = jud.CountyId
		INNER JOIN [dbo].[Country] AS ctry ON jud.CountryId = ctry.CountryId
WHERE
		YEAR(pers.DateOfBirth) = 1980;