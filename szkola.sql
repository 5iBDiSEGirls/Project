CREATE DATABASE school

CREATE TABLE class		(id_klasy INTEGER NOT NULL, 
                         nazwa CHAR(5) NULL,
                         opis CHAR(40) NULL,
                         wychowawca INTEGER NOT NULL)

CREATE TABLE teacher	(id_teacher INTEGER NOT NULL,
                         imie CHAR(25) NULL,
                         nazwisko CHAR(30) NULL,
						 email CHAR(20) NULL,
						 telefon CHAR(10) NULL,
						 id_przedmiotu INTEGER NOT NULL,
						 _login CHAR(30) NOT NULL,
						 _password CHAR(10) NOT NULL)

CREATE TABLE grade		(id_oceny INTEGER NOT NULL,
                         ocena CHAR(3) NULL,
                         id_ucznia INTEGER NOT NULL,
						 id_przedmiotu INTEGER NOT NULL)
						 
CREATE TABLE _subject	(id_przedmiotu INTEGER NOT NULL,
                         nazwa CHAR(30) NULL)

CREATE TABLE pupil		(id_ucznia INTEGER NOT NULL,
						 imie CHAR(25) NULL,
						 nazwisko CHAR(30) NULL,
						 adres CHAR(50) NULL,
						 telefon CHAR(10) NULL,
						 id_klasy INTEGER NOT NULL,
						 _login CHAR(30)NOT NULL,
						 _password CHAR(10) NOT NULL)


insert into class values(1, '1a', 'mat-fiz-inf', 4)
insert into class values(2, '1b', 'pol-his-wos', 5)
insert into class values(3, '2a', 'mat-fiz-inf', 6)
insert into class values(4, '2b', 'pol-his-wos', 7)
insert into class values(5, '3a', 'mat-fiz-inf', 8)
insert into class values(6, '3b', 'pol-his-wos', 9)


insert into teacher values(1, 'Dawid', 'Galinis', 'dgalinis@em.pl', '603530493', 1, 'dgalinis@nauczyciel.pl', 'J6E4UxPB')
insert into teacher values(2, 'Maciej', 'Lengiel', 'mlangiel@em.pl', '606201861', 2, 'mlangiel@nauczyciel.pl', 'JVECxsDc')
insert into teacher values(3, 'Paulina', 'Emerf', 'pemerf@em.pl', '604238226', 3, 'pemerf@nauczyciel.pl', 'fPCwgqPb')
insert into teacher values(4, 'Sandra', 'Raczkowska', 'sraczkowska@em.pl', '600293284', 4, 'sraczkowska@nauczyciel.pl', 'CmnvuJ7s')
insert into teacher values(5, 'Zofia', 'Ralska', 'zralska@em.pl', '507651324', 5, 'zralska@nauczyciel.pl', 'YgFbBH6z')
insert into teacher values(6, 'Anna', 'Talkowska', 'atalkowska@em.pl', '609039749', 6, 'atalkowski@nauczyciel.pl', 'czkZ6rhP')
insert into teacher values(7, 'Stanis≥aw', 'Abrosewicz', 'sabrosewicz@em.pl', '505567601', 7, 'sabrosewicz@nauczyciel.pl', '33T5xCpM')
insert into teacher values(8, 'Joanna', 'Itota', 'jitota@em.pl', '600295170', 8, 'jitota@nauczyciel.pl', 'DY4sRqrq')
insert into teacher values(9, 'Kinga', 'Adakowska', 'kadakowska@em.pl', '508363082', 9, 'kadakowska@nauczyciel.pl', 'kSrq7NPE')
insert into teacher values(10, 'Konrad', 'Chakielowicz', 'kchakielowicz@em.pl', '503064695', 10, 'kchakielowicz@nauczyciel.pl', 'M7TCfe5c')
insert into teacher values(11, 'Lena', 'Haus', 'lhaus@em.pl', '504309076', 11, 'lhaus@nauczcyiel.pl', 'CmehHJWy')
insert into teacher values(12, 'Karolina', 'Nadolska', 'knadolska@em.pl', '601477954', 12, 'knadolska@nauczyciel.pl', '356s8ahX')
insert into teacher values(13, '£ukasz', 'Ossowski', 'lossowksi@em.pl', '605279109', 13, 'lossowski@nauczyciel.pl', 'gMWddkNc')
insert into teacher values(14, 'Maciej', 'Pachucki', 'mpachucki@em.pl', '600742234', 14, 'mpachucki@nauczyciel.pl', 'U4ezXSWC')
insert into teacher values(15, 'Jagoda', 'Chodkiewicz', 'jchodkiewicz@em.pl', '602742078', 1, 'jchodkiewicz@nauczyciel.pl', '7yA2bEDC')
insert into teacher values(16, 'Aleksandra', 'Irszowicz', 'airszowicz@em.pl', '501642897', 2, 'arszowicz@nauczyciel.pl', '82ZcX566')
insert into teacher values(17, 'Krzysztof', 'Nartowicz', 'knartowicz@em.pl', '501642879', 5, 'knarutowicz@naucziciel.pl', '543BrLsk')


