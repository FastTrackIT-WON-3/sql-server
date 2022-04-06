SELECT	
		dep_names.DepartmentId, 
		dep_names.DepartmentName,
		SUM(CASE WHEN cmp_dep.DepartmentId IS NULL  THEN 0 
		         ELSE 1 
		    END) AS MappedToCompaniesCount
FROM	[dbo].[DepartmentNames] AS dep_names
		LEFT JOIN [dbo].[CompanyDepartment] AS cmp_dep ON dep_names.DepartmentId = cmp_dep.DepartmentId
GROUP BY
		dep_names.DepartmentId, dep_names.DepartmentName