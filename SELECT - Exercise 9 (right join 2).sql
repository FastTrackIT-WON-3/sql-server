SELECT	DISTINCT TOP 10  addr.CityId, city.CityName
FROM	[dbo].[Company] AS cmp
		RIGHT JOIN  [dbo].[Address] AS addr ON cmp.MainAddressId = addr.AddressId
		INNER JOIN [dbo].[City] AS city ON addr.CityId = city.CityId
WHERE
		cmp.CompanyId IS NULL