insert into _subject values(1, 'j.polski')
insert into _subject values(2, 'j.angielski')
insert into _subject values(3, 'j.niemiecki')
insert into _subject values(4, 'j.francuski')
insert into _subject values(5, 'matematyka')
insert into _subject values(6, 'fizyka')
insert into _subject values(7, 'chemia')
insert into _subject values(8, 'historia')
insert into _subject values(9, 'wiedza o spo≥eczeÒstwie')
insert into _subject values(10, 'geografia')
insert into _subject values(11, 'biologia')
insert into _subject values(12, 'wf')
insert into _subject values(13, 'religia')
insert into _subject values(14, 'technlogia informacyjna')


insert into pupil values(1, 'Oskar', 'Bacewicz', 'ul.GÛrna 5/8, 35-907 £Ûdü', '609027861', 1, 'obacewicz@uczen.pl', 'zUqvBu9P')
insert into pupil values(2, 'Maciej', 'Balcer', 'ul.MÍgiewska 7/24, 35-907 £Ûdü', '609202048', 1, 'mbalcer@uczen.pl', 'c5bwry3d')
insert into pupil values(3, 'Laura', 'Chanc', 'ul.W.Orkana 1/11, 35-907 £Ûdü', '602838625', 1, 'lchanc@uczen.pl', 'AL5JPJMw')
insert into pupil values(4, 'Karol', 'Dynilewicz', 'ul.G≥Íboka 16/10, 35-907 £Ûdü', '608940740', 1, 'kdynilewicz@uczen.pl', 'qTjbvSGf')
insert into pupil values(5, 'Wiktoria', 'Filipowicz', 'ul.Wilcza 2/20, 35-907 £Ûdü', '601181294', 1, 'wfilipowicz@uczen.pl', 'saJGEpqm')
insert into pupil values(6, 'Szymon', 'HarczuÒski', 'ul.Prosta 8/5, 35-907 £Ûdü', '608282189', 1, 'sharczunski@uczen.pl', 'xaVDNjgC')
insert into pupil values(7, 'Ma≥gorzata', 'Jab≥oÒska', 'ul.Snopkowa 2/26, 35-907 £Ûdü', '601402857', 1, 'mjablonka@uczen.pl', 'YAKWbRp4')
insert into pupil values(8, 'Oliwier', 'Jachymowski', 'ul.Doøynkowa 47/9, 35-907 £Ûdü', '502169033', 1, 'ojachymowicz@uczen.pl', 'vYP8Bbb5')
insert into pupil values(9, 'Karolina', 'Jackiewicz', 'ul.Pogodna 5/1, 35-907 £Ûdü', '603764892', 1, 'kjackiewicz@uczen.pl', 'sFL3qTPw')
insert into pupil values(10, 'Marta', 'Kalacz', 'ul.S≥awnikowska 23/1, 35-907 £Ûdü', '607823623', 1, 'mkalacz@uczen.pl', 'd44ehc8Y')
insert into pupil values(11, 'Hubert', 'Mackiewicz', 'ul.Na≥Íczowska 3/6, 35-907 £Ûdü', '602200177', 1, 'hmackiewicz@uczen.pl', 'Mnqnj9Ks')
insert into pupil values(12, 'Natalia', 'Oleszkiewicz', 'ul.Wojciechowska 9/20, 35-907 £Ûdü', '606345301', 1, 'noleszkiewicz@uczen.pl', 'arESdhAP')
insert into pupil values(13, 'Dawid', 'Paciuka', 'ul.Rumiankowa 9/19, 35-907 £Ûdü', '507186917', 1, 'dpaciuka@uczen.pl', '5DBBE5P5')
insert into pupil values(14, 'Jan', 'Radziwicz', 'ul.Gliniana 6/30, 35-907 £Ûdü', '602911731', 1, 'jradziwicz@uczen.pl', 'naQGrSYG') 
insert into pupil values(15, 'Wiktor', 'Rakuza', 'ul.Jutrzenki 1/11, 35-907 £Ûdü', '607355808', 1, 'wrakuza@uczen.pl', 'CKAhDrvw')
insert into pupil values(16, 'Nikola', 'Takowska', 'ul.Rumiankowa 2/2, 35-907 £Ûdü', '506934641', 1, 'ntakowska@uczen.pl','2BUmzcZW')
insert into pupil values(17, 'Adrian', 'Tarasiewicz', 'ul.Che≥mska 10/9, 35-907 £Ûdü', '607542352', 1, 'atarasiewicz@uczen.pl', 'sgtFRF8c')
insert into pupil values(18, 'Mateusz', 'Walentynowicz', 'ul.Strumykowa 4/10, 35-907 £Ûdü', '607341913', 1, 'mwalentynowicz@uczen.pl', '8NcEtT7b')
insert into pupil values(19, '£ukasz', 'Zacharewicz', 'ul.Pogodna 5/1, 35-907 £Ûdü', '600969717', 1, 'lzacharewicz@uczen.pl', '6adryJxC')

