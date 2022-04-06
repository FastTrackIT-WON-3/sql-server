SELECT
		pers.*
FROM
		[dbo].[Person] AS pers
		LEFT JOIN [dbo].[Employee] AS emp ON pers.PersonId = emp.EmployeeId
WHERE
		emp.EmployeeId IS NULL;


