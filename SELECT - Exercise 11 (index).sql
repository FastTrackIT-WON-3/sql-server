CREATE INDEX IDX_Address_PostalCode ON [dbo].[Address] (
	[PostalCode] ASC)
INCLUDE ([AddressId]);