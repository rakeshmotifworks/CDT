USE [CDT]
GO
/****** Object:  Table [dbo].[Capacitor]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Capacitor](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Technology] [nvarchar](max) NOT NULL,
	[Dielectric for Ceramic] [nvarchar](50) NULL,
	[Value] [nvarchar](50) NOT NULL,
	[Tol] [nvarchar](50) NOT NULL,
	[Temperature] [nvarchar](max) NOT NULL,
	[Voltage] [nvarchar](50) NOT NULL,
	[ESR] [nvarchar](max) NULL,
	[Mounting] [nvarchar](max) NOT NULL,
	[Dimensions] [nvarchar](max) NOT NULL,
	[Lead Spacing] [float] NULL,
	[SMD package] [float] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Capacitor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CapacitorMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CapacitorMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CapacitorMnf] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Components]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Components](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Component] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Components] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Connector]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Connector](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Contact Contact Type] [nvarchar](max) NULL,
	[Contact Surface] [nvarchar](50) NULL,
	[Max 
Temperature] [nvarchar](max) NULL,
	[No of 
Rows] [int] NULL,
	[No of 
Positions] [int] NULL,
	[Connector 
Orientation] [nvarchar](max) NULL,
	[Contact 
Rating] [nvarchar](max) NULL,
	[Voltage 
Rating] [nvarchar](max) NULL,
	[Package] [nvarchar](max) NULL,
	[Pin Spacing 
or pitch] [float] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Connector] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConnectorMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConnectorMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ConnectorMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Diode]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diode](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NULL,
	[DC Voltage] [nvarchar](50) NOT NULL,
	[Forward Voltage] [nvarchar](50) NOT NULL,
	[Forward Surge Current] [nvarchar](50) NULL,
	[Power Dissipation] [nvarchar](50) NULL,
	[Mounting Style] [nvarchar](max) NOT NULL,
	[Package] [nvarchar](max) NULL,
	[Operating Temperature] [nvarchar](max) NOT NULL,
	[Dimensions] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Diode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiodeMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiodeMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_DiodeMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fuse]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fuse](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Material] [nvarchar](max) NULL,
	[Blow speed] [nvarchar](50) NULL,
	[Rated Current] [nvarchar](50) NULL,
	[Volt] [nvarchar](50) NULL,
	[Mounting Style] [nvarchar](max) NOT NULL,
	[Package size] [nvarchar](50) NULL,
	[Dimension] [nvarchar](max) NOT NULL,
	[Lead Spacing(] [float] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Fuse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FuseMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FuseMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_FuseMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IC]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IC](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Technology] [nvarchar](50) NULL,
	[Supply Voltage] [nvarchar](50) NULL,
	[Memory 
organisation] [nvarchar](max) NULL,
	[Memory 
access Time] [nvarchar](50) NULL,
	[Mouting] [nvarchar](50) NOT NULL,
	[Package] [nvarchar](50) NOT NULL,
	[Lead Spacing(Inch)] [float] NULL,
	[No 
of pins] [int] NULL,
	[Operating
Temperature] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_IC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ICMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ICMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ICMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inductor]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inductor](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Construction] [nvarchar](max) NULL,
	[Operating Temperature] [nvarchar](max) NOT NULL,
	[Impedence] [nvarchar](50) NULL,
	[Inductance] [nvarchar](50) NULL,
	[Capacitance] [nvarchar](50) NULL,
	[Tol] [nvarchar](50) NULL,
	[Current Rating] [nvarchar](50) NOT NULL,
	[DC Resistance] [nvarchar](50) NULL,
	[Shielding] [nvarchar](50) NULL,
	[Frequency] [nvarchar](50) NULL,
	[Mounting] [nvarchar](max) NOT NULL,
	[Package for SMD] [nvarchar](50) NULL,
	[Dimensions] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Inductor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InductorMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InductorMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_InductorMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mechanical]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mechanical](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Mechanical] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MechanicalMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MechanicalMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_MechanicalMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Misc]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Misc](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Misc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MiscMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MiscMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_MiscMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Optoelectronics]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Optoelectronics](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NULL,
	[Function] [nvarchar](max) NOT NULL,
	[Detectable
light Color] [nvarchar](50) NOT NULL,
	[Voltage] [nvarchar](50) NOT NULL,
	[Forward 
Current] [nvarchar](50) NOT NULL,
	[Power] [nvarchar](50) NOT NULL,
	[Luminous 
Intensity] [nvarchar](50) NOT NULL,
	[Peak Wave
length] [nvarchar](50) NOT NULL,
	[Dominant 
Wavelength] [nvarchar](50) NULL,
	[Reverse 
Voltage] [nvarchar](50) NOT NULL,
	[Viewing Angle] [float] NULL,
	[Mounting Style] [nvarchar](max) NOT NULL,
	[Package] [nvarchar](max) NOT NULL,
	[Operating
Temperature] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Optoelectronics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OptoelectronicsMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OptoelectronicsMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_OptoelectronicsMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Oscillators]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oscillators](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NULL,
	[Frequency] [nvarchar](max) NOT NULL,
	[Freq. 
Tolerance] [nvarchar](50) NOT NULL,
	[Frequency 
Stability] [nvarchar](50) NULL,
	[Load 
Capacitance] [nvarchar](50) NOT NULL,
	[Mounting] [nvarchar](max) NOT NULL,
	[Operating 
Temp] [nvarchar](max) NOT NULL,
	[Dimensions] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Oscillators] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OscillatorsMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OscillatorsMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_OscillatorsMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Potentiometer]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Potentiometer](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Potentiometer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PotentiometerMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PotentiometerMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_PotentiometerMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Relay]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relay](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NULL,
	[Form 
Factor] [nvarchar](max) NULL,
	[Current 
Rating A] [float] NOT NULL,
	[Coil 
Rating] [nvarchar](50) NULL,
	[Coil 
Resistance] [float] NULL,
	[Contact 
Configuration] [nvarchar](max) NULL,
	[Operating 
Temperature] [nvarchar](max) NULL,
	[Mounting 
Style] [nvarchar](max) NOT NULL,
	[Dimensions] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Relay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RelayMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RelayMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_RelayMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Resistor]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resistor](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Technology] [nvarchar](max) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[Tol] [nvarchar](50) NOT NULL,
	[Temperature 
Coefficent] [nvarchar](50) NULL,
	[Power] [nvarchar](50) NOT NULL,
	[Mounting 
Style] [nvarchar](max) NOT NULL,
	[Package] [nvarchar](max) NOT NULL,
	[Dimensions] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Resistor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResistorMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ResistorMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ResistorMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Switch]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Switch](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Endurance] [nvarchar](max) NULL,
	[Form Factor] [nvarchar](50) NOT NULL,
	[Current rating] [nvarchar](50) NOT NULL,
	[Illumination] [nvarchar](50) NOT NULL,
	[Voltage] [nvarchar](50) NOT NULL,
	[Mounting style] [nvarchar](max) NOT NULL,
	[Dimensions] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Switch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SwitchMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SwitchMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SwitchMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Thermistor]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thermistor](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Thermistor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThermistorMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThermistorMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ThermistorMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transformer]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transformer](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Turns Ratio] [nvarchar](max) NOT NULL,
	[Power rating] [nvarchar](50) NOT NULL,
	[Mounting Style] [nvarchar](max) NOT NULL,
	[Max.Temp] [nvarchar](50) NULL,
	[Dimensions] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Transformer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransformerMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransformerMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TransformerMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transistor]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transistor](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NULL,
	[Technology] [nvarchar](50) NULL,
	[Gain Band 
width(MhZ)] [float] NULL,
	[Material] [nvarchar](50) NULL,
	[VCE
(Volts)] [nvarchar](50) NOT NULL,
	[Current
(Amps)] [nvarchar](50) NOT NULL,
	[Power
(Watts)] [nvarchar](50) NULL,
	[Application] [nvarchar](max) NULL,
	[Mounting] [nvarchar](max) NOT NULL,
	[Package] [nvarchar](max) NOT NULL,
	[Temperature] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Transistor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransistorMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransistorMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TransistorMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[SNo] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[LastName] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NOT NULL,
	[PhoneNumber] [numeric](18, 0) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Sex] [nchar](10) NOT NULL,
	[Age] [nchar](10) NOT NULL,
	[PasswordHash] [nvarchar](255) NULL,
	[CreatedDateTime] [datetime] NULL,
	[IsActive] [nvarchar](5) NULL,
	[IsDeleted] [nvarchar](5) NULL,
	[Roles] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[SNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wires]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wires](
	[BOM Number] [nvarchar](50) NOT NULL,
	[BU] [nvarchar](50) NOT NULL,
	[Product line] [nvarchar](50) NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Thermo Number] [int] NOT NULL,
	[Item Description] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Part] [nvarchar](50) NOT NULL,
	[Part Type] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Wires] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WiresMnf]    Script Date: 7/31/2015 12:15:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WiresMnf](
	[Mfr. Name] [nvarchar](max) NOT NULL,
	[Mfr. Part Number] [nvarchar](max) NOT NULL,
	[Part Status] [nvarchar](50) NULL,
	[RoHS Status] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[Type] [varchar](50) NOT NULL,
	[M_Id] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_WiresMnf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CapacitorMnf]  WITH CHECK ADD  CONSTRAINT [FK_CapacitorMnf_Capacitor] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Capacitor] ([Id])
GO
ALTER TABLE [dbo].[CapacitorMnf] CHECK CONSTRAINT [FK_CapacitorMnf_Capacitor]
GO
ALTER TABLE [dbo].[ConnectorMnf]  WITH CHECK ADD  CONSTRAINT [FK_ConnectorMnf_Connector] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Connector] ([Id])
GO
ALTER TABLE [dbo].[ConnectorMnf] CHECK CONSTRAINT [FK_ConnectorMnf_Connector]
GO
ALTER TABLE [dbo].[DiodeMnf]  WITH CHECK ADD  CONSTRAINT [FK_DiodeMnf_Diode] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Diode] ([Id])
GO
ALTER TABLE [dbo].[DiodeMnf] CHECK CONSTRAINT [FK_DiodeMnf_Diode]
GO
ALTER TABLE [dbo].[FuseMnf]  WITH CHECK ADD  CONSTRAINT [FK_FuseMnf_Fuse] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Fuse] ([Id])
GO
ALTER TABLE [dbo].[FuseMnf] CHECK CONSTRAINT [FK_FuseMnf_Fuse]
GO
ALTER TABLE [dbo].[ICMnf]  WITH CHECK ADD  CONSTRAINT [FK_ICMnf_IC] FOREIGN KEY([M_Id])
REFERENCES [dbo].[IC] ([Id])
GO
ALTER TABLE [dbo].[ICMnf] CHECK CONSTRAINT [FK_ICMnf_IC]
GO
ALTER TABLE [dbo].[InductorMnf]  WITH CHECK ADD  CONSTRAINT [FK_InductorMnf_Inductor] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Inductor] ([Id])
GO
ALTER TABLE [dbo].[InductorMnf] CHECK CONSTRAINT [FK_InductorMnf_Inductor]
GO
ALTER TABLE [dbo].[MechanicalMnf]  WITH CHECK ADD  CONSTRAINT [FK_MechanicalMnf_Mechanical] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Mechanical] ([Id])
GO
ALTER TABLE [dbo].[MechanicalMnf] CHECK CONSTRAINT [FK_MechanicalMnf_Mechanical]
GO
ALTER TABLE [dbo].[MiscMnf]  WITH CHECK ADD  CONSTRAINT [FK_MiscMnf_Misc] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Misc] ([Id])
GO
ALTER TABLE [dbo].[MiscMnf] CHECK CONSTRAINT [FK_MiscMnf_Misc]
GO
ALTER TABLE [dbo].[OptoelectronicsMnf]  WITH CHECK ADD  CONSTRAINT [FK_OptoelectronicsMnf_Optoelectronics] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Optoelectronics] ([Id])
GO
ALTER TABLE [dbo].[OptoelectronicsMnf] CHECK CONSTRAINT [FK_OptoelectronicsMnf_Optoelectronics]
GO
ALTER TABLE [dbo].[OscillatorsMnf]  WITH CHECK ADD  CONSTRAINT [FK_OscillatorsMnf_Oscillators] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Oscillators] ([Id])
GO
ALTER TABLE [dbo].[OscillatorsMnf] CHECK CONSTRAINT [FK_OscillatorsMnf_Oscillators]
GO
ALTER TABLE [dbo].[PotentiometerMnf]  WITH CHECK ADD  CONSTRAINT [FK_PotentiometerMnf_Potentiometer] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Potentiometer] ([Id])
GO
ALTER TABLE [dbo].[PotentiometerMnf] CHECK CONSTRAINT [FK_PotentiometerMnf_Potentiometer]
GO
ALTER TABLE [dbo].[RelayMnf]  WITH CHECK ADD  CONSTRAINT [FK_RelayMnf_Relay] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Relay] ([Id])
GO
ALTER TABLE [dbo].[RelayMnf] CHECK CONSTRAINT [FK_RelayMnf_Relay]
GO
ALTER TABLE [dbo].[ResistorMnf]  WITH CHECK ADD  CONSTRAINT [FK_ResistorMnf_Resistor] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Resistor] ([Id])
GO
ALTER TABLE [dbo].[ResistorMnf] CHECK CONSTRAINT [FK_ResistorMnf_Resistor]
GO
ALTER TABLE [dbo].[SwitchMnf]  WITH CHECK ADD  CONSTRAINT [FK_SwitchMnf_Switch] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Switch] ([Id])
GO
ALTER TABLE [dbo].[SwitchMnf] CHECK CONSTRAINT [FK_SwitchMnf_Switch]
GO
ALTER TABLE [dbo].[ThermistorMnf]  WITH CHECK ADD  CONSTRAINT [FK_ThermistorMnf_Thermistor] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Thermistor] ([Id])
GO
ALTER TABLE [dbo].[ThermistorMnf] CHECK CONSTRAINT [FK_ThermistorMnf_Thermistor]
GO
ALTER TABLE [dbo].[TransformerMnf]  WITH CHECK ADD  CONSTRAINT [FK_TransformerMnf_Transformer] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Transformer] ([Id])
GO
ALTER TABLE [dbo].[TransformerMnf] CHECK CONSTRAINT [FK_TransformerMnf_Transformer]
GO
ALTER TABLE [dbo].[TransistorMnf]  WITH CHECK ADD  CONSTRAINT [FK_TransistorMnf_Transistor] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Transistor] ([Id])
GO
ALTER TABLE [dbo].[TransistorMnf] CHECK CONSTRAINT [FK_TransistorMnf_Transistor]
GO
ALTER TABLE [dbo].[WiresMnf]  WITH CHECK ADD  CONSTRAINT [FK_WiresMnf_Wires] FOREIGN KEY([M_Id])
REFERENCES [dbo].[Wires] ([Id])
GO
ALTER TABLE [dbo].[WiresMnf] CHECK CONSTRAINT [FK_WiresMnf_Wires]
GO
