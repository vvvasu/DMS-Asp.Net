CREATE TRIGGER [Trigger]
	ON [dbo].[reporter]
	FOR  INSERT
	AS
	BEGIN
		exec st_create_login
	END