insert into pupil values(20, 'Martyna', 'Aciukiewicz', 'ul.Strumykowa 5/7, 35-907 £Ûdü', '606480091', 2, 'maciukiewicz@uczen.pl', 'dAUULnGg')
insert into pupil values(21, 'Amelia', 'Chodkiewicz', 'ul.Gliniana 6/21, 35-907 £Ûdü', '607246577', 2, 'achodkiewicz@uczen.pl', 'vf53YeW8')
insert into pupil values(22, 'Nina', 'Chodkiewicz', 'ul.Gliniana 6/21, 35-907 £Ûdü', '607246577', 2, 'nchodkiewicz@uczen.pl', 'zgWcgcbV')
insert into pupil values(23, 'Oliwia', 'Lerka',  'ul.JastrzÍbia 9/6, 35-907 £Ûdü', '605733146', 2, 'olerka@uczen.pl', 'Bhv3TpbM')
insert into pupil values(24, 'Stanis≥aw', 'Frankiewicz', 'ul.Krzemieniecka 3/13, 35-907 £Ûdü', '608574445', 2, 'sfrankiewicz@uczen.pl', 'fqVH9ZJq')
insert into pupil values(25, 'Sebastian', 'Ignaczak', 'ul.Wiejska 6/17, 35-907 £Ûdü', '601656755', 2, 'signaczak@uczen.pl', 'y6Cy7EHV')
insert into pupil values(26, 'Joanna', 'Kadasz', 'ul.Na≥Íczowska 9/19, 35-907 £Ûdü', '603861866', 2, 'jkadasz@uczen.pl', '5Lde8knA')
insert into pupil values(27, 'Konrad', 'Kalitowicz', 'ul.Niepodleg≥oúci 1/16, 35-907 £Ûdü', '504493416', 2, 'kkalitowicz@uczen.pl', 'N5uknwkR')
insert into pupil values(28, 'Paulina', 'Lutwin', 'ul.Diamentowa 2/8, 35-907 £Ûdü', '509562615', 2, 'plutwin@uczen.pl', 'QQ2mNk9w')
insert into pupil values(29, 'Micha≥', 'Machniewicz', 'ul.Paderewskiego 5/22, 35-907 £Ûdü', '607899616', 2, 'mmachniewicz@uczen.pl', '32n8LV23')
insert into pupil values(30, 'Maja', 'Nachiewicz', 'ul.Niepodleg≥oúci 1/15, 35-907 £Ûdü', '500284199', 2, 'mnachiewicz@uczen.pl', 'vhBFxJ4P')
insert into pupil values(31, 'Anna', 'Olejnik', 'ul.JastrzÍbia 1/25, 35-907 £Ûdü', '506626432', 2, 'aolejnik@uczen.pl', 'qAq5PusH')
insert into pupil values(32, 'Sylwia', 'Pabian', 'ul.Nasturcjowa 9/14, 35-907 £Ûdü', '602112500', 2, 'spabian@uczen.pl', 'FqpVmaaL')
insert into pupil values(33, 'Piotr', 'PodgÛrski', 'ul.Jod≥owa 4/27, 35-907 £Ûdü', '601940590', 2, 'ppodgorski@uczen.pl', 'MKYktT8T')
insert into pupil values(34, 'Antoni', 'Radziewicz', 'ul.Janowska 6/5, 35-907 £Ûdü', '504691796', 2, 'aradziewicz@uczen.pl', '2AMeamTU')
insert into pupil values(35, 'Ewelina', 'Taczko', 'ul.Gliniana 8/12, 35-907 £Ûdü', '660366768', 2, 'etaczko@uczen.pl', 'JRMYXkyB')
insert into pupil values(36, 'Pawe≥', 'Tambak', 'ul.Snopkowa 8/8, 35-907 £Ûdü', '501714439', 2, 'ptambak@uczen.pl', 'yg2UYZPb')
insert into pupil values(37, 'Iwona', 'Wagowska', 'ul.Janowska 11/4, 35-907 £Ûdü', '609427178', 2, 'iwagowska@uczen.pl', 'r6RsAtJr')
insert into pupil values(38, 'Adrianna', 'Walicka', 'ul.Cyprysowa 7/3, 35-907 £Ûdü', '506801292', 2, 'awalicka@uczen.pl', 'MdXVU2UC')
insert into pupil values(39, 'Bartosz', 'Zachariasz', 'ul.Prosta 2/8, 35-907 £Ûdü', '502289645', 2, 'bzachariasz@uczen.pl', 'PStWMfMZ')
insert into pupil values(40, 'Barbara', 'Øelazna', 'ul.Nasturcjowa 7/16, 35-907 £Ûdü', '606640359', 2, 'bzelazna@uczen.pl', 'VFHATM9y')

