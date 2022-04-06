SELECT
		pers.*,
		CASE WHEN emp.EmployeeId IS NULL THEN 'Is NOT Employee'
			 ELSE 'Is Employee'
		END AS EmployeeStatus,
		emp.EmployeeId
FROM
		[dbo].[Person] AS pers
		LEFT JOIN [dbo].[Employee] AS emp ON pers.PersonId = emp.EmployeeId


