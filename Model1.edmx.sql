
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/05/2016 23:29:51
-- Generated from EDMX file: C:\GitHub\ADO_SQL\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ModelFirst.Blogging];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'BlogSet'
CREATE TABLE [dbo].[BlogSet] (
    [BlogId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [URL] nvarchar(max)  NULL
);
GO

-- Creating table 'PostSet'
CREATE TABLE [dbo].[PostSet] (
    [PostId] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [BlogBlogId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [BlogId] in table 'BlogSet'
ALTER TABLE [dbo].[BlogSet]
ADD CONSTRAINT [PK_BlogSet]
    PRIMARY KEY CLUSTERED ([BlogId] ASC);
GO

-- Creating primary key on [PostId] in table 'PostSet'
ALTER TABLE [dbo].[PostSet]
ADD CONSTRAINT [PK_PostSet]
    PRIMARY KEY CLUSTERED ([PostId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BlogBlogId] in table 'PostSet'
ALTER TABLE [dbo].[PostSet]
ADD CONSTRAINT [FK_BlogPost]
    FOREIGN KEY ([BlogBlogId])
    REFERENCES [dbo].[BlogSet]
        ([BlogId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BlogPost'
CREATE INDEX [IX_FK_BlogPost]
ON [dbo].[PostSet]
    ([BlogBlogId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------