insert into pupil values(41, 'Artur', 'BagiÒski', 'ul.GÛrna 6/6, 35-907 £Ûdü', '604910954', 3, 'abaginski@uczen.pl', 'd7e7xStK')
insert into pupil values(42, 'Wojciech', 'Baker', 'ul.Cyprusowa 7/10, 35-907 £Ûdü', '607401443', 3, 'wbaker@uczen.pl', 'Rgc83REL')
insert into pupil values(43, 'Daniam', 'Danilewicz', 'ul.Beskidzka 6/4, 35-907 £Ûdü', '506634600', 3, 'ddanilewicz@uczen.pl', 'GsWjjq45')
insert into pupil values(44, 'Izabela', 'Elb', 'ul.Jurzenki 2/7, 35-907 £Ûdü', '503405076', 3, 'ielb@uczen.pl', 'ys99cC8n')
insert into pupil values(45, 'Aleksander', 'Fiszer', 'ul.Wilcza 5/5, 35-907 £Ûdü', '601640043', 3, 'afiszer@uczen.pl', 'KYmv5qYU')
insert into pupil values(46, 'Adam', 'Holeman', 'ul.Wojciechowska 7/8, 35-907 £Ûdü', '606396507', 3, 'aholeman@uczen.pl', 'z6ZcuZvP')
insert into pupil values(47, 'Franciszek', 'Izbicki', 'ul.Nasturcjowa 8/30, 35-907 £Ûdü', '604732688', 3, 'fizbicki@uczen.pl', 'XMbSRSt9')
insert into pupil values(48, 'Michalina', 'JadzwiÒska', 'ul.Cyprusowa 1/26, 35-907 £Ûdü', '604878355', 3, 'mjadzwinska@uczen.pl', 'JMSWrnY4')
insert into pupil values(49, 'Mi≥osz', 'Jagnoka', 'ul.Wiliowa 5/2, 35-907 £Ûdü', '502515467', 3, 'mjagnoka@uczen.pl', 'ABRqqdhP')
insert into pupil values(50, 'Mateusz', 'Kaicki', 'ul.Niepodleg≥oúci 1/2, 35-907 £Ûdü', '600837417', 3, 'mkaicki@uczen.pl', '5pdKk97B')
insert into pupil values(51, 'Grzegorz', 'Kurek', 'ul.Kameralna 9/20, 35-907 £Ûdü', '505775010', 3, 'gkurek@uczen.pl', 'k24tAQdr')
insert into pupil values(52, 'Piotr', 'Lejbowicz', 'ul.Wo≥yÒska 5/26, 35-907 £Ûdü', '504976503', 3, 'plejbowicz@uczen.pl', 'Az98VMrE')
insert into pupil values(53, 'Patrycja', 'Padzio', 'ul.G≥Íboka 7/17, 35-907 £Ûdü', '508872243', 3, 'ppadzio@uczen.pl', 'SDdbTmUC')
insert into pupil values(54, 'Magdalena', 'Paw≥owicz', 'ul.Janowska 1/15, 35-907 £Ûdü', '600866521', 3, 'mpawlowicz@uczen.pl', 'fszHJENz')
insert into pupil values(55, 'Ilona', 'Rackiewicz', 'ul.Kresowa 7/21, 35-907 £Ûdü', '509702771', 3, 'irackiewicz@uczen.pl', 'UT7AmXHr')
insert into pupil values(56, 'Aleksandra', 'Radomska', 'ul.Na≥Íczowska 7/5, 35-907 £Ûdü', '603272126', 3, 'aradomska@uczen.pl', 'uVEunhvL')
insert into pupil values(57, 'Krzysztof', 'Sacki', 'ul.Wiejska 9/10, 35-907 £Ûdü', '607585942', 3, 'ksacki@uczen.pl', 'Y4qPSDeW')
insert into pupil values(58, 'Maria', 'Tabin', 'ul.Janowska 4/5, 35-907 £Ûdü', '607794776', 3, 'mtabin@uczen.pl', 'cm9YEdDh')

