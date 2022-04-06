 -- select * from [dbo].[City] where CityName like 'b%'

 SELECT *
 FROM
		[dbo].[Person] AS pers
		INNER JOIN [dbo].[Address] AS addr ON pers.ResidenceAddressId = addr.AddressId
WHERE
		addr.CityId IN (SELECT CityId FROM [dbo].[City] WHERE CityName like 'b%')
	