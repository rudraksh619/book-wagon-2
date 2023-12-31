

/****** Object:  Table [dbo].[subcategory]    Script Date: 27/09/2022 18:22:57 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[subcategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[subcategory](
	[catid] [numeric](18, 0) NOT NULL,
	[subid] [numeric](18, 0) IDENTITY(1000,1) NOT NULL,
	[subname] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[image] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END

SET IDENTITY_INSERT [dbo].[subcategory] ON
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(109 AS Numeric(18, 0)), CAST(1021 AS Numeric(18, 0)), N'computer language', N'cl.jpg')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(109 AS Numeric(18, 0)), CAST(1023 AS Numeric(18, 0)), N'English language', N'eng.jpg')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(109 AS Numeric(18, 0)), CAST(1024 AS Numeric(18, 0)), N'punjabi language', N'punjabi.jpg')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(109 AS Numeric(18, 0)), CAST(1025 AS Numeric(18, 0)), N'Hindi language', N'hindi.png')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(110 AS Numeric(18, 0)), CAST(1026 AS Numeric(18, 0)), N'Bank Exam Book', N'bank4.jpg')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(110 AS Numeric(18, 0)), CAST(1027 AS Numeric(18, 0)), N'Railway Exam book', N'rail3.jpg')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(110 AS Numeric(18, 0)), CAST(1028 AS Numeric(18, 0)), N'B.ED', N'ex2.jpeg')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(111 AS Numeric(18, 0)), CAST(1031 AS Numeric(18, 0)), N'horror story', N'horror.jpg')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(111 AS Numeric(18, 0)), CAST(1032 AS Numeric(18, 0)), N'kids story', N'kids2.png')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(111 AS Numeric(18, 0)), CAST(1033 AS Numeric(18, 0)), N'novel', N'novel.jpg')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(112 AS Numeric(18, 0)), CAST(1034 AS Numeric(18, 0)), N'Basic computer course', N'comp13.png')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(112 AS Numeric(18, 0)), CAST(1035 AS Numeric(18, 0)), N'Networking book', N'comp5.jpg')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(112 AS Numeric(18, 0)), CAST(1036 AS Numeric(18, 0)), N'Digital Electronics', N'd1.jpg')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(112 AS Numeric(18, 0)), CAST(1037 AS Numeric(18, 0)), N'computer Fundamentals', N'comp14.png')
INSERT [dbo].[subcategory] ([catid], [subid], [subname], [image]) VALUES (CAST(113 AS Numeric(18, 0)), CAST(1038 AS Numeric(18, 0)), N'dfagasr', N'Tulips.jpg')
SET IDENTITY_INSERT [dbo].[subcategory] OFF
/****** Object:  Table [dbo].[signup]    Script Date: 07/08/2020 18:22:57 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[signup](
	[name] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[email] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[password] [nchar](10) COLLATE Latin1_General_CI_AS NULL,
	[contact] [numeric](18, 0) NULL,
	[city] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[gender] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[image] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[utype] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END

INSERT [dbo].[signup] ([name], [email], [password], [contact], [city], [gender], [image], [utype]) VALUES (N'deepkaur', N'deepkaur@gmail.com', N'12345     ', CAST(1234567890 AS Numeric(18, 0)), N'India', N'Male', N'p1.jpg', N'normal')
INSERT [dbo].[signup] ([name], [email], [password], [contact], [city], [gender], [image], [utype]) VALUES (N'priyadadra', N'priyadadra@gmail.com', N'123       ', CAST(1234567890 AS Numeric(18, 0)), N'India', N'Female', N'p2.jpg', N'normal')
INSERT [dbo].[signup] ([name], [email], [password], [contact], [city], [gender], [image], [utype]) VALUES (N'Amritdadra', N'amrit@yahoo.com', N'123       ', CAST(1234567890 AS Numeric(18, 0)), N'India', N'Male', N'p4.jpg', N'normal')
INSERT [dbo].[signup] ([name], [email], [password], [contact], [city], [gender], [image], [utype]) VALUES (N'sonu', N'sonu@yahoo.com', N'123       ', CAST(1234567890 AS Numeric(18, 0)), N'India', N'Male', N'p4.jpg', N'normal')
INSERT [dbo].[signup] ([name], [email], [password], [contact], [city], [gender], [image], [utype]) VALUES (N'abc', N'abc@gmail.com', N'123       ', CAST(9876543213 AS Numeric(18, 0)), N'India', N'Female', N'Tulips.jpg', N'normal')
INSERT [dbo].[signup] ([name], [email], [password], [contact], [city], [gender], [image], [utype]) VALUES (N'admin', N'admin@gmail.com', N'123       ', CAST(5768678566 AS Numeric(18, 0)), N'India', N'Female', N'bank5.gif', N'admin')
/****** Object:  Table [dbo].[publisher]    Script Date: 07/08/2020 18:22:57 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[publisher]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[publisher](
	[name] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[email] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[phone] [numeric](18, 0) NULL,
	[password] [nchar](10) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_publisher] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END

INSERT [dbo].[publisher] ([name], [email], [phone], [password]) VALUES (N'abc', N'abc@gmail.com', CAST(9874563216 AS Numeric(18, 0)), N'123       ')
INSERT [dbo].[publisher] ([name], [email], [phone], [password]) VALUES (N'anhusman', N'anhusman@gmail.com', CAST(3256987410 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[publisher] ([name], [email], [phone], [password]) VALUES (N'arihant', N'arihant@gmail.com', CAST(1234567890 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[publisher] ([name], [email], [phone], [password]) VALUES (N'bharati', N'bharatipublisher@gmil.com', CAST(9887456222 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[publisher] ([name], [email], [phone], [password]) VALUES (N'crsytal', N'crsytal@gmail.com', CAST(1234567890 AS Numeric(18, 0)), N'1234      ')
INSERT [dbo].[publisher] ([name], [email], [phone], [password]) VALUES (N'jgjh', N'hguyjr@jhjg', CAST(9898768656 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[publisher] ([name], [email], [phone], [password]) VALUES (N'jackandress', N'jack@yahoo.com', CAST(7894561230 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[publisher] ([name], [email], [phone], [password]) VALUES (N'kalash', N'kalash@gmail.com', CAST(1234567890 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[publisher] ([name], [email], [phone], [password]) VALUES (N'kalyani', N'kalyani@gmail.com', CAST(9876543210 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[publisher] ([name], [email], [phone], [password]) VALUES (N'amitsharma', N'kidspublisher@yahoo.com', CAST(7894561230 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[publisher] ([name], [email], [phone], [password]) VALUES (N'unimax', N'unimax@gmail.com', CAST(1234567890 AS Numeric(18, 0)), N'1234      ')
/****** Object:  Table [dbo].[newpayment]    Script Date: 07/08/2020 18:22:57 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[newpayment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[newpayment](
	[orderno] [numeric](18, 0) IDENTITY(100,1) NOT NULL,
	[paymentmode] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[creditno] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[companyname] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[holdername] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[expirydate] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[address] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[billamount] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[username] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[orderdate] [datetime] NULL,
	[sessionid] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[status] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END

SET IDENTITY_INSERT [dbo].[newpayment] ON
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(100 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Visa', N'', N'', N'sbhjsgj', N'600', N'deepakkumar', CAST(0x0000A74C0078F6B9 AS DateTime), N'ts52iphuq4o3gwmiq5nrrjyy', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(101 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Visa', N'', N'', N'lldfvkdfmlkd', N'1200', N'kanchan', CAST(0x0000A74C008E2472 AS DateTime), N'gi4gw5qtpzi0j1scnncl2oja', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(102 AS Numeric(18, 0)), N'Credit card', N'12345', N'Visa', N'abc', N'15/5/2017', N'snkjsc', N'3000', N'kanchan', CAST(0x0000A74C00CE6906 AS DateTime), N'qmlusbdebs532huauxxornrk', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(103 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Visa', N'', N'', N'dslkfjdkhdfkj', N'600', N'kanchan', CAST(0x0000A74E005E507D AS DateTime), N'a3su1j5ye2tjgluvxug4cp5o', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(104 AS Numeric(18, 0)), N'Credit card', N'12345', N'Visa', N'kanchan', N'12/5/2017', N'houseno.24,krishna colony,jalandhar cantt', N'600', N'kanchan', CAST(0x0000A74F0060D1DE AS DateTime), N'mo4vmebezcfzl4kt2elfjyfy', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(105 AS Numeric(18, 0)), N'Credit card', N'123556', N'Visa', N'kanchan', N'12/3/2015', N'jhjgjhghjhujh', N'1000', N'Amritdadra', CAST(0x0000A75600A98500 AS DateTime), N'mpvqtvgsgaqkwgcm1masz40k', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(106 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Visa', N'', N'', N'jjgjhb', N'500', N'Amritdadra', CAST(0x0000A75A004CEB5D AS DateTime), N'iwazh4atkunnhsxowwg0ydvb', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(107 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Visa', N'', N'', N'jgjhjh', N'900', N'Amritdadra', CAST(0x0000A75A00515CE4 AS DateTime), N'zq2aoctrg3eatmg315hle2ed', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(108 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Visa', N'', N'', N'h.no 16 anup enclave sansarpur', N'200', N'sonu', CAST(0x0000A75A0052FFA1 AS DateTime), N'yu4wfhg5nrlsocjniwxad2vx', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(109 AS Numeric(18, 0)), N'Credit card', N'876756747', N'Master', N'sonu', N'13/2/2017', N'jhkghk', N'500', N'sonu', CAST(0x0000A75A005439C4 AS DateTime), N'2r0dolyegwdctjvpjjcbc4xe', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(110 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Choose Company Name', N'', N'', N'Jalandhar', N'600', N'abc', CAST(0x0000AB5A012F88E6 AS DateTime), N'hkkkw2s5mocq04sdqonmjnke', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(111 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Choose Company Name', N'', N'', N'Jalandhar', N'300', N'abc', CAST(0x0000AB5B011697C7 AS DateTime), N'xxkwl2tv5j0nlhpr2onu4lfg', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(112 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Choose Company Name', N'', N'', N'phase 1 jalandhar', N'300', N'abc', CAST(0x0000AB5D011F9618 AS DateTime), N'gop12u1yjoa1pdsbt4rgpcbw', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(113 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Choose Company Name', N'', N'', N'jal', N'600', N'abc', CAST(0x0000AB600125B75F AS DateTime), N'hyb2y4dwcvjce5hacsztjxox', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(114 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Choose Company Name', N'', N'', N'jal', N'1050', N'abc', CAST(0x0000AB600125E7E7 AS DateTime), N'hyb2y4dwcvjce5hacsztjxox', N'payment recived processing')
SET IDENTITY_INSERT [dbo].[newpayment] OFF
/****** Object:  Table [dbo].[feedback]    Script Date: 07/08/2020 18:22:57 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[feedback]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[feedback](
	[name] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[email] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[phone] [numeric](18, 0) NULL,
	[aboutweb] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END

INSERT [dbo].[feedback] ([name], [email], [phone], [aboutweb]) VALUES (N'kanchan', N'kanchan@yahoo.com', CAST(1234567890 AS Numeric(18, 0)), N'xjcbjhdgfidshfhdhgfdggfhdiuhfhhfhffhhffh')
INSERT [dbo].[feedback] ([name], [email], [phone], [aboutweb]) VALUES (N'kanchan', N'kanchan@yahoo.com', CAST(1234569870 AS Numeric(18, 0)), N'dkcjdshguhgidfh')
INSERT [dbo].[feedback] ([name], [email], [phone], [aboutweb]) VALUES (N'kanchan', N'kanchan@yahoo.com', CAST(1234567890 AS Numeric(18, 0)), N'dfkjdsfhkjd')
INSERT [dbo].[feedback] ([name], [email], [phone], [aboutweb]) VALUES (N'abc', N'abc@gmail.com', CAST(5689745123 AS Numeric(18, 0)), N'hello')
/****** Object:  Table [dbo].[contact]    Script Date: 07/08/2020 18:22:57 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[contact](
	[name] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[emial] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[phone] [numeric](18, 0) NULL,
	[query] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END

INSERT [dbo].[contact] ([name], [emial], [phone], [query]) VALUES (N'kanchan', N'kanchan@yahoo.com', CAST(3698521470 AS Numeric(18, 0)), N'kjsjjkhdsfhfhfhdjshfhiehefhhfhfh')
INSERT [dbo].[contact] ([name], [emial], [phone], [query]) VALUES (N'abc', N'abc@gmail.com', CAST(9874563216 AS Numeric(18, 0)), N'jalandhar')
INSERT [dbo].[contact] ([name], [emial], [phone], [query]) VALUES (N'abc', N'abc@gmail.com', CAST(9874563216 AS Numeric(18, 0)), N'Jalandhar')
INSERT [dbo].[contact] ([name], [emial], [phone], [query]) VALUES (N'abc', N'abc@gmail.com', CAST(9874563216 AS Numeric(18, 0)), N'Jalandhar')
/****** Object:  Table [dbo].[category]    Script Date: 07/08/2020 18:22:57 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[category](
	[catid] [numeric](18, 0) IDENTITY(100,1) NOT NULL,
	[catname] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[image] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END

SET IDENTITY_INSERT [dbo].[category] ON
INSERT [dbo].[category] ([catid], [catname], [image]) VALUES (CAST(109 AS Numeric(18, 0)), N'language book', N'lang.png')
INSERT [dbo].[category] ([catid], [catname], [image]) VALUES (CAST(110 AS Numeric(18, 0)), N'Enterance Exam Book', N'bank.jpg')
INSERT [dbo].[category] ([catid], [catname], [image]) VALUES (CAST(111 AS Numeric(18, 0)), N'Story Book', N'book1.jpg')
INSERT [dbo].[category] ([catid], [catname], [image]) VALUES (CAST(112 AS Numeric(18, 0)), N'computer Book', N'comp.jpg')
INSERT [dbo].[category] ([catid], [catname], [image]) VALUES (CAST(113 AS Numeric(18, 0)), N'Clothes', N'lights-1.jpg')
SET IDENTITY_INSERT [dbo].[category] OFF
/****** Object:  Table [dbo].[author]    Script Date: 07/08/2020 18:22:57 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[author]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[author](
	[Authorname] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Authoremail] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Aphone] [numeric](18, 0) NULL,
	[Apassword] [nchar](10) COLLATE Latin1_General_CI_AS NULL
)
END

INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'charanjeet singh', N'charanjeet@yahoo.com', CAST(9877667 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'kamaljeet', N'karamjeet@yahoo.com', CAST(987654321 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'sonika', N'sonikabhandari@yahoo.com', CAST(9876543210 AS Numeric(18, 0)), N'123456789 ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'Bajarne stroustrup', N'Bstroustrup@yahoo.com', CAST(1234567890 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'Amrita pritam', N'amrita@yahoo.com', CAST(1234567890 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'sukhdev singh khera', N'khera@gmail.com', CAST(9876325410 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'gurdyal singh', N'gurdyal@yahoo.com', CAST(1234567890 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'Dean kelin', N'Delin@gmail.com', CAST(1234567890 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'Jessica verday', N'jessica@yahoo.com', CAST(9876325410 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'krishna tiwari', N'krishna@yahoo.com', CAST(1234567890 AS Numeric(18, 0)), N'12345     ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'Amy A bartol', N'amay@yahoo.com', CAST(1234567890 AS Numeric(18, 0)), N'1234      ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'Gulshan Nanda', N'nanda@gmail.com', CAST(1234567890 AS Numeric(18, 0)), N'123       ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'Daramveer bharati', N'bharati@gmail.com', CAST(1234567890 AS Numeric(18, 0)), N'1234      ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'Dharamveer bharati', N'bharati@gmail.com', CAST(9874561230 AS Numeric(18, 0)), N'1234      ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'surinder mohan', N'mohan@gmail.com', CAST(1234567890 AS Numeric(18, 0)), N'1234      ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'Dr.sanjay sharma', N'sanjay@yahoo.com', CAST(1234567890 AS Numeric(18, 0)), N'123       ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'Giovanni saggo', N'saggo@gmail.com', CAST(1234567890 AS Numeric(18, 0)), N'123       ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'karoos roass', N'roass@gmail.com', CAST(1234569875 AS Numeric(18, 0)), N'123       ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'pardeep k.sinha', N'sinha@gmail.com', CAST(1234567890 AS Numeric(18, 0)), N'123       ')
INSERT [dbo].[author] ([Authorname], [Authoremail], [Aphone], [Apassword]) VALUES (N'abc', N'abc@gmail.com', CAST(9874563216 AS Numeric(18, 0)), N'123       ')
/****** Object:  Table [dbo].[addcart]    Script Date: 07/08/2020 18:22:57 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcart]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addcart](
	[Srno] [numeric](18, 0) IDENTITY(10,1) NOT NULL,
	[Image] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[name] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[quantity] [numeric](18, 0) NULL,
	[price] [numeric](18, 0) NULL,
	[totalcost] [numeric](18, 0) NULL,
	[sessionid] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END

SET IDENTITY_INSERT [dbo].[addcart] ON
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(10 AS Numeric(18, 0)), N'cbook3.jpg', N'godan', CAST(1 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), N'zo4wxnepobt0fnnpc0oa3d5r')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(11 AS Numeric(18, 0)), N'cbook3.jpg', N'godan', CAST(1 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), N'zo4wxnepobt0fnnpc0oa3d5r')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(12 AS Numeric(18, 0)), N'cbook3.jpg', N'godan', CAST(1 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), N'zo4wxnepobt0fnnpc0oa3d5r')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(13 AS Numeric(18, 0)), N'novel1.jpeg', N'horror story', CAST(2 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), N'zo4wxnepobt0fnnpc0oa3d5r')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(14 AS Numeric(18, 0)), N'cbook3.jpg', N'godan', CAST(2 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), N'yinu250vxc2vg0ky53j50zve')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(15 AS Numeric(18, 0)), N'cbook1.jpg', N'c-language', CAST(1 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), N'rdxiesswmnxft3jbjskxpkbv')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(16 AS Numeric(18, 0)), N'cbook1.jpg', N'c-language', CAST(1 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), N'xzvfs1ustgh1dlgvgdlmxqn4')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(17 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'db0ubjqosplgrvhzoybicbmc')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(18 AS Numeric(18, 0)), N'cbook.jpg', N'C++ programming', CAST(1 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), N'db0ubjqosplgrvhzoybicbmc')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(19 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'u3zmovaupbimmp2t4royrews')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(20 AS Numeric(18, 0)), N'cbook.jpg', N'C++ programming', CAST(1 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), N'u3zmovaupbimmp2t4royrews')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(21 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'u3zmovaupbimmp2t4royrews')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(22 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'u3zmovaupbimmp2t4royrews')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(23 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'rkfbdr4t03sra0dshvihyu3n')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(24 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'qcnytngmgikhz0bbri144lhx')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(25 AS Numeric(18, 0)), N'cbook.jpg', N'C++ programming', CAST(2 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), N'qcnytngmgikhz0bbri144lhx')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(26 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'qcnytngmgikhz0bbri144lhx')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(27 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'idqbcuq2kh2dj4sc52zcq0m2')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(28 AS Numeric(18, 0)), N'cbook.jpg', N'C++ programming', CAST(2 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), N'idqbcuq2kh2dj4sc52zcq0m2')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(29 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'xucvmmh4mlgfy4sbzpw325qc')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(30 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'xucvmmh4mlgfy4sbzpw325qc')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(31 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'xucvmmh4mlgfy4sbzpw325qc')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(32 AS Numeric(18, 0)), N'cbook.jpg', N'C++ programming', CAST(1 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), N'xucvmmh4mlgfy4sbzpw325qc')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(33 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'ht4k23meofi3p500ckl4nkjb')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(34 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'ht4k23meofi3p500ckl4nkjb')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(35 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'ehnxxffi5p22kcb3btvs3itm')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(36 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'3ahjrdr1nkf4roiejavah5fw')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(37 AS Numeric(18, 0)), N'cbook.jpg', N'C++ programming', CAST(2 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), N'3ahjrdr1nkf4roiejavah5fw')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(38 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'f45m4dzndgaagfxbw1dc4g5l')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(39 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'f45m4dzndgaagfxbw1dc4g5l')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(41 AS Numeric(18, 0)), N'cbook.jpg', N'C++ programming', CAST(2 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), N'5zse4ye3aflibvohfmb4sy2f')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(42 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'zb5w0hmib2plh4fekayvnth0')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(43 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'gi4gw5qtpzi0j1scnncl2oja')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(44 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'gi4gw5qtpzi0j1scnncl2oja')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(45 AS Numeric(18, 0)), N'rail4.jpg', N'RRb ', CAST(5 AS Numeric(18, 0)), CAST(350 AS Numeric(18, 0)), CAST(1750 AS Numeric(18, 0)), N'qmlusbdebs532huauxxornrk')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(46 AS Numeric(18, 0)), N'bank3.jpg', N'banking awareness', CAST(5 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(1250 AS Numeric(18, 0)), N'qmlusbdebs532huauxxornrk')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(47 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'gpe0vzfnyts1sybcqzlp00d2')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(48 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'r4kykly5glrd1fiupc32bnof')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(49 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'a3su1j5ye2tjgluvxug4cp5o')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(50 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'mo4vmebezcfzl4kt2elfjyfy')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(51 AS Numeric(18, 0)), N'rail4.jpg', N'RRb ', CAST(2 AS Numeric(18, 0)), CAST(350 AS Numeric(18, 0)), CAST(700 AS Numeric(18, 0)), N'dwop551dkpe3jkmchxepeiew')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(52 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'5yqh4kcoj2eilpcow3hb11d5')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(53 AS Numeric(18, 0)), N'comp8.jpg', N'computer course', CAST(2 AS Numeric(18, 0)), CAST(120 AS Numeric(18, 0)), CAST(240 AS Numeric(18, 0)), N'yphk2zkvpddr0knn0uuurh50')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(54 AS Numeric(18, 0)), N'kids.jpg', N'The Fox And The crow', CAST(2 AS Numeric(18, 0)), CAST(150 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'z2f42txauzx1qfvz0ltc34al')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(55 AS Numeric(18, 0)), N'kids.jpg', N'The Fox And The crow', CAST(2 AS Numeric(18, 0)), CAST(150 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'mpvqtvgsgaqkwgcm1masz40k')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(56 AS Numeric(18, 0)), N'cbook.jpg', N'c++', CAST(2 AS Numeric(18, 0)), CAST(350 AS Numeric(18, 0)), CAST(700 AS Numeric(18, 0)), N'mpvqtvgsgaqkwgcm1masz40k')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(57 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(20 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(6000 AS Numeric(18, 0)), N'kxm03oh3uwbvlsbhxpjvs5fv')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(58 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'xorar4o0zhyvnrvvl3s25xhu')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(59 AS Numeric(18, 0)), N'novel5.jpg', N'Vaapsi', CAST(2 AS Numeric(18, 0)), CAST(245 AS Numeric(18, 0)), CAST(490 AS Numeric(18, 0)), N'xorar4o0zhyvnrvvl3s25xhu')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(60 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'xorar4o0zhyvnrvvl3s25xhu')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(61 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'xorar4o0zhyvnrvvl3s25xhu')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(62 AS Numeric(18, 0)), N'rail5.jpg', N'RRB', CAST(2 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), N't40yx3us2alwlaap4mopqiap')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(63 AS Numeric(18, 0)), N'rail5.jpg', N'RRB', CAST(2 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), N't40yx3us2alwlaap4mopqiap')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(64 AS Numeric(18, 0)), N'comp6.jpg', N'computer course', CAST(2 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), N'iwazh4atkunnhsxowwg0ydvb')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(65 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(3 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(900 AS Numeric(18, 0)), N'zq2aoctrg3eatmg315hle2ed')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(69 AS Numeric(18, 0)), N'php.png', N'Php', CAST(1 AS Numeric(18, 0)), CAST(450 AS Numeric(18, 0)), CAST(450 AS Numeric(18, 0)), N'h4zzbgkrrl513ug2iws3r0l2')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(70 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'hkkkw2s5mocq04sdqonmjnke')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(71 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'hkkkw2s5mocq04sdqonmjnke')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(72 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'xxkwl2tv5j0nlhpr2onu4lfg')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(73 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'gop12u1yjoa1pdsbt4rgpcbw')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(74 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'hyb2y4dwcvjce5hacsztjxox')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(75 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'hyb2y4dwcvjce5hacsztjxox')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(76 AS Numeric(18, 0)), N'hn2.jpeg', N'complete hindi', CAST(1 AS Numeric(18, 0)), CAST(450 AS Numeric(18, 0)), CAST(450 AS Numeric(18, 0)), N'hyb2y4dwcvjce5hacsztjxox')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(40 AS Numeric(18, 0)), N'java.jpg', N'java', CAST(2 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'ts52iphuq4o3gwmiq5nrrjyy')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(66 AS Numeric(18, 0)), N'horror4.jpg', N'King of the nine Hells', CAST(1 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), N'zq2aoctrg3eatmg315hle2ed')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(67 AS Numeric(18, 0)), N'horror4.jpg', N'King of the nine Hells', CAST(1 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), N'yu4wfhg5nrlsocjniwxad2vx')
INSERT [dbo].[addcart] ([Srno], [Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (CAST(68 AS Numeric(18, 0)), N'b1.jpg', N'bank clerk', CAST(2 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), N'2r0dolyegwdctjvpjjcbc4xe')
SET IDENTITY_INSERT [dbo].[addcart] OFF
/****** Object:  Table [dbo].[addbook]    Script Date: 07/08/2020 18:22:57 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addbook]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addbook](
	[Bid] [numeric](18, 0) IDENTITY(10,1) NOT NULL,
	[btitle] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[price] [numeric](18, 0) NULL,
	[catid] [numeric](18, 0) NULL,
	[subcatid] [numeric](18, 0) NULL,
	[Aemail] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[Pemail] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[image] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[description] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[stock] [numeric](18, 0) NULL
)
END

SET IDENTITY_INSERT [dbo].[addbook] ON
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(14 AS Numeric(18, 0)), N'java', CAST(300 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1021 AS Numeric(18, 0)), N'charanjeet singh', N'kalyani', N'java.jpg', N'jkdfhgdjfhgfhsgksfkjjh', CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(19 AS Numeric(18, 0)), N'c++', CAST(350 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1021 AS Numeric(18, 0)), N'Bajarne stroustrup', N'unimax', N'cbook.jpg', N'C++ (/''si?/, as in the letter c) is a general-purpose, imperative computer programming language, supporting structured programming, lexical variable scope and recursion, while a static type system prevents many unintended operations. By design, C ++provides constructs that map efficiently to typical machine instructions, and therefore it has found lasting use in applications that had formerly been coded in assembly language, including operating systems, as well as various application software for computers ranging from supercomputers to embedded systems.clnguage
', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(20 AS Numeric(18, 0)), N'Marhi da dewa', CAST(250 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1024 AS Numeric(18, 0)), N'gurdyal singh', N'kalash', N'pn.jpg', N'This book is written by famous punjabi writer amrita pritam .this is a punjabi story book which show the emotions in author .It refer to punabi people emotions and culture.', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(21 AS Numeric(18, 0)), N'chitta lahu', CAST(150 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1024 AS Numeric(18, 0)), N'sukhdev singh khera', N'kalash', N'pn1.jpg', N'This is punjabi language book it is story to written by famous punjabi writer sukhdev singh  khera', CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(22 AS Numeric(18, 0)), N'banking awareness', CAST(250 AS Numeric(18, 0)), CAST(110 AS Numeric(18, 0)), CAST(1026 AS Numeric(18, 0)), N'kamaljeet', N'arihant', N'bank3.jpg', N'This book is special design by a banking exam.The bank exam syablus is include', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(23 AS Numeric(18, 0)), N'RRb ', CAST(350 AS Numeric(18, 0)), CAST(110 AS Numeric(18, 0)), CAST(1027 AS Numeric(18, 0)), N'sonika', N'arihant', N'rail4.jpg', N'This book is railway recuirment board syallbus according design.It have a computer based test paper include', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(24 AS Numeric(18, 0)), N'King of the nine Hells', CAST(200 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)), CAST(1031 AS Numeric(18, 0)), N'Dean kelin', N'arihant', N'horror4.jpg', N'This is a horror story book .It is written by a Dean kelin.', CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(25 AS Numeric(18, 0)), N'Monsters and Madness', CAST(250 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)), CAST(1031 AS Numeric(18, 0)), N'Jessica verday', N'arihant', N'horror3.jpg', N'This is a horror story book .It is written by a Jessica verday', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(26 AS Numeric(18, 0)), N'violet', CAST(150 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)), CAST(1031 AS Numeric(18, 0)), N'Jessica verday', N'arihant', N'horror1.jpg', N'This is a horror story book .It is written by a Jessica verday', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(27 AS Numeric(18, 0)), N'Dora big dig', CAST(150 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)), CAST(1032 AS Numeric(18, 0)), N'krishna tiwari', N'amitsharma', N'kids3.jpg', N'This is a kids story books.It is a special design to children with images', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(28 AS Numeric(18, 0)), N'c programming', CAST(300 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1021 AS Numeric(18, 0)), N'Bajarne stroustrup', N'unimax', N'cbook1.jpg', N'c is programing language .this book is design according to the bca syallbus', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(29 AS Numeric(18, 0)), N'The Fox And The crow', CAST(150 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)), CAST(1032 AS Numeric(18, 0)), N'Dean kelin', N'anhusman', N'kids.jpg', N'This book is kids story book.it is special design for children.', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(30 AS Numeric(18, 0)), N'Amelia', CAST(200 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)), CAST(1032 AS Numeric(18, 0)), N'Dean kelin', N'anhusman', N'kids1.jpg', N'This book is kids story book.it is special design for children.', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(31 AS Numeric(18, 0)), N'Panchantra', CAST(200 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)), CAST(1032 AS Numeric(18, 0)), N'krishna tiwari', N'kalash', N'kids4.png', N'This book is kids story book.it is special design for children.', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(32 AS Numeric(18, 0)), N'Snow and white', CAST(200 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)), CAST(1033 AS Numeric(18, 0)), N'Jessica verday', N'crsytal', N'novel1.jpg', N'This is novel .It is written by english author jessica verday.', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(33 AS Numeric(18, 0)), N'sea of star', CAST(200 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)), CAST(1033 AS Numeric(18, 0)), N'Jessica verday', N'crsytal', N'novel2.jpg', N'This is novel .It is written by english author jessica verday.', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(34 AS Numeric(18, 0)), N'Vaapsi', CAST(245 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)), CAST(1033 AS Numeric(18, 0)), N'Dharamveer bharati', N'bharati', N'novel5.jpg', N'It is a novel .it indian aramy family realted novel that reprsent the family of all indian aramy.it wriiten by dharamveer bharati ', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(35 AS Numeric(18, 0)), N'Gunnaho ka devta', CAST(245 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)), CAST(1033 AS Numeric(18, 0)), N'Dharamveer bharati', N'bharati', N'novel4.jpg', N'It is a novel .it indian aramy family realted novel that reprsent the family of all indian aramy.it wriiten by dharamveer bharati ', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(36 AS Numeric(18, 0)), N'Sceret Agent', CAST(258 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)), CAST(1033 AS Numeric(18, 0)), N'surinder mohan', N'kalash', N'novel3.jpg', N'secret agent is mystery novel .that written by surinder mohan', CAST(85 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(37 AS Numeric(18, 0)), N'Punjab di Awaj', CAST(200 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1024 AS Numeric(18, 0)), N'Amrita pritam', N'kalash', N'pn3.jpg', N'It is punjabi book .that written by amrita pritam.it a story of punjbi girls .', CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(38 AS Numeric(18, 0)), N'Pujari', CAST(450 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1024 AS Numeric(18, 0)), N'surinder mohan', N'anhusman', N'pn2.jpg', N'It is punjabi story book that  represnt by punjabi writer nank singh', CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(39 AS Numeric(18, 0)), N'Php', CAST(450 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1021 AS Numeric(18, 0)), N'charanjeet singh', N'kalyani', N'php.png', N'php is a computer programming language .that design by a bca syallbus acording.it easy and simple language used and module design to as comprison', CAST(36 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(40 AS Numeric(18, 0)), N'complete hindi', CAST(450 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1025 AS Numeric(18, 0)), N'charanjeet singh', N'kalyani', N'hn2.jpeg', N'Complete hindi book is ued to easy learn hindi .this book have a complete course o leran a hindi langugae', CAST(36 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(41 AS Numeric(18, 0)), N'computer course', CAST(250 AS Numeric(18, 0)), CAST(112 AS Numeric(18, 0)), CAST(1034 AS Numeric(18, 0)), N'charanjeet singh', N'anhusman', N'comp6.jpg', N'This book is design for basic computer course .It is easy and simple language and easy to earn.', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(42 AS Numeric(18, 0)), N'Hardware Course', CAST(120 AS Numeric(18, 0)), CAST(112 AS Numeric(18, 0)), CAST(1034 AS Numeric(18, 0)), N'charanjeet singh', N'anhusman', N'comp7.jpg', N'this book is hardware design book easy to learn.', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(43 AS Numeric(18, 0)), N'computer course', CAST(120 AS Numeric(18, 0)), CAST(112 AS Numeric(18, 0)), CAST(1034 AS Numeric(18, 0)), N'Daramveer bharati', N'anhusman', N'comp8.jpg', N'this book is computer course book in hindi langugae .It is easy to leran ', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(44 AS Numeric(18, 0)), N'computer network', CAST(215 AS Numeric(18, 0)), CAST(112 AS Numeric(18, 0)), CAST(1035 AS Numeric(18, 0)), N'Dr.sanjay sharma', N'unimax', N'comp3.jpg', N'this is a computer network book .that refernce to the bca syallbus according.', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(45 AS Numeric(18, 0)), N'Power Electronics', CAST(251 AS Numeric(18, 0)), CAST(112 AS Numeric(18, 0)), CAST(1036 AS Numeric(18, 0)), N'Amy A bartol', N'unimax', N'd6.jpg', N'n this essay, Robert P. Fletcher demonstrates how, while putting together digital and print media affordances, augmented print may evoke in readers a sense of the uncanny. Fletcher also explains how works such as Amaranth Borsuk’s Abra (2014), Aaron A. Reed and Jacob Garbe’s Ice-Bound (2016) or Stuart Campbell’s Modern Polaxis (2014) seem to demonstrate the existence of a never-ending return of the “fami  ', CAST(36 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(46 AS Numeric(18, 0)), N'basic Electronics', CAST(251 AS Numeric(18, 0)), CAST(112 AS Numeric(18, 0)), CAST(1036 AS Numeric(18, 0)), N'Gulshan Nanda', N'unimax', N'd5.jpg', N'n this essay, Robert P. Fletcher demonstrates how, while putting together digital and print media affordances, augmented print may evoke in readers a sense of the uncanny. Fletcher also explains how works such as Amaranth Borsuk’s Abra (2014), Aaron A. Reed and Jacob Garbe’s Ice-Bound (2016) or Stuart Campbell’s Modern Polaxis (2014) seem to demonstrate the existence of a never-ending return of the “fami  ', CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(67 AS Numeric(18, 0)), N'abc', CAST(456 AS Numeric(18, 0)), CAST(113 AS Numeric(18, 0)), CAST(1038 AS Numeric(18, 0)), N'abc', N'abc', N'Tulips.jpg', N'edgwerfwe', CAST(28 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(47 AS Numeric(18, 0)), N'Analog Digital', CAST(150 AS Numeric(18, 0)), CAST(112 AS Numeric(18, 0)), CAST(1036 AS Numeric(18, 0)), N'Giovanni saggo', N'amitsharma', N'd2.jpg', N'An electronic book (or e-book) is a book publication made available in digital form, consisting of text, images, or both, readable on the flat-panel display of computers or other electronic devices.[1] Although sometimes defined as "an electronic version of a printed book",[2] some e-books exist without a printed equivalent. Commercially produced and sold e-books are usually intended to be read on dedicated e-reader devices. However, almost any sophisticated computer device that features a controllable viewing screen can also be used to read e-books, including desktop computers, laptops, tablets and smartphones', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(48 AS Numeric(18, 0)), N'computer networks', CAST(150 AS Numeric(18, 0)), CAST(112 AS Numeric(18, 0)), CAST(1035 AS Numeric(18, 0)), N'Dr.sanjay sharma', N'amitsharma', N'comp11.jpg', N'An electronic book (or e-book) is a book publication made available in digital form, consisting of text, images, or both, readable on the flat-panel display of computers or other electronic devices.[1] Although sometimes defined as "an electronic version of a printed book",[2] some e-books exist without a printed equivalent. Commercially produced and sold e-books are usually intended to be read on dedicated e-reader devices. However, almost any sophisticated computer device that features a controllable viewing screen can also be used to read e-books, including desktop computers, laptops, tablets and smartphones', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(49 AS Numeric(18, 0)), N'computer networks', CAST(142 AS Numeric(18, 0)), CAST(112 AS Numeric(18, 0)), CAST(1035 AS Numeric(18, 0)), N'karoos roass', N'kalash', N'comp15.jpg', N'A computer network or data network is a telecommunications network which allows nodes to share resources. In computer networks, networked computing devices exchange data with each other using a data link. The connections between nodes are established using either cable media or wireless media. The best-known computer network is the Internet', CAST(12 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(50 AS Numeric(18, 0)), N'computer Fundamentals', CAST(125 AS Numeric(18, 0)), CAST(112 AS Numeric(18, 0)), CAST(1037 AS Numeric(18, 0)), N'pardeep k.sinha', N'arihant', N'comp16.jpg', N'Computer is an advanced electronic device that takes raw data as input from the user and processes it under the control of set of instructions (called program), gives the result (output), and saves it for the future use.

This Computer Fundamentals tutorial covers a foundational understanding of computer hardware, software, operating systems, peripherals etc. along with how to get the most value and impact from computer technology.', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(51 AS Numeric(18, 0)), N'computer Fundamentals', CAST(125 AS Numeric(18, 0)), CAST(112 AS Numeric(18, 0)), CAST(1037 AS Numeric(18, 0)), N'surinder mohan', N'kalash', N'comp17.jpg', N'Computer is an advanced electronic device that takes raw data as input from the user and processes it under the control of set of instructions (called program), gives the result (output), and saves it for the future use.

This Computer Fundamentals tutorial covers a foundational understanding of computer hardware, software, operating systems, peripherals etc. along with how to get the most value and impact from computer technology.', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(52 AS Numeric(18, 0)), N'SQL server', CAST(250 AS Numeric(18, 0)), CAST(112 AS Numeric(18, 0)), CAST(1037 AS Numeric(18, 0)), N'Daramveer bharati', N'kalash', N'comp18.jpg', N'Computer is an advanced electronic device that takes raw data as input from the user and processes it under the control of set of instructions (called program), gives the result (output), and saves it for the future use.

This Computer Fundamentals tutorial covers a foundational understanding of computer hardware, software, operating systems, peripherals etc. along with how to get the most value and impact from computer technology.', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(53 AS Numeric(18, 0)), N'bank clerk', CAST(250 AS Numeric(18, 0)), CAST(110 AS Numeric(18, 0)), CAST(1026 AS Numeric(18, 0)), N'Daramveer bharati', N'kalash', N'b1.jpg', N'The job of a bank clerk is cothe cushiest jobs in the world. The simple working hours, the bank holidays and many other facilities are considered to be great. However, not all of it is a bed roses for them. For further information, read the bank clerk job description given for your read. The bank clerks, especially since the recession, have a lot of responsibilities. In a bank, there are quite a few different departments; the job of a clerk is to work in whatever department they have been assigned to. ', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(61 AS Numeric(18, 0)), N'English course book', CAST(200 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1023 AS Numeric(18, 0)), N'Gulshan Nanda', N'unimax', N'eng1.jpg', N'The study of language in written texts and transcripts of speech is greatly helped by a student''s abilityBB to identify and describe those prominent features of the grammar which make one variety of English different from another. A Course Book in English Grammar looks at many of the problems encountered by students and encourages them to find their own answers and to assess hypotheses about grammatical description.', CAST(45 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(62 AS Numeric(18, 0)), N'IELTS speaking', CAST(150 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1023 AS Numeric(18, 0)), N'Gulshan Nanda', N'unimax', N'eng2.jpeg', N'The study of language in written texts and transcripts of speech is greatly helped by a student''s abilityBB to identify and describe those prominent features of the grammar which make one variety of English different from another. A Course Book in English Grammar looks at many of the problems encountered by students and encourages them to find their own answers and to assess hypotheses about grammatical description.', CAST(45 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(63 AS Numeric(18, 0)), N'Learing spoken english', CAST(150 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1023 AS Numeric(18, 0)), N'Gulshan Nanda', N'unimax', N'eng3.jpg', N'The study of language in written texts and transcripts of speech is greatly helped by a student''s abilityBB to identify and describe those prominent features of the grammar which make one variety of English different from another. A Course Book in English Grammar looks at many of the problems encountered by students and encourages them to find their own answers and to assess hypotheses about grammatical description.', CAST(45 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(64 AS Numeric(18, 0)), N'Hindi', CAST(150 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1025 AS Numeric(18, 0)), N'krishna tiwari', N'kalyani', N'hindi1.jpg', N'Hindi being one of the most used languages of the world has its significance marked quite high. No wonder many people want to learn the language in the easiest possible way. To assist in learning Hindi, this book by Krishna Gopal Vikal comes as highly recommended by many. Titled ‘Learn Hindi In 30 Days Through English’, this book helps the readers gain good command over the language with easy step-by-step guide', CAST(45 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(65 AS Numeric(18, 0)), N'Learn hindi', CAST(150 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1025 AS Numeric(18, 0)), N'sonika', N'kalyani', N'hindi2.jpg', N'Hindi being one of the most used languages of the world has its significance marked quite high. No wonder many people want to learn the language in the easiest possible way. To assist in learning Hindi, this book by Krishna Gopal Vikal comes as highly recommended by many. Titled ‘Learn Hindi In 30 Days Through English’, this book helps the readers gain good command over the language with easy step-by-step guide', CAST(45 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(54 AS Numeric(18, 0)), N'SBI Po', CAST(250 AS Numeric(18, 0)), CAST(110 AS Numeric(18, 0)), CAST(1026 AS Numeric(18, 0)), N'Daramveer bharati', N'kalash', N'b2.JPG', N'	The job of a bank clerk is cothe cushiest jobs in the world. The simple working hours, the bank holidays and many other facilities are considered to be great. However, not all of it is a bed roses for them. For further information, read the bank clerk job description given for your read.', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(55 AS Numeric(18, 0)), N'state bank clerk', CAST(250 AS Numeric(18, 0)), CAST(110 AS Numeric(18, 0)), CAST(1026 AS Numeric(18, 0)), N'Daramveer bharati', N'kalash', N'b3.gif', N'The job of a bank clerk is cothe cushiest jobs in the world. The simple working hours, the bank holidays and many other facilities are considered to be great. However, not all of it is a bed roses for them. For further information, read the bank clerk job description given for your read.
', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(66 AS Numeric(18, 0)), N'Learn hindi', CAST(150 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(1025 AS Numeric(18, 0)), N'sonika', N'kalyani', N'hindi3.jpg', N'If you are looking for a solid foundation to your language studies for school, work or travel, this engaging course will get you speaking, writing, reading and understanding Hindi in no time. Through authentic conversations, clear language presentations, and extensive practice and review, you will learn the Hindi you need to communicate ', CAST(45 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(56 AS Numeric(18, 0)), N'RRB', CAST(250 AS Numeric(18, 0)), CAST(110 AS Numeric(18, 0)), CAST(1027 AS Numeric(18, 0)), N'Daramveer bharati', N'kalash', N'rail5.jpg', N'The Railway Children is a children''s book by Edith Nesbit, originally serialised in The London Magazine during 1905 and first published in book form in 1906. It has been adapted for the screen several times, of which the 1970 film version is the best known. The Oxford Dictionary of National Biography credits Oswald Barron, who had a deep affection for Nesbit, with having provided the plot. ', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(57 AS Numeric(18, 0)), N'Railway', CAST(250 AS Numeric(18, 0)), CAST(110 AS Numeric(18, 0)), CAST(1027 AS Numeric(18, 0)), N'Daramveer bharati', N'kalash', N'rail6.jpeg', N'The Railway Children is a children''s book by Edith Nesbit, originally serialised in The London Magazine during 1905 and first published in book form in 1906. It has been adapted for the screen several times, of which the 1970 film version is the best known. The Oxford Dictionary of National Biography credits Oswald Barron, who had a deep affection for Nesbit, with having provided the plot. ', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(58 AS Numeric(18, 0)), N'B.Ed', CAST(230 AS Numeric(18, 0)), CAST(110 AS Numeric(18, 0)), CAST(1028 AS Numeric(18, 0)), N'Dean kelin', N'unimax', N'bed1.jpg', N'this book sbjbjsdgfehjfvbdh', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(59 AS Numeric(18, 0)), N'IGNOU b.ED', CAST(230 AS Numeric(18, 0)), CAST(110 AS Numeric(18, 0)), CAST(1028 AS Numeric(18, 0)), N'Dean kelin', N'unimax', N'bed6.jpeg', N'this book sbjbjsdgfehjfvbdh', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[addbook] ([Bid], [btitle], [price], [catid], [subcatid], [Aemail], [Pemail], [image], [description], [stock]) VALUES (CAST(60 AS Numeric(18, 0)), N'IGNOU b.ED', CAST(230 AS Numeric(18, 0)), CAST(110 AS Numeric(18, 0)), CAST(1028 AS Numeric(18, 0)), N'Dean kelin', N'unimax', N'bed5.jpg', N'The Railway Children is a children''s book by Edith Nesbit, originally serialised in The London Magazine during 1905 and first published in book form in 1906. It has been adapted for the screen several times, of which the 1970 film version is the best known. The Oxford Dictionary of National Biography credits Oswald Barron, who had a deep affection for Nesbit, with having provided the plot.
', CAST(5 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[addbook] OFF