insert into pupil values(59, 'Krystian', 'Abramowski', 'ul.Wyzwolenia 2/19, 35-907 £Ûdü', '506124597', 4, 'kabramowski@uczen.pl', '27jm6qf6')
insert into pupil values(60, 'Sylwia', 'Agustanowicz', 'ul.Warszawska 4/2, 35-907 £Ûdü', '508902335', 4, 'sagustanowicz@uczen.pl', 'ruDpZpNv')
insert into pupil values(61, 'Daria', 'BÍbnowska', 'ul.Ogrodowa 1/14, 35-907 £Ûdü', '502906646', 4, 'dbebnowska@uczen.pl', 'cYS2hKAx')
insert into pupil values(62, 'Zofia', 'Ceglarska', 'ul.Strumykowa 5/10, 35-907 £Ûdü', '607320525', 4, 'zceglarska@uczen.pl', 'a8NNqDSP')
insert into pupil values(63, 'Maria', 'Danowska', 'ul.Jod≥owa 1/1, 35-907 £Ûdü', '604111148', 4, 'mdanowska@uczen.pl', 'wJ2EmFMu')
insert into pupil values(64, 'Dominika', 'Filipowicz', 'ul.Diamentowa 2/29, 35-907 £Ûdü', '502277286', 4, 'dfilipowicz@uczen.pl', 'DgNtTUvn')
insert into pupil values(65, 'Aldona', 'Fronkiewicz', 'ul.Krakowska 1/4, 35-907 £Ûdü', '608100723', 4, 'afronkiewicz@uczen.pl', 'UqKq9QfP')
insert into pupil values(66, 'Marcin', 'Gajewski', 'ul.GÛrna 8/12, 35-907 £Ûdü', '604530699', 4, 'ngajewski@uczen.pl', 'C8nJGZSN')
insert into pupil values(67, 'Marcelina', 'Jadaszko', 'ul.Nasturcjowa 8/6, 35-907 £Ûdü', '605466146', 4, 'mjadaszko@uczen.pl', 'QXn5p6V9')
insert into pupil values(68, 'Szczepan', 'Jaggie≥o', 'ul.Che≥mska 7/28, 35-907 £Ûdü', '506366798', 4, 'sjaggielo@uczen.pl', 'qNNpcpna')
insert into pupil values(69, 'Justyna', 'Kaczorowska', 'ul.Wiejska 4/35, 35-907 £Ûdü', '602089720', 4, 'jkaczorowska@uczen.pl', '9bqX87MR')
insert into pupil values(70, 'Ma≥gorzata', 'Kaicka', 'ul.Janowska 1/25, 35-907 £Ûdü', '603954397', 4, 'mkaicka@uczen.pl', 'h4xkTT5w')
insert into pupil values(71, 'Anna', 'Lafajet', 'ul.Niepodleg≥oúci 6/17, 35-907 £Ûdü', '507822138', 4, 'alafajet@uczen.pl', 'Wd6nMv9W')
insert into pupil values(72, 'Kinga', 'Nachiewicz', 'ul.Wo≥yÒska 7/24, 35-907 £Ûdü', '605428306', 4, 'knachiewicz@uczen.pl', 'xeF4uwps')
insert into pupil values(73, 'Hanna', 'Olech', 'ul.Ogodowa 7/6, 35-907 £Ûdü', '604121849', 4, 'holech@uczen.pl', '9pc8jahP')
insert into pupil values(74, 'Adrian', 'Pakowski', 'ul.Cyprysowa 5/12, 35-907 £Ûdü', '504619341', 4, 'apakowski@uczen.pl', '3PcEAKNF')
insert into pupil values(75, '£ucja', 'Paropiec', 'ul.Wiejska 5/10, 35-907 £Ûdü', '600409798', 4, 'lparopiec@uczen.pl', 'QaGRt49u')
insert into pupil values(76, 'Alicja', 'Tyran', 'ul.Kameralna 9/19, 35-907 £Ûdü', '609243670', 4, 'atyran@uczen.pl', 'rusJHb85')
insert into pupil values(77, 'Bart≥omiej', 'Zajankowski', 'ul.Wilcza 4/11, 35-907 £Ûdü', '602516358', 4, 'bzajankowski@uczen.pl', 'BhPX3tRn')

