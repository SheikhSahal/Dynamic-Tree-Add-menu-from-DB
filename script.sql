USE [PSL]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 22-Apr-19 10:46:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[ManagerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 22-Apr-19 10:46:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[User_name] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[C_Password] [varchar](50) NULL,
	[Company] [varchar](50) NULL CONSTRAINT [df_Company]  DEFAULT ('PSL'),
 CONSTRAINT [PK_Login_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 22-Apr-19 10:46:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menus](
	[Menu_id] [int] NOT NULL,
	[Menu_name] [varchar](50) NULL,
	[Menu_Parent_id] [int] NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RIghts]    Script Date: 22-Apr-19 10:46:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RIghts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Menu_id] [int] NULL,
	[User_name] [varchar](50) NULL,
	[User_Insert] [char](1) NULL,
	[User_update] [char](1) NULL,
	[User_delete] [char](1) NULL,
 CONSTRAINT [PK_RIghts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Privilege]    Script Date: 22-Apr-19 10:46:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Privilege](
	[User_id] [varchar](50) NULL,
	[Menu_id] [int] NULL,
	[Grant_YN] [char](1) NULL,
	[User_Insert] [char](1) NULL,
	[User_Update] [char](1) NULL,
	[User_Delete] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (1, N'John', 5)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (2, N'Mark', 8)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (3, N'Steve', 8)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (4, N'Tom', 3)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (5, N'Lara', 8)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (6, N'Simon', 2)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (7, N'David', 4)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (8, N'Ben', NULL)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (9, N'Stacy', 2)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (10, N'Sam', 5)
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([id], [User_name], [Password], [C_Password], [Company]) VALUES (1, N'admin', N'Admin', N'Admin', N'PSL')
INSERT [dbo].[Login] ([id], [User_name], [Password], [C_Password], [Company]) VALUES (2, N'sahal', N'12345', N'12345', N'PSL')
INSERT [dbo].[Login] ([id], [User_name], [Password], [C_Password], [Company]) VALUES (3, N'irfan_bhai', N'1234', N'1234', N'PSL')
INSERT [dbo].[Login] ([id], [User_name], [Password], [C_Password], [Company]) VALUES (4, N'tooba', N'123', N'123', N'PSL')
INSERT [dbo].[Login] ([id], [User_name], [Password], [C_Password], [Company]) VALUES (5, N'bhabhi', N'123', N'123', N'PSL')
INSERT [dbo].[Login] ([id], [User_name], [Password], [C_Password], [Company]) VALUES (6, N'zeeshan_bhai', N'123', N'123', N'PSL')
SET IDENTITY_INSERT [dbo].[Login] OFF
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (1, N'Marketing', 2)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (2, N'Sales', NULL)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (3, N'Human Resource', 2)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (4, N'Finance', NULL)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (5, N'Technical', 4)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (6, N'f2', 4)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (7, N'f3', 4)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (8, N'second ', 6)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (9, N'fff2', 6)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (10, N'ffff2', 6)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (11, N'ffff2', 6)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (12, N'ffff2', 6)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (13, N'sahal', 4)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (14, N'tooba', 13)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (15, N'will married soon', 4)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (21, N'11new hellow', 20)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (23, N'our kids', 14)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (27, N'hellow new ', 26)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (28, N'hellow new ', 27)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (29, N'first girl', 23)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (30, N'second boy', 23)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (31, N'third girl', 23)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (32, N'tooba sahal', 14)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (34, N'get money first', 13)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (35, N'sales', 2)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (36, N'sales1', 35)
SET IDENTITY_INSERT [dbo].[RIghts] ON 

INSERT [dbo].[RIghts] ([id], [Menu_id], [User_name], [User_Insert], [User_update], [User_delete]) VALUES (1, 5, N'admin', N'Y', N'Y', N'Y')
INSERT [dbo].[RIghts] ([id], [Menu_id], [User_name], [User_Insert], [User_update], [User_delete]) VALUES (2, 6, N'admin', N'Y', N'Y', N'Y')
INSERT [dbo].[RIghts] ([id], [Menu_id], [User_name], [User_Insert], [User_update], [User_delete]) VALUES (3, 7, N'admin', N'Y', N'Y', N'Y')
INSERT [dbo].[RIghts] ([id], [Menu_id], [User_name], [User_Insert], [User_update], [User_delete]) VALUES (4, 1, N'sahal', N'Y', N'Y', N'Y')
INSERT [dbo].[RIghts] ([id], [Menu_id], [User_name], [User_Insert], [User_update], [User_delete]) VALUES (5, 2, N'sahal', N'Y', N'Y', N'Y')
INSERT [dbo].[RIghts] ([id], [Menu_id], [User_name], [User_Insert], [User_update], [User_delete]) VALUES (6, 3, N'sahal', N'Y', N'Y', N'Y')
INSERT [dbo].[RIghts] ([id], [Menu_id], [User_name], [User_Insert], [User_update], [User_delete]) VALUES (7, 4, N'sahal', N'Y', N'Y', N'Y')
INSERT [dbo].[RIghts] ([id], [Menu_id], [User_name], [User_Insert], [User_update], [User_delete]) VALUES (8, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[RIghts] OFF
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN], [User_Insert], [User_Update], [User_Delete]) VALUES (N'sahal', 4, N'N', N'N', N'N', N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN], [User_Insert], [User_Update], [User_Delete]) VALUES (N'sahal', 13, N'N', N'N', N'N', N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN], [User_Insert], [User_Update], [User_Delete]) VALUES (N'sahal', 14, N'N', N'N', N'N', N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN], [User_Insert], [User_Update], [User_Delete]) VALUES (N'sahal', 32, N'N', N'Y', N'Y', N'Y')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN], [User_Insert], [User_Update], [User_Delete]) VALUES (N'sahal', 23, N'N', N'N', N'N', N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN], [User_Insert], [User_Update], [User_Delete]) VALUES (N'sahal', 29, N'N', N'Y', N'Y', N'Y')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN], [User_Insert], [User_Update], [User_Delete]) VALUES (N'sahal', 30, N'N', N'Y', N'Y', N'Y')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN], [User_Insert], [User_Update], [User_Delete]) VALUES (N'sahal', 31, N'N', N'Y', N'Y', N'Y')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN], [User_Insert], [User_Update], [User_Delete]) VALUES (N'irfan_bhai', 2, N'N', N'N', N'N', N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN], [User_Insert], [User_Update], [User_Delete]) VALUES (N'irfan_bhai', 3, N'N', N'N', N'N', N'N')
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[User_Privilege]  WITH CHECK ADD  CONSTRAINT [FK_User_Privilege_Menus] FOREIGN KEY([Menu_id])
REFERENCES [dbo].[Menus] ([Menu_id])
GO
ALTER TABLE [dbo].[User_Privilege] CHECK CONSTRAINT [FK_User_Privilege_Menus]
GO
/****** Object:  StoredProcedure [dbo].[B_tree]    Script Date: 22-Apr-19 10:46:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[B_tree]
as 
with r as (
      select menu_id, menu_name, menu_parent_id, depth=0 ,sort=cast(Menu_id as varchar(max))
      from Menus 
      where Menu_Parent_id is null
      union all
      select pc.Menu_id, pc.Menu_name, pc.Menu_Parent_id, depth=r.depth+1 ,sort=r.sort+cast(pc.Menu_id as varchar(30))
      from r 
      inner join Menus pc on r.Menu_id=pc.Menu_Parent_id
      where r.depth<32767

)
select  r.Menu_id,tree=replicate('',r.depth*3)+r.Menu_name, r.Menu_Parent_id
from r 
order by sort;


GO
/****** Object:  StoredProcedure [dbo].[individual_menu]    Script Date: 22-Apr-19 10:46:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[individual_menu] 
@user_name varchar(50) 
as
begin
with r as (
select u.menu_id, m.menu_name, m.menu_parent_id , u.User_id, depth=0 ,sort=cast(m.Menu_id as varchar(max))
      from Menus m , User_Privilege u
      where m.Menu_Parent_id is null
	  and u.Menu_id = m.Menu_id
	  and u.User_id = @user_name
      union all
      select pc.Menu_id, pc.Menu_name, pc.Menu_Parent_id,ac.user_id, depth=r.depth+1 ,sort=r.sort+cast(pc.Menu_id as varchar(30))
      from r 
      inner join Menus pc on r.Menu_id=pc.Menu_Parent_id
	  inner join User_Privilege ac on r.Menu_id=ac.Menu_id
      where r.depth<32767
)
select  r.Menu_id,tree=replicate('',r.depth*3)+r.Menu_name, r.Menu_Parent_id
from r
order by sort;

end
GO
/****** Object:  StoredProcedure [dbo].[user_Menu]    Script Date: 22-Apr-19 10:46:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[user_Menu]
--@username varchar(50)
as 
begin
select u.User_id , u.Menu_id , m.Menu_name , m.Menu_Parent_id
 from User_Privilege u , Menus m
 where u.Menu_id = m.Menu_id
 --and u.User_id = @username
 end
GO
