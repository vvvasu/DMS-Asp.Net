CREATE TABLE [dbo].[reporter] (
    [rid]   INT          IDENTITY (1, 1) NOT NULL,
    [nic]   VARCHAR (10) NOT NULL,
    [utype] VARCHAR (50) NULL,
    [fname] VARCHAR (50) NULL,
    [lname] VARCHAR (50) NULL,
    [email] VARCHAR (70) NULL,
    [tel]   VARCHAR (10) NULL,
    [city]  VARCHAR (30) NULL,
    [positition] VARCHAR(50) NULL, 
    CONSTRAINT [pk_reporter] PRIMARY KEY CLUSTERED ([nic] ASC),
    UNIQUE NONCLUSTERED ([email] ASC),
    FOREIGN KEY ([utype]) REFERENCES [dbo].[user_type] ([user_type])
);


GO
CREATE TRIGGER [Trigger]
	ON [dbo].[reporter]
	FOR  INSERT
	AS
	BEGIN
		exec st_create_login
	END