insert into pupil values(78, 'Hanna', 'Adamska', 'ul.Snopkowa 2/20, 35-907 £Ûdü', '506124597', 5, 'hadamska@uczen.pl', 'cKDtC96Y')
insert into pupil values(79, 'Maciej', 'Dancewicz', 'ul.Krzemieniecka 1/2, 35-907 £Ûdü', '508902335', 5, 'mdancewicz@uczen.pl', 'hsnVmqZq')
insert into pupil values(80, 'Hubert', 'Filipowicz', 'ul.Janowska 2/30, 35-907 £Ûdü', '607320525', 5, 'hfilipowicz@uczen.pl', 'ZuPkxe7z')
insert into pupil values(81, 'Jan', 'Galik', 'ul.Prosta 7/18, 35-907 £Ûdü', '502127786', 5, 'jgalik@uczen.pl', 'C9T853FW')
insert into pupil values(82, 'Gabriela', 'Ga≥kowska', 'ul.Kresowa 9/25, 35-907 £Ûdü', '608100723', 5, 'ggalkowska@uczen.pl', 'WJcsSYGY')
insert into pupil values(83, 'Igor', 'Iwaowski', 'ul.W. Orkana 9/7, 35-907 £Ûdü', '604530699', 5, 'iwwaowski@uczen.pl', 'C3FXcMYA')
insert into pupil values(84, 'Krystian', 'Jab≥oÒski', 'ul.Cyprysowa 6/29, 35-907 £Ûdü', '608648562', 5, 'kjablonski@uczen.pl', 'BqFkaBTD')
insert into pupil values(85, 'Agata', 'Jag≥owska', 'ul.Beskidzka 8/27, 35-907 £Ûdü', '605466154', 5, 'ajaglowska@uczen.pl', '7t4tw6nE')
insert into pupil values(86, 'Piotr', 'Kalacz', 'ul.Prosta 6/3, 35-907 £Ûdü', '602089720', 5, 'pkalacz@uczen.pl', 'J3WYJqDM')
insert into pupil values(87, 'Bart≥omiej', 'Lamachowski', 'ul.Janowska 1/11, 35-907 £Ûdü', '603954397', 5, 'blamachowski@uczen.pl', 'HDg2GwpL')
insert into pupil values(88, 'Mateusz', 'Lauryn', 'ul.Krzemieniecka 5/23, 35-907 £Ûdü', '507822138', 5, 'mlauryn@uczen.pl', 'LzNnwZsQ')
insert into pupil values(89, 'Sandra', 'Machacka', 'ul.Rumiankowa 3/15, 35-907 £Ûdü', '605428306', 5, 'smachacka@uczen.pl', 'WUXMU6A5')
insert into pupil values(90, 'Pawe≥', 'Macian', 'ul.Wiejska 8/19, 35-907 £Ûdü', '504121849', 5, 'pmacian@uczen.pl', 'YA52rvgY')
insert into pupil values(91, 'Ignacy', 'Namietko', 'ul.Jutrzenki 7/7, 35-907 £Ûdü', '502301867', 5, 'inametko@uczen.pl', 'Z3YNr77N')
insert into pupil values(92, 'Wiktor', 'Okowicz', 'ul.Wyzwolenia 1/15, 35-907 £Ûdü', '602352749', 5, 'wokowicz@uczen.pl', 'g95vgTRG')
insert into pupil values(93, 'Alicja', 'Pacenek', 'ul.Janowska 7/21, 35-907 £Ûdü', '600409748', 5, 'apacenek@uczen.pl', 'w8Bn38Y9')
insert into pupil values(94, 'Dawid', 'Pacuch', 'ul.Rumiankowa 4/4, 35-907 £Ûdü', '609243670', 5, 'dpacuch@uczen.pl', '4bBWvqHu')
insert into pupil values(95, 'Agnieszka', 'Rajska', 'ul.Che≥mska 7/12, 35-907 £Ûdü', '607831690', 5, 'arajska@uczen.pl', '7UXL8yu9')
insert into pupil values(96, 'Wojciech', 'Sabal', 'ul.Niepodleg≥oúci 8/7, 35-907 £Ûdü', '605401655', 5, 'wsabal@uczen.pl', '2wX49xBP')
insert into pupil values(97, '£ukasz', 'Sa≥ata', 'ul.Ogrodowa 2/3, 35-907 £Ûdü', '609062076', 5, 'lsalata@uczen.pl', 'SwzJGYP2')
insert into pupil values(98, 'Krzysztof', 'Tarlecki', 'ul.Krakowska 9/3, 35-907 £Ûdü', '600476801', 5, 'ktarlecki@uczen.pl', 'wPwhKzBy')
insert into pupil values(99, 'Filip', 'Zadrowski', 'ul.Warszawska 20/2, 35-907 £Ûdü', '505646238', 5, 'fzadrowski@uczen.pl', 'q3QXB43c')

