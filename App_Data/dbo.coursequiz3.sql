﻿CREATE TABLE [dbo].[coursequiz3] (
    [question] VARCHAR (MAX) NOT NULL,
    [A]        VARCHAR (MAX) NOT NULL,
    [B]        VARCHAR (MAX) NOT NULL,
    [C]        VARCHAR (MAX) NULL,
    [D]        VARCHAR (MAX) NULL,
    [answer]   VARCHAR (MAX) NOT NULL,
    [QuizID]   INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_coursequiz3] PRIMARY KEY CLUSTERED ([QuizID] ASC)
);

