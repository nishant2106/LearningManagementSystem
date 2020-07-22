CREATE TABLE [dbo].[admin_quiz] (
    [question] VARCHAR (MAX) NOT NULL,
    [A]        VARCHAR (MAX) NOT NULL,
    [B]        VARCHAR (MAX) NOT NULL,
    [C]        VARCHAR (MAX) NULL,
    [D]        VARCHAR (MAX) NULL,
    [answer]   VARCHAR (MAX) NOT NULL,
    [QuizID]   INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_admin_quiz] PRIMARY KEY CLUSTERED ([QuizID] ASC)
);