insert into pupil values(100, 'Milena', 'Adamowicz', 'ul.G≥Íboka 9/20, 35-907 £Ûdü', '606182742', 6, 'madamowicz@uczen.pl', 'DCuATFbk')
insert into pupil values(101, 'Robert', 'BabiÒski', 'ul.Krzemieniecka 7/4, 35-907 £Ûdü', '503848711', 6, 'rbabinski@uczen.pl', 'muuxGCH5')
insert into pupil values(102, 'Dorota', 'Bajkowska', 'ul.Janowska 6/3, 35-907 £Ûdü', '604269808', 6, 'dbajkowska@uczen.pl', 'P7jnDgeN')
insert into pupil values(103, 'Edyta', 'Chmara', 'ul.G≥Íboka 2/11, 35-907 £Ûdü', '609343834', 6, 'echmara@uczen.pl', 'GAXEN3e5')
insert into pupil values(104, 'Aleksandra', 'Gabia', 'ul.Krakowska 7/4, 35-907 £Ûdü', '608258816', 6, 'agabia@uczen.pl', '7fECyfca')
insert into pupil values(105, 'Beata', 'Ignaczak', 'ul.Ogrodowa 1/26, 35-907 £Ûdü', '509462852', 6, 'bignaczak@uczen.pl', 'J8nVy2sV')
insert into pupil values(106, 'Patrycja', 'Kaczan', 'ul.Jutrzenki 2/14, 35-907 £Ûdü', '602836975', 6, 'pkaczan@uczen.pl', '7vjMzYNA')
insert into pupil values(107, 'Monika', 'Kaleta', 'ul.Warszawska 7/9, 35-907 £Ûdü', '607172828', 6, 'mkaleta@uczen.pl', 'WwSBWXZg')
insert into pupil values(108, 'Ewa', 'Latowska', 'ul.Diamentowa 4/16, 35-907 £Ûdü', '505531361', 6, 'elatowska@uczen.pl', '67y5jAWd')
insert into pupil values(109, 'Tomasz', 'Nadolny', 'ul.Snopkowa 7/9, 35-907 £Ûdü', '609503848', 6, 'tnadolny@uczen.pl', 'EmxKpkpf')
insert into pupil values(110, 'Micha≥', 'Napolski', 'ul.Kresowa 5/15, 35-907 £Ûdü', '608919796', 6, 'mnapolski@uczen.pl', '5XckDXzJ')
insert into pupil values(111, 'Joanna', 'Olszewska', 'ul.Janowska 5/16, 35-907 £Ûdü', '600676596', 6, 'jolszewska@uczen.pl', '9csemntw')
insert into pupil values(112, 'Andrzej', 'Sakowski', 'ul.W. Orkana 3/8, 35-907 £Ûdü', '606864737', 6, 'asakowski@uczen.pl', 'KpSutkDe')
insert into pupil values(113, 'Adam', 'Tarnowski', 'ul.Niepodleg≥oúci 6/16, 35-907 £Ûdü', '504616118', 6, 'atarnowski@uczen.pl', 'NZaA8CcL')
insert into pupil values(114, 'Justyna', 'Uminowicz', 'ul.Warszawska 3/8, 35-907 £Ûdü', '505038627', 6, 'juminowicz@uczen.pl', '4mLLRrFF')
insert into pupil values(115, 'Weronika', 'Wala', 'ul.Krakowska 8/1, 35-907 £Ûdü', '608851219', 6, 'wwala@uczen.pl', 'nthccrkR')
insert into pupil values(116, 'Katarzyna', 'Walenta', 'ul.Ogrodowa 3/4, 35-907 £Ûdü', '607542352', 6, 'kwalenta@uczen.pl', 'UUYGq7wf')
insert into pupil values(117, 'Karol', 'Zalewski', 'ul.Prosta 7/5, 35-907 £Ûdü', '609566846', 6, 'kzalewski@uczen.pl', 'NCf5eakm')
