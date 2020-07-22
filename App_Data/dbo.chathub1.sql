CREATE TABLE [dbo].[chathub1] (
    [emailid]  VARCHAR (50)  NOT NULL,
    [Name]     VARCHAR (50)  NOT NULL,
    [Messages] VARCHAR (MAX) NULL,
    [ID]       INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_chathub1] PRIMARY KEY CLUSTERED ([ID] ASC)
);

