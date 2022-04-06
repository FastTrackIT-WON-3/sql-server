SELECT
		*
FROM
		[dbo].[Person] AS pers
		INNER JOIN [dbo].[Employee] AS emp ON pers.PersonId = emp.EmployeeId
		INNER JOIN [dbo].[Company] AS cmp ON emp.CompanyId = cmp.CompanyId;

SELECT COUNT(*) FROM [dbo].[Person]
