USE [Library]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 01/17/2013 15:25:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
  [Id] [int] NOT NULL,
	[Username] [varchar](15) NOT NULL,
	[Password] [varchar](15) NOT NULL,
	[UserLevel] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 01/17/2013 15:25:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Settings](
	[SL] [varchar](15) NOT NULL,
	[Duration] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Settings] ([SL], [Duration]) VALUES (N'1', CAST(20 AS Decimal(18, 0)))
/****** Object:  Table [dbo].[Departments]    Script Date: 01/17/2013 15:25:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [int] NOT NULL,
	[DepartmentName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName]) VALUES (1, N'Computer Science And Telecommunication Engineering')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName]) VALUES (2, N'Aplied Chemistry and Chemical Technology')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName]) VALUES (3, N'Fisheries And Marine Science')
/****** Object:  Table [dbo].[Books]    Script Date: 01/17/2013 15:25:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Books](
	[BookID] [bigint] NOT NULL,
	[BookName] [varchar](100) NOT NULL,
	[Author] [varchar](100) NOT NULL,
	[Publisher] [varchar](50) NOT NULL,
	[Isbn] [varchar](50) NOT NULL,
	[TotalQuantity] [int] NOT NULL,
	[QuantityLeft] [int] NOT NULL,
	[Location] [varchar](50) NOT NULL,
	[ImageData] [varbinary](max) NULL,
	[ImageMimeType] [varchar](max) NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (1, N'Data Communication And Networking', N'Behrouz A. Forouzan', N'Pearson Inc.', N'1245-56987-52', 20, 19, N'45.1', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (2, N'Wireless Communication And Networking', N'Vijay K. Garg', N'Pantrice Hill', N'456-695-69', 20, 20, N'45.2', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (3, N'Introduction to Data Networks Technologies and Systems', N'Lawrence Harte  ', N'O''realy Media', N'0974278734', 20, 18, N'45.3', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (4, N'Data Base System Concept', N'Korth', N'Pearson Inc.', N'126-695-96', 20, 20, N'45.4', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (5, N'Working With Data Base', N'Djleski', N'Trak media Inc.', N'456-8956-9', 20, 20, N'46.5', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (6, N'Operating System Concept', N'Marlinv hfgbisd', N'O''realy Inc.', N'4569-985-9', 20, 20, N'45.6', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (7, N'Optical Fiber Communication', N'D. Kaiso', N'O''realy Inc.', N'456-789-1', 20, 18, N'145.8', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (8, N'Building Wireless Community Networks, Second Edition ', N' Rob Flickenger', N'O''Reilly', N'0-596-00502-4', 20, 20, N'145.9', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (9, N'This is a dummy book title-1', N'an author', N'a publisher', N'12456-659-9', 20, 20, N'146.1', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (10, N'Another book title', N'a author', N'publisher', N'2343-23454-5', 20, 20, N'145.3', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (11, N'this is another book title', N'author', N'publisher', N'567-78-9-8', 20, 20, N'45.2', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (12, N'title-2', N'gfghf', N'gbvgh', N'567-978-9', 20, 20, N'456.23', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (13, N'rfdyrdyd', N'fdcyc', N'cfytgcf', N'6789-989', 20, 20, N'45.32', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (14, N'tydytdfytf', N'ufuyfuifiy', N'gvuygyig', N'4657-968', 20, 20, N'465', NULL, NULL)
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Publisher], [Isbn], [TotalQuantity], [QuantityLeft], [Location], [ImageData], [ImageMimeType]) VALUES (15, N'hfkjsdhjk', N'jkbhjkh', N'ljhj', N'465465', 4455, 4455, N'hjkho', NULL, NULL)
/****** Object:  Table [dbo].[Borrowers]    Script Date: 01/17/2013 15:25:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Borrowers](
	[BorrowerID] [varchar](20) NOT NULL,
	[BorrowerName] [varchar](100) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[BorrowerLevel] [varchar](20) NOT NULL,
	[Session] [varchar](15) NULL,
	[ImageData] [varbinary](max) NULL,
	[ImageMimeType] [varchar](max) NULL,
 CONSTRAINT [PK_Borrowers] PRIMARY KEY CLUSTERED 
(
	[BorrowerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Borrowers] ([BorrowerID], [BorrowerName], [DepartmentID], [BorrowerLevel], [Session], [ImageData], [ImageMimeType]) VALUES (N'ASH0801020M', N'Mahfuzul Alam Sohel', 1, N'Student', N'2007-2008', NULL, NULL)
INSERT [dbo].[Borrowers] ([BorrowerID], [BorrowerName], [DepartmentID], [BorrowerLevel], [Session], [ImageData], [ImageMimeType]) VALUES (N'ASH0801021M', N'Sakhawat Saikat', 1, N'Student', N'2007-2008', NULL, NULL)
INSERT [dbo].[Borrowers] ([BorrowerID], [BorrowerName], [DepartmentID], [BorrowerLevel], [Session], [ImageData], [ImageMimeType]) VALUES (N'ASH0801031M', N'Syed Samsul Arefin', 1, N'Student', N'2007-2008', NULL, NULL)
INSERT [dbo].[Borrowers] ([BorrowerID], [BorrowerName], [DepartmentID], [BorrowerLevel], [Session], [ImageData], [ImageMimeType]) VALUES (N'ASH0801033M', N'Asad', 1, N'Student', N'2007-2008', NULL, NULL)
INSERT [dbo].[Borrowers] ([BorrowerID], [BorrowerName], [DepartmentID], [BorrowerLevel], [Session], [ImageData], [ImageMimeType]) VALUES (N'ASH0801055M', N'Murad', 1, N'Student', N'2008-2008', NULL, NULL)
/****** Object:  Table [dbo].[Courses]    Script Date: 01/17/2013 15:25:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseID] [varchar](50) NOT NULL,
	[CourseName] [varchar](100) NOT NULL,
	[Semester] [int] NOT NULL,
	[DepartmentID] [int] NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Semester], [DepartmentID]) VALUES (N'CSTE2101', N'Introduction To Telecommunication', 3, 1)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Semester], [DepartmentID]) VALUES (N'CSTE3101', N'Data Base Management System', 5, 1)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Semester], [DepartmentID]) VALUES (N'CSTE3102', N'Operating System', 5, 1)
/****** Object:  Table [dbo].[Transactions]    Script Date: 01/17/2013 15:25:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionID] [bigint] NOT NULL,
	[BorrowerID] [varchar](20) NOT NULL,
	[BookID] [bigint] NOT NULL,
	[BorrowDate] [datetime] NOT NULL,
	[ReturnDate] [datetime] NOT NULL,
	[IsReturned] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Transactions] ([TransactionID], [BorrowerID], [BookID], [BorrowDate], [ReturnDate], [IsReturned]) VALUES (1, N'ASH0801031M', 1, CAST(0x0000A0CF00000000 AS DateTime), CAST(0x0000A0D200000000 AS DateTime), N'RETURNED')
INSERT [dbo].[Transactions] ([TransactionID], [BorrowerID], [BookID], [BorrowDate], [ReturnDate], [IsReturned]) VALUES (2, N'ASH0801031M', 1, CAST(0x0000A0D200000000 AS DateTime), CAST(0x0000A0D400000000 AS DateTime), N'RETURNED')
INSERT [dbo].[Transactions] ([TransactionID], [BorrowerID], [BookID], [BorrowDate], [ReturnDate], [IsReturned]) VALUES (3, N'ASH0801031M', 1, CAST(0x0000A0D500000000 AS DateTime), CAST(0x0000A0E400000000 AS DateTime), N'RETURNED')
INSERT [dbo].[Transactions] ([TransactionID], [BorrowerID], [BookID], [BorrowDate], [ReturnDate], [IsReturned]) VALUES (4, N'ASH0801031M', 7, CAST(0x0000A12E00000000 AS DateTime), CAST(0x0000A14200000000 AS DateTime), N'RETURNED')
INSERT [dbo].[Transactions] ([TransactionID], [BorrowerID], [BookID], [BorrowDate], [ReturnDate], [IsReturned]) VALUES (5, N'ASH0801031M', 1, CAST(0x0000A12E00000000 AS DateTime), CAST(0x0000A12D00000000 AS DateTime), N'NOT RETURNED')
INSERT [dbo].[Transactions] ([TransactionID], [BorrowerID], [BookID], [BorrowDate], [ReturnDate], [IsReturned]) VALUES (6, N'ASH0801021M', 7, CAST(0x0000A13000000000 AS DateTime), CAST(0x0000A14400000000 AS DateTime), N'RETURNED')
INSERT [dbo].[Transactions] ([TransactionID], [BorrowerID], [BookID], [BorrowDate], [ReturnDate], [IsReturned]) VALUES (7, N'ASH0801033M', 1, CAST(0x0000A14100000000 AS DateTime), CAST(0x0000A15700000000 AS DateTime), N'RETURNED')
INSERT [dbo].[Transactions] ([TransactionID], [BorrowerID], [BookID], [BorrowDate], [ReturnDate], [IsReturned]) VALUES (8, N'ASH0801033M', 3, CAST(0x0000A14100000000 AS DateTime), CAST(0x0000A15000000000 AS DateTime), N'NOT RETURNED')
INSERT [dbo].[Transactions] ([TransactionID], [BorrowerID], [BookID], [BorrowDate], [ReturnDate], [IsReturned]) VALUES (9, N'ASH0801055M', 3, CAST(0x0000A14500000000 AS DateTime), CAST(0x0000A15400000000 AS DateTime), N'RETURNED')
/****** Object:  Table [dbo].[CourseAndBooks]    Script Date: 01/17/2013 15:25:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CourseAndBooks](
	[BookID] [bigint] NOT NULL,
	[CourseID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CourseAndBooks] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CourseAndBooks] ([BookID], [CourseID]) VALUES (1, N'CSTE2101')
INSERT [dbo].[CourseAndBooks] ([BookID], [CourseID]) VALUES (2, N'CSTE2101')
INSERT [dbo].[CourseAndBooks] ([BookID], [CourseID]) VALUES (3, N'CSTE2101')
INSERT [dbo].[CourseAndBooks] ([BookID], [CourseID]) VALUES (4, N'CSTE3101')
INSERT [dbo].[CourseAndBooks] ([BookID], [CourseID]) VALUES (5, N'CSTE3101')
INSERT [dbo].[CourseAndBooks] ([BookID], [CourseID]) VALUES (6, N'CSTE3102')
INSERT [dbo].[CourseAndBooks] ([BookID], [CourseID]) VALUES (7, N'CSTE3102')
INSERT [dbo].[CourseAndBooks] ([BookID], [CourseID]) VALUES (15, N'CSTE2101')
INSERT [dbo].[CourseAndBooks] ([BookID], [CourseID]) VALUES (15, N'CSTE3101')
/****** Object:  ForeignKey [FK_Departments_Departments]    Script Date: 01/17/2013 15:25:55 ******/
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([DepartmentID])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Departments]
GO
/****** Object:  ForeignKey [FK_Borrowers_Departments]    Script Date: 01/17/2013 15:25:55 ******/
ALTER TABLE [dbo].[Borrowers]  WITH CHECK ADD  CONSTRAINT [FK_Borrowers_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([DepartmentID])
GO
ALTER TABLE [dbo].[Borrowers] CHECK CONSTRAINT [FK_Borrowers_Departments]
GO
/****** Object:  ForeignKey [FK_Courses_Departments]    Script Date: 01/17/2013 15:25:55 ******/
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([DepartmentID])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Departments]
GO
/****** Object:  ForeignKey [FK_Transactions_Books]    Script Date: 01/17/2013 15:25:55 ******/
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Books] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Books]
GO
/****** Object:  ForeignKey [FK_Transactions_Borrowers]    Script Date: 01/17/2013 15:25:55 ******/
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Borrowers] FOREIGN KEY([BorrowerID])
REFERENCES [dbo].[Borrowers] ([BorrowerID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Borrowers]
GO
/****** Object:  ForeignKey [FK_CourseAndBooks_Books]    Script Date: 01/17/2013 15:25:55 ******/
ALTER TABLE [dbo].[CourseAndBooks]  WITH CHECK ADD  CONSTRAINT [FK_CourseAndBooks_Books] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[CourseAndBooks] CHECK CONSTRAINT [FK_CourseAndBooks_Books]
GO
/****** Object:  ForeignKey [FK_CourseAndBooks_Courses]    Script Date: 01/17/2013 15:25:55 ******/
ALTER TABLE [dbo].[CourseAndBooks]  WITH CHECK ADD  CONSTRAINT [FK_CourseAndBooks_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[CourseAndBooks] CHECK CONSTRAINT [FK_CourseAndBooks_Courses]
GO
