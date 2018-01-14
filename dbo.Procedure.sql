CREATE PROCEDURE [dbo].[st_create_login]
	
AS
declare @utype varchar(50) = (SELECT utype FROM reporter 
		WHERE rid=(SELECT MAX(rid) FROM reporter))

declare @nic varchar(10) = (SELECT nic FROM reporter 
		WHERE rid=(SELECT MAX(rid) FROM reporter))


INSERT INTO login(rep_nic,pass,utype) values (@nic,'12345',@utype)

RETURN 0