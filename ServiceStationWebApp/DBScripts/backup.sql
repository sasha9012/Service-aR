INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'67e51f42-81e1-4a0a-bd79-d04243c563a7', N'администратор', N'администратор', N'36eb8b65-0c1a-4f57-867c-4b7677e081e3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0b941442-cbc5-44fc-95f8-472780b97b81', N'user1@gmail.com', N'USER1@GMAIL.COM', N'user1@gmail.com', N'USER1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDgYJrVpnl+heYsSojU0w9DHqczTnRzioIb0EfcWUR1TLQ/XJ5O9Wv4o4An3O5QxYw==', N'JZSKIBARDV2NI76VHB5M5GB3DIO6O6AO', N'34a58cb8-150b-4d73-af63-744edcf1df30', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e02484f3-9b24-43c7-8710-3af4209ce59a', N'admin@service.com', N'ADMIN@SERVICE.COM', N'admin@service.com', N'ADMIN@SERVICE.COM', 1, N'AQAAAAEAACcQAAAAEJN4CbrUivFsDNcrAcM2zrF9Dj/HMpLwT1tdUPljJn9hsd1PARinTmQghoLk9RaJgQ==', N'HKBBMJYLVYSCJZNRCQI4AHZQE33KZBWD', N'4383ea74-b819-4d03-b0a9-7fe6cd330d45', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e02484f3-9b24-43c7-8710-3af4209ce59a', N'67e51f42-81e1-4a0a-bd79-d04243c563a7')
GO
SET IDENTITY_INSERT [dbo].[Brands] ON
GO
INSERT [dbo].[Brands] ([BrandID], [BrandName], [ExtName]) VALUES (1, N'Audi', N'.jpeg')
GO
INSERT [dbo].[Brands] ([BrandID], [BrandName], [ExtName]) VALUES (2, N'BMW', N'.jpeg')
GO
INSERT [dbo].[Brands] ([BrandID], [BrandName], [ExtName]) VALUES (3, N'Chevrolet', N'.jpeg')
GO
INSERT [dbo].[Brands] ([BrandID], [BrandName], [ExtName]) VALUES (4, N'Fiat', N'.jpeg')
GO
INSERT [dbo].[Brands] ([BrandID], [BrandName], [ExtName]) VALUES (5, N'Ford', N'.jpeg')
GO
INSERT [dbo].[Brands] ([BrandID], [BrandName], [ExtName]) VALUES (6, N'Honda', N'.jpeg')
GO
INSERT [dbo].[Brands] ([BrandID], [BrandName], [ExtName]) VALUES (7, N'Hyundai', N'.jpeg')
GO
INSERT [dbo].[Brands] ([BrandID], [BrandName], [ExtName]) VALUES (8, N'Toyota', N'.jpeg')
GO
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[CarModels] ON
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (1, N'A3', N'.jpeg', 1)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (2, N'A4', N'.jpeg', 1)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (3, N'A6', N'.jpeg', 1)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (4, N'Q3', N'.jpeg', 1)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (5, N'Q5', N'.jpeg', 1)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (6, N'Q7', N'.jpeg', 1)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (7, N'3 Series', N'.jpeg', 2)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (8, N'3 Series GT', N'.jpeg', 2)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (9, N'5 Series', N'.jpeg', 2)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (10, N'7 Series', N'.jpeg', 2)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (11, N'X1', N'.jpeg', 2)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (12, N'X3', N'.jpeg', 2)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (13, N'Aveo', N'.jpeg', 3)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (14, N'Beat', N'.jpeg', 3)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (15, N'Cruze', N'.jpeg', 3)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (16, N'Enjoy', N'.jpeg', 3)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (17, N'Sail', N'.jpeg', 3)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (18, N'Spark', N'.jpeg', 3)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (19, N'Avventura', N'.jpeg', 4)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (20, N'Eco Sport', N'.jpeg', 4)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (21, N'Linea', N'.jpeg', 4)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (23, N'Palio D', N'.jpeg', 4)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (24, N'Palio Stile', N'.jpeg', 4)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (25, N'Punto', N'.jpeg', 4)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (26, N'Punto Evo', N'.jpeg', 4)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (27, N'Eco Sport', N'.jpeg', 5)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (29, N'Etios Liva', N'.jpeg', 5)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (30, N'Fiesta', N'.jpeg', 5)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (31, N'Figo', N'.jpeg', 5)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (32, N'Amaze', N'.jpeg', 6)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (33, N'Brio', N'.jpeg', 6)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (34, N'City', N'.jpeg', 6)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (35, N'Eon', N'.jpeg', 7)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (36, N'I20', N'.jpeg', 7)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (37, N'Corolla Altis', N'.jpeg', 8)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (38, N'Fortuner', N'.jpeg', 8)
GO
INSERT [dbo].[CarModels] ([CarModelID], [CarModelName], [ExtName], [BrandID]) VALUES (39, N'Innova', N'.jpeg', 8)
GO
SET IDENTITY_INSERT [dbo].[CarModels] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [ExtName]) VALUES (1, N'Периодическое обслуживание', N'.png')
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [ExtName]) VALUES (2, N'Дентинг и покраска', N'.png')
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [ExtName]) VALUES (3, N'Аккумуляторы', N'.png')
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [ExtName]) VALUES (4, N'Клининговые услуги', N'.png')
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [ExtName]) VALUES (5, N'Обслуживание и ремонт кондиционеров', N'.png')
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [ExtName]) VALUES (6, N'Уход за шинами и колесами', N'.png')
GO
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Packages] ON
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (1, N'Базовое обслуживание', N'4 часа', N'Замена моторного масла, Замена масляного фильтра, Очистка воздушного фильтра, Доливка охлаждающей жидкости, Замена жидкости для стеклоочистителей', N'1000 км или 1 месяц гарантии', N'Каждые 5000 км или 3 месяца (рекомендуется)', 1)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (2, N'Стандартное обслуживание', N'6 часов', N'Замена моторного масла, Замена масляного фильтра, Замена воздушного фильтра, Проверка топливного фильтра, Очистка салонного фильтра', N'1000 км или 1 месяц гарантии', N'Каждые 10000 км или 6 месяцев (рекомендуется)', 1)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (3, N'Передний бампер', N'24 часа', N'Грунтовка Grade A, 4 слоя краски, Премиум краска DuPont, Полировка панели', N'2 года гарантии на краску', N'Нет', 2)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (4, N'Капот', N'24 часа', N'Грунтовка Grade A, 4 слоя краски, Премиум краска DuPont, Полировка панели', N'2 года гарантии на краску', N'Нет', 2)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (5, N'Задний бампер', N'24 часа', N'Грунтовка Grade A, 4 слоя краски, Премиум краска DuPont, Полировка панели', N'2 года гарантии на краску', N'Нет', 2)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (6, N'Покраска багажника', N'24 часа', N'Грунтовка Grade A, 4 слоя краски, Премиум краска DuPont, Полировка панели', N'2 года гарантии на краску', N'Нет', 2)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (7, N'Amaron', N'1 час', N'Бесплатная доставка и установка, Замена существующего аккумулятора', N'36 месяцев гарантии', N'50 Ампер-час', 3)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (8, N'Exide', N'1 час', N'Бесплатная доставка и установка, Замена существующего аккумулятора', N'36 месяцев гарантии', N'55 Ампер-час', 3)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (9, N'Livguard', N'1 час', N'Бесплатная доставка и установка, Замена существующего аккумулятора', N'72 месяца гарантии', N'75 Ампер-час', 3)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (10, N'Пакет на сезон дождей', N'6 часов', N'Антикоррозийная обработка кузова, Обработка стекла антидождь, Обработка днища и моторного отсека, Мойка автомобиля', N'1 месяц гарантии', N'Анти-ржавчина покрытие днища', 4)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (11, N'Спа для интерьера автомобиля', N'6 часов', N'Мойка автомобиля, Вакуумная уборка интерьера, Полировка панели, Влажная химчистка и детализация интерьера', N'Каждые 3 месяца (рекомендуется)', N'Нет', 4)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (12, N'Регулярное обслуживание кондиционера', N'4 часа', N'Доливка газа в кондиционер, Очистка фильтра кондиционера, Проверка кондиционера, Очистка вентиляции кондиционера, Очистка радиатора', N'500 км или 1 месяц гарантии', N'Каждые 5000 км или 3 месяца (рекомендуется)', 5)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (13, N'Полное обслуживание кондиционера', N'8 часов', N'Замена газа в кондиционере, Доливка масла в компрессор, Снятие и установка панели, Очистка охлаждающего радиатора (передний + задний)', N'1000 км или 1 месяц гарантии', N'Каждые 10000 км или 1 год (рекомендуется)', 5)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (14, N'GoodYear DURAPLUS', N'1 час', N'Бесплатная доставка и установка, Проверка шин на износ, Замена шин в сервисном центре, Дополнительно взимаются сборы за выравнивание и балансировку', N'Бескамерные', N'5 лет гарантии', 6)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (15, N'Apollo Alnac 4Gs', N'1 час', N'Бесплатная доставка и установка, Проверка шин на износ, Замена шин в сервисном центре, Дополнительно взимаются сборы за выравнивание и балансировку', N'Бескамерные', N'2 года гарантии', 6)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (16, N'MRF ZVTV', N'1 час', N'Бесплатная доставка и установка, Проверка шин на износ, Замена шин в сервисном центре, Дополнительно взимаются сборы за выравнивание и балансировку', N'Бескамерные', N'5 лет гарантии', 6)
GO
SET IDENTITY_INSERT [dbo].[Packages] OFF
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON
GO
INSERT [dbo].[Bookings] ([BookingID], [UserName], [ContactNo], [Status], [BookingDate], [PackageID], [CarModelID]) VALUES (1, N'user1@gmail.com', N'+64-255-556-81', N'Ожидает', CAST(N'2021-07-30T18:22:00.0000000' AS DateTime2), 3, 7)
GO
INSERT [dbo].[Bookings] ([BookingID], [UserName], [ContactNo], [Status], [BookingDate], [PackageID], [CarModelID]) VALUES (2, N'user1@gmail.com', N'+64 9-367 0000', N'Ожидает', CAST(N'2021-07-23T18:22:00.0000000' AS DateTime2), 9, 2)
GO
INSERT [dbo].[Bookings] ([BookingID], [UserName], [ContactNo], [Status], [BookingDate], [PackageID], [CarModelID]) VALUES (3, N'user1@gmail.com', N'+64 6-759 4820', N'Подтверждено', CAST(N'2021-07-30T18:23:00.0000000' AS DateTime2), 4, 7)
GO
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO