--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: characters; Type: TABLE; Schema: public
--

CREATE TABLE public.characters (
    id integer,
    name character varying(50),
    job character varying(100),
    house character varying(50),
    wand character varying(250),
    patronus character varying(250),
    species character varying(50),
    blood_status character varying(50),
    hair_color character varying(50),
    eye_color character varying(50),
    loyalty character varying(250),
    skills character varying(250),
    birth character varying(100),
    death character varying(100)
);



--
-- Name: hogwarts_staff; Type: TABLE; Schema: public
--

CREATE TABLE public.hogwarts_staff (
    name character varying(50),
    subject_or_position character varying(100),
    background character varying(1000)
);


--
-- Name: magical_creatures; Type: TABLE; Schema: public
--

CREATE TABLE public.magical_creatures (
    name character varying(50),
    breed character varying(50),
    owner character varying(50)
);



--
-- Name: philosophers_stone_dialogue; Type: TABLE; Schema: public
--

CREATE TABLE public.philosophers_stone_dialogue (
    "character" character varying(100),
    dialogue character varying(1000)
);




--
-- Name: potions; Type: TABLE; Schema: public
--

CREATE TABLE public.potions (
    name character varying(50),
    known_ingredients character varying(200),
    effect character varying(150),
    characteristics character varying(200),
    difficulty_level character varying(50)
);



--
-- Name: spells; Type: TABLE; Schema: public
--

CREATE TABLE public.spells (
    name character varying(50),
    incantation character varying(50),
    type character varying(200),
    effect character varying(250),
    light character varying(50)
);


--
-- Data for Name: characters; Type: TABLE DATA; Schema: public
--

COPY public.characters (id, name, job, house, wand, patronus, species, blood_status, hair_color, eye_color, loyalty, skills, birth, death) FROM stdin;
1	Harry James Potter	Student	Gryffindor	11"  Holly  phoenix feather	Stag	Human	Half-blood	Black	Bright green	Albus Dumbledore | Dumbledore's Army | Order of the Phoenix | Hogwarts School of Witchcraft and Wizardry	Parseltongue| Defence Against the Dark Arts | Seeker	31 July 1980	\N
2	Ronald Bilius Weasley	Student	Gryffindor	12" Ash unicorn tail hair 	Jack Russell terrier	Human	Pure-blood	Red	Blue	Dumbledore's Army | Order of the Phoenix | Hogwarts School of Witchcraft and Wizardry	Wizard chess | Quidditch goalkeeping	1 March 1980	\N
68	Salazar Slytherin	Founder of Slytherin	Slytherin	snakewood, Basilisk horn	Unknown	Human	Pure-blood	Grey	Dark	\N	Accomplished Legilimens and one of the first recorded Parselmouths	\N	\N
5	Rubeus Hagrid	Keeper of Keys and Grounds | Professor of Care of Magical Creatures 	Gryffindor	16"  Oak unknown core	None	Half-Human/Half-Giant	Part-Human (Half-giant)	Black	Black	Albus Dumbledore | Order of the Phoenix | Hogwarts School of Witchcraft and Wizardry	Resistant to stunning spells| above average strength | crossbowmanship	6 December 1928	\N
78	Helga Hufflepuff	Founder of Hufflepuff	Hufflepuff	Unknown	Unknown	Human	Pure-blood or half-blood	Brown	Blue	\N	Food-related Charms. Many traditional Hogwarts recipes originated with her	\N	\N
16	Peter Pettigrew	The Servant of Lord Voldemort	Gryffindor	9 " Chestnut dragon heartstring	None	Human	Half-blood or pure-blood	Colourless and balding	Blue	Lord Voldemort| Death Eaters	Animagus	\N	1 July 1981
30	Minerva McGonagall	Professor of Transfiguration | Head of Gryffindor	Gryffindor	9 " Fir dragon heartstring	Cat	Human	Half-blood	Black	Green	Albus Dumbledore | Order of the Phoenix | Hogwarts School of Witchcraft and Wizardry	Animagus 	\N	\N
3	Hermione Jean Granger	Student	Gryffindor	10 "  vine wood dragon heartstring	Otter	Human	Muggle-born	Brown	Brown	Dumbledore's Army | Order of the Phoenix | Hogwarts School of Witchcraft and Wizardry	Almost everything	\N	\N
55	Regulus Arcturus Black	\N	Slytherin	Unknown	Non-corporeal	Human	Pure-blood	Black	\N	\N	Seeker	\N	\N
63	Bloody Baron	Slytherin House Ghost	Slytherin	Unknown	Unknown	Ghost	Pure-blood or half-blood	\N	\N	\N	Controlling Peeves	\N	\N
36	Gilderoy Lockhart	Defence Against the Dark Arts(1992-1993)	Ravenclaw	9" Cherry dragon heartstring	Non-corporeal	Human	Half-blood	Blond	Blue	\N	\N	26 January 1964	\N
46	Severus Snape	Professor of Potions | Head of Slytherin	Slytherin	Unknown	Doe	Human	Half-blood	Black	Black	\N	Extremely skilled at potions and Occlumency	9 January 1960	2 May, 1998
58	Tom Marvolo Riddle	Student	Slytherin	13 " Yew phoenix feather core	Unknown	Human	Half-blood	Bald	Scarlet 	\N	Dark Lord, Outstanding manipulation, Parseltongue, Heir of Slytherin, Dark magic, Inferi creation and control	31 December 1926	2 May, 1998
37	Filius Flitwick	Professor of Charms | Head of Ravenclaw	Ravenclaw	Unknown	Non-corporeal	Human(goblin ancestry)	Part-Goblin	White	\N	\N	Charms	17 October 1958	\N
38	Sybill Patricia Trelawney	Professor of Divination	Ravenclaw	9    hazel unicorn hair core	Non-corporeal	Human	Half-blood	\N	\N	\N	A Seer, though the gift is unpredictable and unconscious	9 March 1962	\N
50	Bellatrix Lestrange	\N	Slytherin	12 " Walnut dragon heartstring	\N	Human	Pure-blood	Black	\N	Lord Voldemort  | Death Eaters	She is a duellist of great skill and an experienced Occlumens	\N	2 May, 1998
51	Dolores Jane Umbridge	Professor of Defence Against the Dark Arts | Department of Magical Law Enforcement	Slytherin	8" Birch dragon heartstring	Cat	Human	Half-blood	Iron grey	\N	Ministry of Magic	Her punishment quill is of her own invention	\N	\N
52	Horace Eugene Flaccus Slughorn	Professor of Potions 	Slytherin	10 " Cedar dragon heartstring fairly flexible	Non-corporeal	Human	Pure-blood or half-blood	Bald	Gooseberry	\N	Accomplished Occlumens, expert Potioneer, advanced self-transfiguration	\N	\N
53	Lucius Malfoy	School Governor	Slytherin	Elm and dragon heartstring	Unknown	Human	Pure-blood	White-blond	Grey	Lord Voldemort  | Death Eaters	Skilled duellist and potioneer	\N	\N
54	Narcissa Malfoy	\N	Slytherin	Unknown	Unknown	Human	Pure-blood	Blonde	Blue	Lord Voldemort  | Death Eaters	\N	\N	\N
60	Rodolphus Lestrange	\N	Slytherin	Unknown	Unknown	Human	Pure-blood	Dark	Dark	Lord Voldemort  | Death Eaters	\N	\N	\N
62	Graham Montague	Student	Slytherin	Unknown	Unknown	Human	Pure-blood or half-blood	Brown	Brown	\N	Quidditch captain, Chaser	\N	\N
31	Molly Weasley	\N	Gryffindor	Unknown	Unknown	Human	Pure-blood	Red	Bright brown	Order of the Phoenix	Household spells| healing magic	\N	\N
32	Arthur Weasley	Head of the Misuse of Muggle Artefacts Office	Gryffindor	Unknown	Weasel	Human	Pure-blood	Red	Green	Order of the Phoenix| British Ministry of Magic	Muggle world works	\N	\N
69	Godric Gryffindor	Founder of Gryffindor	Gryffindor	Unknown	Unknown	Human	Pure-blood or half-blood	Red	Green	\N	The most accomplished duellist of his time	\N	\N
70	Rowena Ravenclaw	Founder of Ravenclaw	Ravenclaw	Unknown	Unknown	Human	Pure-blood or half-blood	Black	Dark	\N	Extremely skilled witch, known for her intelligence and wisdom	\N	\N
75	Firenze	Professor of Divination	\N	\N	\N	Centaur	\N	White-blond	Astonishingly blue	\N	\N	\N	\N
72	Cuthbert Binns	Professor of History of Magic 	\N	Unknown	Unknown	Ghost	\N	White (balding)	Black	\N	Boring a class with facts that might be interesting if anyone else was giving the lesson	\N	\N
80	Helena Ravenclaw	Ravenclaw House Ghost	Ravenclaw	Unknown	Unknown	Ghost	Pure-blood or half-blood	Black	Grey	\N	\N	\N	\N
73	Barty Crouch Jr.	Professor of Defence Against the Dark Arts (as Alastor Moody) 	\N	Unknown	Unknown	Human	Pure-blood or half-blood	Straw blond	Pale, freckled	Lord Voldemort  | Death Eaters	Skilled potioneer	\N	\N
83	Newton Scamander	Employee in the Beast Division of the Department for the Regulation and Control of Magical Creatures	Hufflepuff	Unknown	Unknown	Human	Pure-blood or half-blood	Red brown	Blue	\N	Magizoology, Order of Merlin, Second Class	24 February 1897	\N
97	Alice Longbottom	Auror	\N	Unknown	Unknown	Human	Pure-blood	Blonde	\N	Original Order of the Phoenix	Auror	\N	\N
102	Amos Diggory	Employee of the Department for the Regulation and Control of Magical Creatures[	\N	Unknown	Non-corporeal	Human	Pure-blood or half-blood	Brown	Ruddy	Minister of Magic	Works for the Department for the Regulation and Control of Magical Creatures	\N	\N
82	Pomona Sprout	Professor of Herbology | Head of Hufflepuff House	Hufflepuff	Unknown	Non-corporeal	Human	Pure-blood or half-blood	\N	Grey	\N	Herbology	\N	\N
110	Marlene McKinnon	\N	\N	Unknown	Unknown	Human	\N	Red	Brown	Original Order of the Phoenix	\N	\N	1 July 1981
111	Fabian Prewett	\N	\N	Unknown	Unknown	Human	Pure-blood	Red	Grey	Original Order of the Phoenix	Duelling	\N	1 July 1981
112	Gideon Prewett	\N	\N	Unknown	Unknown	Human	Pure-blood	Red 	Dark Grey	Original Order of the Phoenix	Duelling	\N	1 July 1981
114	Edgar Bones	\N	Hufflepuff	Unknown	Unknown	Human	Pure-blood or half-blood	Reddish-brown	Grey	Original Order of the Phoenix	Said to be a great wizard	\N	1 July 1981
115	Dorcas Meadowes	\N	\N	Unknown	Unknown	Human	\N	Black	Brown	Original Order of the Phoenix	\N	\N	1 July 1981
116	Benjy Fenwick	\N	\N	Unknown	Unknown	Human	\N	Black	Black	Original Order of the Phoenix	\N	\N	1 July 1981
117	Madame Olympe Maxime	Headmistress of Beauxbatons Academy of Magic	Beauxbatons Academy of Magic	Unknown	Unknown	Half-Human/Half-Giant	Part-Human (Half-giant)	Brown	Black	\N	An  excellent dancer , in the words of Dumbledore himself	\N	\N
139	Dobby	Malfoy family's house-elf (? - 1993),\r\nHogwarts kitchens worker (December 1994 - 1998)	\N	\N	\N	House elf	\N	Green	\N	\N	A type of magic specific to house-elves, performed without a wand which includes the ability to apparate, disarm and make objects levitate	\N	1 July 1981
122	Dudley Dursley	\N	\N	\N	\N	Human 	Muggle	Blond	Blue	\N	\N	 23 June 1980	\N
136	Wilhelmina Grubbly-Plank	Substitute professor of Care of Magical Creatures at Hogwarts	\N	Unknown	Non-corporeal	Human 	\N	Grey	\N	Hogwarts School of Witchcraft and Wizardry	\N	\N	\N
140	Kreacher	\r\nBlack family's house-elf (?-1996), \r\nHarry Potter's house-elf, \r\nHogwarts kitchen worker 	\N	\N	\N	House elf	\N	White	\N	\N	Magic performed without a wand which includes the ability to apparate, disarm and make objects levitate	\N	\N
22	Angelina Johnson	Student	Gryffindor	Unknown	Unknown	Human	Unknown	Brown	Brown	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Chaser	\N	\N
33	Quirinus Quirrell	Defence Against the Dark Arts(1991-1992)	Ravenclaw	9" Alder unicorn hair bendy	Non-corporeal	Human	Half-blood	\N	\N	Lord Voldemort	Learned in the theory of Defensive Magic| less adept in the practise	26 September 1970	4 June 1992
100	Cornelius Oswald Fudge	Minister for Magic	\N	Unknown	Non-corporeal	Human	Pure-blood or Half-blood	Grey	\N	Minister of Magic	Turning a blind eye to the continuing threat of Dark Magic in the name of keeping up morale	\N	\N
103	Dedalus Diggle	\N	\N	Unknown	Non-corporeal	Human	Pure-blood or half-blood	\N	\N	Order of the Phoenix	An enthusiastic volunteer for the Order and a helpful escort for Harry and his relatives	\N	\N
106	Aberforth Dumbledore	Owner and Barman of the Hog's Head Inn	\N	Unknown	Goat	Human	Half-blood	Grey	Bright Blue	Order of the Phoenix	Bartending, caring for Ariana	\N	\N
120	Petunia Dursley	\N	\N	\N	\N	Human 	Muggle	Blonde	\N	\N	\N	\N	\N
4	Albus Percival Wulfric Brian Dumbledore	Headmaster	Gryffindor	15" Elder Thestral tail hair core	Phoenix	Human	Half-blood	Silver| formerly auburn	Blue	Dumbledore's Army | Order of the Phoenix | Hogwarts School of Witchcraft and Wizardry	Considered by many to be one of the most powerful wizards of his time	\N	30 June, 1997 
6	Neville Longbottom	Student	Gryffindor	13" Cherry unicorn hair	Non-corporeal	Human	Pure-blood	Blond	\N	Dumbledore's Army | Order of the Phoenix | Hogwarts School of Witchcraft and Wizardry	Herbology	\N	\N
7	Fred Weasley	Student	Gryffindor	Unknown	Unknown	Human	Pure-blood	Red	Brown	Dumbledore's Army | Order of the Phoenix | Hogwarts School of Witchcraft and Wizardry	Beater	\N	2 May, 1998
8	George Weasley	Student	Gryffindor	Unknown	Unknown	Human	Pure-blood	Red	Brown	Dumbledore's Army | Order of the Phoenix | Hogwarts School of Witchcraft and Wizardry	Beater	\N	\N
9	Ginevra (Ginny) Molly Weasley	Student	Gryffindor	Unknown	Horse	Human	Pure-blood	Red	Bright brown	Dumbledore's Army | Order of the Phoenix | Hogwarts School of Witchcraft and Wizardry	Chaser| Bat-Bogey hex	\N	\N
10	Dean Thomas	Student	Gryffindor	Unknown	Unknown	Human	Muggle-born	Black	Brown	Dumbledore's Army | Hogwarts School of Witchcraft and Wizardry	Chaser	\N	\N
11	Seamus Finnigan	Student	Gryffindor	Unknown	Fox	Human	Half-blood	Sandy	\N	Dumbledore's Army | Hogwarts School of Witchcraft and Wizardry	Pyrotechnics	\N	\N
12	Lily J. Potter	\N	Gryffindor	10 "  Willow  unknown core	Doe	Human	Muggle-born	Auburn	Bright green	Order of the Phoenix	\N	\N	31 October, 1981
13	James Potter	\N	Gryffindor	11"  Mahogany  unknown core	Stag	Human	Pure-blood	Black	Hazel	Order of the Phoenix	Animagus| Seeker	\N	31 October, 1981
14	Sirius Black	\N	Gryffindor	Unknown	Unknown	Human	Pure-blood	Black	Grey	Order of the Phoenix	Animagus| nonverbal magic| Charms	\N	18 June, 1996
15	Remus John Lupin	Professor of Defence Against the Dark Arts 	Gryffindor	10 " Cypress unicorn hair	Wolf	Werewolf	Half-blood	Light brown flecked with grey	Green	Order of the Phoenix	Exceptionally gifted in Defence Against the Dark Arts	\N	2 May, 1998
17	Percy Ignatius Weasley	Student|Prefect|  Personal assistant to Barty Crouch Snr 	Gryffindor	Unknown	Unknown	Human	Pure-blood	Red	Blue	Order of the Phoenix| Hogwarts School of Witchcraft and Wizardry |British Ministry of Magic	Intelligent| hard-working| a model student	\N	\N
18	(Bill) William Arthur Weasley	Curse-Breaker for Gringotts Bank	Gryffindor	Unknown	Unknown	Human (Werewolf traits)	Pure-blood	Red	Blue	Order of the Phoenix	Highly skilled curse-breaker for Gringotts Wizarding Bank| very intelligent| past Hogwarts Head Boy	\N	\N
19	Charles Weasley	Dragonologist	Gryffindor	12"  Ash unicorn tail hair	Unknown	Human	Pure-blood	Red	Grey	Order of the Phoenix | Gringotts Wizarding Bank	Highly skilled dragon trainer| one-time Gryffindor Seeker	\N	\N
20	Lee Jordan 	Student	Gryffindor	Unknown	Unknown	Human	Pure-blood or half-blood	Black	Brown	Dumbledore's Army | Order of the Phoenix | Hogwarts School of Witchcraft and Wizardry	Quidditch commentary | broadcasting	\N	\N
21	Oliver Wood	Student	Gryffindor	Unknown	Unknown	Human	Pure-blood or Half-blood	\N	\N	Hogwarts School of Witchcraft and Wizardry	Keeper|  Captain of the Gryffindor Quidditch team	\N	\N
23	Katie Bell	Student	Gryffindor	Unknown	Unknown	Human	Pure-blood or half-blood	Brown	Brown	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Chaser	\N	\N
24	Alicia Spinnet	Student	Gryffindor	Unknown	Unknown	Human	Pure-blood or half-blood	Brown	Brown	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Chaser	\N	\N
25	Lavender Brown	Student	Gryffindor	Unknown	Unknown	Human	Pure-blood	Blond	Blue	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Divination	\N	2 May, 1998
26	Parvati Patil	Student	Gryffindor	Unknown	Unknown	Human	Pure-blood or half-blood	Dark	Dark	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Divination	\N	\N
27	Romilda Vane	Student	Gryffindor	Unknown	Unknown	Human	Pure-blood or half-blood	Black	Dark	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Spiking Chocolate Cauldrons with love potion	\N	\N
28	Colin Creevey	Student	Gryffindor	Unknown	Unknown	Human	Muggle-born	Mousy	\N	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Photography	\N	2 May, 1998
29	Cormac McLaggen	Student	Gryffindor	Unknown	Unknown	Human	Pure-blood or half-blood	Blond	\N	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Quidditch Keeper	\N	\N
34	Cho Chang	Student	Ravenclaw	Unknown	Swan	Human	Pure-blood or half-blood	Black	Dark	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Seeker	\N	\N
35	Luna Lovegood	Student	Ravenclaw	Unknown	Hare	Human	Pure-blood or half-blood	Dirty-blonde	Pale silvery	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Spotting Nargles	\N	\N
39	Garrick Ollivander	Wandmaker	Ravenclaw	12 " Hornbeam dragon heartstring	Non-corporeal	Human	Half-blood	\N	Silvery	\N	An incomparable understanding of wandcraft	\N	\N
40	Myrtle Elizabeth Warren (Moaning Myrtle)	Student	Ravenclaw	Unknown	Unknown	Ghost	Muggle-born	\N	\N	\N	\N	\N	13 June, 1943
41	Padma Patil	Student	Ravenclaw	Unknown	Non-corporeal	Human	Pure-blood or half-blood	Dark	Dark	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Prefect	\N	\N
42	Michael Corner	Student	Ravenclaw	Unknown	Squirrel	Human	Half-blood	Black	Brown	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Potions	\N	\N
43	Marietta Edgecombe	Student	Ravenclaw	Unknown	Unknown	Human	Pure-blood or half-blood	Reddish-blonde	Grey	\N	Covering up the spots that blight her face after betraying Dumbledore's Army	\N	\N
44	Terry Boot	Student	Ravenclaw	Unknown	Unknown	Human	Pure-blood or half-blood	\N	\N	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Potions, also knowledgable about Charms	\N	\N
45	Anthony Goldstein	Student	Ravenclaw	Unknown	Non-corporeal	Human	Half-blood	Blonde	Grey	Dumbledore's Army |Hogwarts School of Witchcraft and Wizardry	Prefect	\N	\N
47	Draco Malfoy	Student	Slytherin	10" Hawthorn unicorn hair	Unknown	Human	Pure-blood	White-blond	Grey	\N	Prefect, Seeker	\N	\N
48	Vincent Crabbe	Student	Slytherin	Unknown	Unknown	Human	Pure-blood	Black	Black	\N	Beater	\N	2 May, 1998
138	Gellert Grindelwald	Revolutionary leader(c. 1920s[6]   1945)	\N	15", Elder, Thestral tail hair core	\N	Human 	Pure-blood or half-blood	Blond	Blue	Gellert Grindelwald's Acolytes	Duelling	\N	 7March 1998
49	Gregory Goyle	Student	Slytherin	Unknown	Unknown	Human	Pure-blood	Brown	\N	\N	Beater	\N	\N
56	Pansy Parkinson	Student	Slytherin	Unknown	Unknown	Human	Pure-blood or half-blood	\N	\N	\N	Prefect	\N	\N
57	Blaise Zabini	Student	Slytherin	Unknown	Unknown	Human	Pure-blood or half-blood	Black	Brown	\N	Chaser	\N	\N
59	Theodore Nott	Student	Slytherin	Unknown	Unknown	Human	Pure-blood	Brown	\N	\N	\N	\N	\N
61	Millicent Bulstrode	Student	Slytherin	Unknown	Unknown	Human	Half-blood	Black	\N	\N	\N	\N	\N
64	Marcus Flint	Student	Slytherin	Unknown	Unknown	Human	Pure-blood or half-blood	Black	\N	\N	Chaser, Captain	\N	\N
65	Penelope Clearwater	Student	Ravenclaw	Unknown	Non-corporeal	Human	Muggle-born or half-blood[	Blonde	\N	\N	Prefect	\N	\N
66	Roger Davies	Student	Ravenclaw	Unknown	Unknown	Human	\N	Dark	Dark	\N	Quidditch Captain, Chaser	\N	\N
67	Marcus Belby	Student	Ravenclaw	Unknown	Unknown	Human	Pure-blood or half-blood	Brown	Dark	\N	\N	\N	\N
71	Nicholas de Mimsy-Porpington	Gryffindor House Ghost	Gryffindor	Unknown	Unknown	Ghost	\N	Grey	\N	\N	\N	\N	31 October, 1492
76	Alecto Carrow	Professor of Muggle Studies	Slytherin	Unknown	Unknown	Human	Pure-blood or half-blood	\N	\N	Lord Voldemort  | Death Eaters	Spreading anti-Muggle propaganda	\N	\N
77	Amycus Carrow	Professor of Dark Arts	Slytherin	Unknown	Unknown	Human	Pure-blood or half-blood	\N	\N	Lord Voldemort  | Death Eaters	Cruciatus Curse	\N	\N
81	Nymphadora Tonks	Auror	Hufflepuff	Unknown	Jack rabbit, Wolf	Human	Half-blood	Variable	Variable	Ministry of Magic | Order of the Phoenix	Talented Auror, Metamorphmagus	\N	2 May, 1998
84	Cedric Diggory	Student	Hufflepuff	12 ", Ash, unicorn hair	Unknown	Human	Pure-blood	Dark	Grey	\N	Skilled Seeker	\N	24 June, 1995
85	Justin Finch-Fletchley	Student	Hufflepuff	Unknown	Non-corporeal	Human	Muggle-born	Red	\N	Dumbledore's Army	\N	\N	\N
86	Zacharias Smith	Student	Hufflepuff	Unknown	Unknown	Human	Pure-blood or half-blood	Blonde	\N	Dumbledore's Army	Chaser	\N	\N
87	Hannah Abbott	Student	Hufflepuff	Unknown	Non-corporeal	Human	Half-blood	Blonde	Brown	Dumbledore's Army	Defensive spells, learned with Dumbledore's Army	\N	\N
88	Ernest Macmillan	Student	Hufflepuff	Unknown	Boar	Human	Pure-blood	Blond	\N	Dumbledore's Army	Revising, being a Prefect, getting the wrong end of the stick	\N	\N
89	Susan Bones	Student	Hufflepuff	Unknown	Unknown	Human	Half-blood	\N	\N	Dumbledore's Army	Defensive spells, learned with Dumbledore's Army	\N	\N
90	Walden Macnair	Executioner for the Committee for the Disposal of Dangerous Creatures	Slytherin	Unknown	Unknown	Human	Pure-blood or half-blood	Black	\N	Lord Voldemort  | Death Eaters	Liaising with giants	\N	\N
91	Augustus Rookwood	Unspeakable	Slytherin	Unknown	None	Human	Pure-blood or half-blood	Brown/greying	\N	Lord Voldemort  | Death Eaters	Spying for Lord Voldemort	\N	\N
92	Antonin Dolohov	Death Eater	Slytherin	Unknown	None	Human	Pure-blood or Half-blood	Dark	\N	Lord Voldemort  | Death Eaters	Duelling. Fought and killed Molly Weasley's brothers and Remus Lupin	\N	\N
93	Corban Yaxley	Head of the Department of Magical Law Enforcement	Slytherin	Unknown	None	Human	Pure-blood or Half-blood	Blonde	Blue	Lord Voldemort  | Death Eaters	Imperius curse, undercover work	\N	\N
95	Kingsley Shacklebolt	Auror  | Minister for Magic	\N	Unknown	Lynx	Human	Pure-blood	Bald	Black	Order of the Phoenix	Exceptionally skilled duellist and Auror	\N	\N
96	Alastor Moody	Auror 	\N	Unknown	Non-corporeal	Human	Pure-blood	Grey	One dark, one electric blue	Order of the Phoenix	A highly accomplished Auror and an outstanding duellist, also skilled in non-verbal magic	\N	27 July, 1997
98	Frank Longbottom	Auror	Gryffindor	Inherited by his son, Neville. It was broken in battle at the Department of Mysteries.	Unknown	Human	Pure-blood	Blonde	\N	Original Order of the Phoenix	Auror	\N	\N
99	Rufus Scrimgeour	Head of Auror Office| Minister for Magic	\N	Unknown	Non-corporeal	Human	\N	Tawny	Yellowish	Minister of Magic	Highly regarded as a skilled Auror	\N	1 August, 1997
101	Barty Crouch Sr.	Head of the Department of International Magical Cooperation	\N	Unknown	Non-corporeal	Human	Pure-blood	Grey	\N	Minister of Magic	Multilingual, able to fight the Imperius curse	\N	27 May, 1995
104	Elphias Doge	Special Advisor to the Wizengamot	\N	Unknown	Non-corporeal	Human	Pure-blood	Silver	Grey/Blue[	Order of the Phoenix	Writing	\N	\N
105	Fleur Isabelle Delacour	Part-time at Gringotts Wizarding Bank	Beauxbatons Academy of Magic	9 ", Rosewood, veela hair	Non-corporeal	Human	Quarter-Veela	Silvery-blonde	Dark blue[	Order of the Phoenix	part Veela, and therefore possesses some of their magical powers. She was also selected to compete in the Triwizard Tournament	\N	\N
107	Mundungus Fletcher	Dealer of wizarding artifacts	\N	Unknown	Non-corporeal	Human	Half-blood[	Ginger	Brown	Order of the Phoenix	Gathering information for the Order, dealing in stolen cauldrons, 'acquiring' the odd Muggle car	\N	\N
108	Sturgis Podmore	Advance Guard	\N	Unknown	Unknown	Human	Pure-blood or half-blood	Straw-coloured	Brown	Order of the Phoenix	Carrying out guard duty for the Order	\N	\N
109	Hestia Jones	Advance Guard	\N	Unknown	Unknown	Human	Pure-blood or half-blood	Black	\N	Order of the Phoenix	Carrying out escort missions for the Order	\N	\N
118	Gabrielle Delacour	\N	Beauxbatons Academy of Magic	Unknown	Unknown	Human 	Quarter-Veela	Silvery-blonde	\N	\N	part Veela and therefore may possess some of their magical powers	\N	\N
119	Viktor Krum	Seeker for the Bulgarian National Quidditch team	Durmstrang Institute	10 ", Hornbeam, dragon heartstring	Unknown	Human 	Pure-blood or half-blood	Dark	Dark	\N	One of the best Seekers in the world	\N	\N
79	Fat Friar	Hufflepuff House Ghost	Hufflepuff	Unknown	Unknown	Ghost	\N	Brown	\N	\N	Curing peasants of the pox	\N	\N
74	Charity Burbage	Professor of Muggle Studies	\N	Unknown	Non-corporeal	Human	Pure-blood or half-blood	Blonde	\N	\N	Teaching and studying the Muggle world	\N	1 July 1981
94	Igor Karkaroff	Headmaster of Durmstrang Institute	\N	Unknown	None	Human	Pure-blood or Half-blood	Silver| formerly black	\N	\N	Skilled in the Dark Arts	\N	31 July 1996
113	Emmeline Vance	Advance Guard	\N	Unknown	Unknown	Human	\N	\N	\N	Order of the Phoenix	\N	\N	\N
121	Vernon Dursley	Director at Grunnings	\N	\N	\N	Human 	Muggle	Black	\N	\N	Schmoozing clients, pretending magic doesn't exist	\N	\N
123	Marge Dursley	Dog breeder	\N	\N	\N	Human 	Muggle	Grey	\N	\N	Breeding bulldogs	\N	\N
124	Dennis Creevey	Student	Gryffindor	Unknown	Unknown	Human 	Muggle-born	Mousy brown	\N	Dumbledore's Army	\N	\N	\N
125	Albus Severus Potter	Student	Slytherin	Unknown	Unknown	Human 	Half-blood	Jet-black	Bright green	\N	\N	\N	\N
126	Scorpius Hyperion Malfoy	Student	Slytherin	Unknown	Unknown	Human 	Pure-blood	White blond	Grey	\N	\N	\N	\N
127	Edward Remus Lupin	Student	Hufflepuff	Unknown	Unknown	Human (Metamorphmagus)	Half-blood	Variable	Variable	\N	\N	\N	\N
128	James Sirius Potter	Student	Gryffindor	Unknown	Unknown	Human 	Half-blood	\N	\N	\N	\N	\N	\N
129	Rose Granger-Weasley	Student	Gryffindor	Unknown	Unknown	Human 	Half-blood	Red	\N	\N	Chaser	\N	\N
130	Argus Filch	Caretaker of Hogwarts	\N	\N	\N	Human 	Squib	Grey	Pale	Hogwarts School of Witchcraft and Wizardry	Sniffing out mischief	\N	\N
131	Poppy Pomfrey	Matron at Hogwarts School	\N	Unknown	Non-corporeal	Human 	Pure-blood or half-blood	\N	\N	Hogwarts School of Witchcraft and Wizardry	Skilled medical healer	\N	\N
132	Rolanda Hooch	Flying Instructor at Hogwarts	\N	Unknown	Non-corporeal	Human 	\N	Grey	Yellow	Hogwarts School of Witchcraft and Wizardry	Teaching, flying, refereeing Quidditch matches	\N	\N
133	Irma Pince	Librarian at Hogwarts	\N	Unknown	Non-corporeal	Human 	\N	\N	\N	Hogwarts School of Witchcraft and Wizardry	\N	\N	\N
134	Aurora Sinistra	Astronomer at Hogwarts	\N	Unknown	Unknown	Human 	Pure-blood or half-blood	Dark	Dark	Hogwarts School of Witchcraft and Wizardry	\N	\N	\N
135	Septima Vector	Professor of Arithmancyat Hogwarts	\N	Unknown	Unknown	Human 	\N	Black	\N	Hogwarts School of Witchcraft and Wizardry	\N	\N	\N
137	Fenrir Greyback	\N	\N	Unknown	None	Werewolf	\N	Grey	\N	Lord Voldemort  | Death Eaters	Physical combat	\N	\N
\.


--
-- Data for Name: hogwarts_staff; Type: TABLE DATA; Schema: public
--

COPY public.hogwarts_staff (name, subject_or_position, background) FROM stdin;
Cuthbert Binns	History of Magic	The History of Magic teacher for the entire series, Cuthbert Binns has the distinction of being the only teacher at Hogwarts who is a ghost. It is said that one day he took a nap in a chair in the staff room and died in his sleep later, he simply got up to go to teach his next class and left his body behind. His lessons are notoriously boring and it is mentioned that the most exciting thing that ever happens in his class is his entering through the blackboard. As a ghost, he seems unaware of his change from living to dead. In the second book, it is he who describes the legend of the Chamber of Secrets when asked by the students, but in the film version, it is McGonagall, as Binns does not appear in any of the films. He constantly gets the students' names wrong and is often so absent-minded he is amazed to find the class filled with students.
Charity Burbage	Muggle Studies	The Muggle Studies teacher before Harry's seventh year she does not appear until Harry Potter and the Deathly Hallows (as Harry has no need to take the class). Because her teachings about Muggles gave an overall favourable impression of them, going so far as to write an editorial praising Muggles in the Daily Prophet, she runs afoul of the Death Eaters, whose philosophy asserts the supremacy of pure-bloods. She becomes a prisoner of Lord Voldemort in the seventh book; he tortures and kills her before feeding her to Nagini. The character (played by Carolyn Pickles) appears briefly in the film Harry Potter and the Deathly Hallows – Part 1.
Amycus Carrow	\tMuggle Studies / Deputy Headmaster 	 Posted as Deputy Headmaster to Hogwarts to keep control over the school, maintain a reign of fear and to take charge of punishment under Severus Snape's regime as Headmaster in Harry Potter and the Deathly Hallows. Alecto Carrow taught Muggle Studies, now a required course; however, instead of encouraging understanding of Muggles,she taught ideologies that Muggles were no better than animals. Amycus Carrow taught Defence Against the Dark Arts; however it is noted that there was no defence involved because they had changed the name to Dark Arts, so Amycus frequently taught students the Unforgivable Curses and openly encouraged them to practice these on their classmates who earned themselves detention. In Harry Potter and the Deathly Hallows, Alecto Carrow is stunned by Luna Lovegood in the Ravenclaw common room. Harry Potter then uses the Cruciatus Curse on Amycus Carrow after he spat in Minerva McGonagall's face.
Alecto Carrow	\tMuggle Studies / Deputy Headmistress 	\tPosted as Deputy Headmistress to Hogwarts to keep control over the school, maintain a reign of fear and to take charge of punishment under Severus Snape's regime as Headmaster in Harry Potter and the Deathly Hallows. Alecto Carrow taught Muggle Studies, now a required course; however, instead of encouraging understanding of Muggles,she taught ideologies that Muggles were no better than animals. Amycus Carrow taught Defence Against the Dark Arts; however it is noted that there was no defence involved because they had changed the name to Dark Arts, so Amycus frequently taught students the Unforgivable Curses and openly encouraged them to practice these on their classmates who earned themselves detention. In Harry Potter and the Deathly Hallows, Alecto Carrow is stunned by Luna Lovegood in the Ravenclaw common room. Harry Potter then uses the Cruciatus Curse on Amycus Carrow after he spat in Minerva McGonagall's face.
Albus Percival Wulfric Brian Dumbledore	\tTransfiguration/ Deputy Headmaster / Headmaster\tThe Headmaster of Hogwarts 	 He was awarded many titles, most of which were removed by Minister for Magic Cornelius Fudge after he accused Dumbledore of conspiring to take over the Ministry.
Argus Filch\t	Caretaker	\tThe Squib caretaker of Hogwarts for the entire series; He owns a cat named Mrs Norris, who seems to possess certain magical abilities. He hates all students and he is bitter about not possessing magical abilities.
Firenze	\tDivination	\tA centaur, he previously lived with his herd in the Forbidden Forest. In the Order of the Phoenix, after Sybill Trelawney is fired by Dolores Umbridge, he is hired by Dumbledore to teach Divination in her stead. The other centaurs found this dishonourable and banished him from the herd. By Half-Blood Prince, Trelawney was reinstated as Divination teacher, but due to Firenze's situation with his herd, Dumbledore had them teach Divination concurrently until Firenze returns to the Forest after the Battle of Hogwarts.
Filius Flitwick	Charms	\tThe Charms teacher and Head of Ravenclaw House for the entire series. He is also shown to be the director of the school's choir in the film adaptation of Prisoner of Azkaban and Order of the Phoenix.
Wilhelmina Grubbly-Plank	\tCare of Magical Creatures	\tA substitute Care of Magical Creatures teacher. She first appears in Harry Potter and the Goblet of Fire, taking lessons when Hagrid is unable to teach, and substitutes again in Harry Potter and the Order of the Phoenix when Hagrid is away on a mission for the Order of the Phoenix. A number of students in Harry's year prefer Grubbly-Plank, as unlike Hagrid, she is quite happy to teach them about creatures that don't have poisonous fangs or deadly talons. Despite Harry's initial distrust of her abilities compared to Hagrid, she is a competent teacher – recognising the cause of Hedwig's injuries and healing her with little difficulty.
Rubeus Hagrid	\tCare of Magical Creatures / Grounds Keeper	\tThe Half-giant gamekeeper, Keeper of Keys and Grounds, and, from Harry's third year at Hogwarts, the Care of Magical Creatures professor. He has a habit of introducing dangerous creatures, which he considers harmless, to the students.
Rolanda Hooch	\tFlying	\tThe Quidditch referee during the entire series, and flying instructor for first-year students. She is described as having short, spiky, grey hair, with piercing yellow hawk-like eyes, usually hidden behind goggles. Her expertise is called on along with Professor Flitwick's to test Harry's Firebolt broom for dark magic.
Silvanus Kettleburn	\tCare of Magical Creatures	\tThe Care of Magical Creatures teacher since Armando Dippet (Dumbledore's predecessor) was headmaster. He eventually retires to spend time with his remaining limbs, and his place is eventually taken by Hagrid in Prisoner of Azkaban.
Gilderoy Lockhart	\tDefence Against the Dark Arts	\tThe Defence Against the Dark Arts teacher in Harry Potter and the Chamber of Secrets (Harry's second year at Hogwarts). He is adored by the female students for his charm and popularity in the wizarding world but is actually a coward and a fraud who took stories from other wizards and then erased their memories. He loses his own memory when a spell backfires on him and is subsequently hospitalised for long-term care.
Remus John Lupin	\tDefence Against the Dark Arts	\tThe Defense Against the Dark Arts teacher in Harry Potter and the Prisoner of Azkaban (Harry's third year at Hogwarts). He is loved by most students (except for those in Slytherin house) for being the best Defense Against the Dark Arts teacher. He resigns at the end of that year after Snape reveals that he is a werewolf. His nickname from the Marauders Map is Moony.
Minerva McGonagall	\tTransfiguration / Deputy Headmistress / Headmistress	\tThe Transfiguration teacher and Head of Gryffindor House during the entire series. Deputy Headmistress during the first six novels. Temporary Headmistress when Dumbledore was sacked in Chamber of Secrets. Temporary Headmistress after Dumbledore's death in Half-Blood Prince. Revealed to be the Headmistress in Cursed Child.
Alastor Moody	\tDefence Against the Dark Arts	\tMoody is appointed as Defence Against the Dark Arts teacher in Harry Potter and the Goblet of Fire (Harry's fourth year at Hogwarts). A former Auror, he gained his nickname for the magical eye he wears to replace one he lost in the line of duty. At the end of the book, Moody is revealed as an impostor, Barty Crouch Jr, who had captured the real Moody one day before the start of term as part of a plan to deliver Harry to Voldemort to help his resurrection. Moody reappears in the series as an active Order of the Phoenix member but never actually teaches. He is killed in Harry Potter and the Deathly Hallows
Irma Pince	\tLibrarian	\tThe librarian of Hogwarts during the entire series. She is compared to an underfed vulture, and is very possessive and protective with the library books, many times screaming at Ron and Harry. Dumbledore relates that while she agreed to allow the Hogwarts copy of Quidditch through the Ages to be used for a special facsimile copy, handing over the book ran so counter to her nature that she was struck by an unusual form of paralysis and he had to prise her fingers from the book manually.
Poppy Pomfrey	\tMatron	\tThe Matron and nurse in charge of the hospital wing during the entire series, being on the position for decades. It was mentioned once that she worked at St. Mungo's before transferring to Hogwarts. She has a reputation for strictness, but when faced with Dolores Umbridge's and later the Death Eaters' abuse of the students, she admits that she never even considered resigning, refusing to leave the students when they needed her most.
Quirinus Quirrell	\tMuggle Studies / Defence Against the Dark Arts	\tThe Defence Against the Dark Arts teacher in Harry Potter and the Philosopher's Stone (Harry's first year at Hogwarts). He later turns out to be possessed by Voldemort and is dead by the end of the book.
Aurora Sinistra\t	Astronomy	\tThe Astronomy teacher during the entire series Sinistra assists Professor Flitwick in moving a petrified Justin Finch-Fletchley to the hospital wing in Chamber of Secrets and is mentioned sporadically throughout the series.
Horace Eugene Flaccus Slughorn	\tPotions	\tA former Potions master and Head of Slytherin for several decades prior to Harry's birth, Slughorn agrees to come out of retirement and return to these functions at the beginning of Half-Blood Prince. He stays in the job after Voldemort's takeover but sides firmly with the Hogwarts staff against him in Deathly Hallows.
Severus Snape	\tPotions / Defense Against the Dark Arts / Headmaster	\tThe Potions master from Harry's first to fifth years, head of Slytherin House from Harry's first to sixth years and Defence Against the Dark Arts teacher in Harry Potter and the Half-Blood Prince (Harry's sixth year at Hogwarts). Snape serves as Headmaster in Harry Potter and the Deathly Hallows, having been appointed by the Minister for Magic, Pius Thicknesse (who was controlled by Voldemort), until he is killed by Voldemort in the final chapters of the novel.
Pomona Sprout	\tHerbology	\tThe Herbology teacher and Head of Hufflepuff House during the entire series. She held the job for years, and she carried the position after the Battle of Hogwarts until she retired and was replaced by Neville Longbottom who, by the time of the epilogue, is said to be the Herbology teacher.
Sybill Patricia Trelawney	\tDivination	\tThe Divination teacher from 1980 (Harry's birth year) until Order of the Phoenix, when she is fired by Umbridge. Trelawney returns to the work in Half-Blood Prince and Deathly Hallows, sharing the position with Firenze.
Dolores Jane Umbridge	\tDefence Against the Dark Arts / Headmistress	\tThe Defence Against the Dark Arts teacher in Harry Potter and the Order of the Phoenix (Harry's fifth year at Hogwarts). She was appointed by the Ministry of Magic to address the rumours concerning Voldemort's return that extended from there the previous summer. Umbridge extracted control, becoming Hogwarts' first and only High Inquisitor, and briefly Headmistress after Dumbledore took responsibility for Dumbledore's Army.
Septima Vector	\tArithmancy	\tThe Arithmancy teacher during the entire series, known to give her students large amounts of homework. She is only mentioned, as Arithmancy is Hermione's favourite class, but Harry never signed up for it.
\.


--
-- Data for Name: magical_creatures; Type: TABLE DATA; Schema: public
--

COPY public.magical_creatures (name, breed, owner) FROM stdin;
Crookshanks	Cat	Hermione Jean Granger
Dobby	House Elf	Lucius Malfoy
Fawkes	Phoenix	Albus Percival Wulfric Brian Dumbledore
Firenze	Centuar	\N
Griphook	Goblin	\N
Hedwig	Owl	Harry James Potter
Hokey	House Elf	Hepzibah Smith
Kreacher	House Elf	Sirius Black
Nagini	Snake	Tom Marvolo Riddle
Peeves	Poltergeist	\N
Winky	House Elf	Barty Crouch Jr
Scabbers	Rat	Ronald Bilius Weasley
Pigwidgeon	Owl	Ronald Bilius Weasley
Hermes	Owl	Percy Ignatius Weasley
Errol	Owl	Weasley family
Arnold	Pygmy Puff	Ginevra (Ginny) Molly Weasley
Aragog	Spider	Rubeus Hagrid
Buckbeak	Hippogriff	Rubeus Hagrid
Fluffy	Dog(three headed)	Rubeus Hagrid
Tenebrus	Thestral	Rubeus Hagrid
\.


--
-- Data for Name: philosophers_stone_dialogue; Type: TABLE DATA; Schema: public
--

COPY public.philosophers_stone_dialogue ("character", dialogue) FROM stdin;
Dumbledore	I should've known that you would be here, Professor McGonagall.
McGonagall	Good evening, Professor Dumbledore.
McGonagall	Are the rumors true, Albus?
Dumbledore	I'm afraid so, professor.
Dumbledore	The good and the bad.
McGonagall	And the boy?
Dumbledore	Hagrid is bringing him.
McGonagall	Do you think it wise to trust Hagrid with something as important as this?
Dumbledore	Ah, Professor, I would trust Hagrid with my life.
Hagrid	Professor Dumbledore, sir.
Hagrid	Professor McGonagall.
Dumbledore	No problems, I trust, Hagrid?
Hagrid	No, sir.
Hagrid	Little tyke fell asleep just as we were flying over Bristol.
Hagrid	Try not to wake him.
Hagrid	There you go.
Dumbledore	Albus, do you really think it's safe, leaving him with these people?
McGonagall	I've watched them all day.
McGonagall	They're the worst sort of Muggles, imaginable.
McGonagall	They really are...
Dumbledore	The only family he has.
McGonagall	This boy will be famous.
McGonagall	There won't be a child in our world who doesn't know his name.
Dumbledore	Exactly.
Dumbledore	He's far better off growing up away from all of that.
Dumbledore	Until he's ready.
Dumbledore	There, there, Hagrid.
Dumbledore	It's not really goodbye, after all.
Dumbledore	Good luck...Harry Potter.
Petunia	Up. Get up!
Petunia	Now!
Dudley	Wake up, cousin!
Dudley	We're going to the zoo!
Petunia	Here he comes, the birthday boy.
Vernon	Happy birthday, son.
Petunia	Why don't you just cook the breakfast, and try not to burn anything.
Harry	Yes, Aunt Petunia.
Petunia	I want everything to be perfect for my Dudley's special day!
Vernon	Hurry up! Bring my coffee, boy.
Harry	Yes, Uncle Vernon.
Petunia	Aren't they wonderful, darling?
Dudley	How many are there?
Vernon	36. Counted them myself.
Dudley	36?! But last year... last year I had 37!
Vernon	But some of them are quite a bit bigger than last year's.
Dudley	I don't care how big they are!
Petunia	Oh, now, now, now. 
Petunia	This is what we're going to do...
Petunia	is that when we go out, we're going to buy you two new presents.
Petunia	How's that, pumpkin?
Petunia	It should be a lovely day at the zoo.
Petunia	I'm really looking forward to it.
Vernon	I'm warning you now, boy.
Vernon	Any funny business, any at all...
Vernon	And you won't have any meals for a week.
Vernon	Get in.
Dudley	Make it move.
Vernon	Move!
Dudley	Move!
Harry	He's asleep!
Dudley	He's boring.
Harry	Sorry about him.
Harry	He doesn't understand what it's like, lying there day after day...
Harry	...watching people press their ugly faces in on you.
Harry	Can you hear me?
Harry	It's just, I've never talked to a snake before.
Harry	Do you...?
Harry	I mean, do you talk to people often?
Harry	You're from Burma, aren't you?
Harry	Was it nice there?
Harry	Do you miss your family?
Harry	I see. That's me as well.
Harry	I never knew my parents either.
Harry	Mummy, Dad, come here! 
Dudley	you won't believe what this snake is doing!
Snake	Thanks.
Harry	Anytime.
Someone	Snake!
Dudley	Mum! Mummy! Help me!
Petunia	My darling boy!
Petunia	How did you get in there?
Petunia	Who did this?
Petunia	How did you get in there?
Petunia	ls there a snake?
Petunia	It's all right, sweetheart.
Petunia	We'll get you out of these cold clothes.
Vernon	What happened?
Harry	I swear, I don't know!
Harry	One minute the glass was there and then it was gone, it was like magic.
Vernon	There's no such thing as magic.
Petunia	And smile!
Petunia	Vernon, just look at him!
Petunia	I can't believe it!
Petunia	In just a week, he'll be off to Smeltings.
Vernon	Caveat Smeltonia.
Vernon	Proudest moment of my life.
Harry	Will I have to wear that too?
Petunia	What? You? Go to Smeltings?
Petunia	Don't be so stupid!
Petunia	You're going to go to the state school.
Petunia	Where you belong.
Petunia	This is what you'll going to be wearing, when I finish dyeing it.
Harry	That's Dudley's old uniform.
Harry	It'll fit me like bits of old elephant skin.
Petunia	It'll fit you well enough.
Petunia	Go get the post. Go!
Vernon	Marge is ill. Ate a funny whelk.
Dudley	Dad, look! Harry's got a letter!
Harry	Hey, give it back! It's mine!
Vernon	Yours? Who'd be writing to you?
Vernon	No more mail through this letterbox.
Petunia	Have a lovely day at the office, dear.
Vernon	Shoo! Go on.
Vernon	Fine day, Sunday.
Vernon	In my opinion, best day of the week.
Vernon	Why is that, Dudley?
Harry	Because there's no post on Sundays?
Vernon	Right you are, Harry!
Vernon	No post on Sunday.
Vernon	No blasted letters today! No, sir.
Vernon	Not one single bloody letter. Not one!
Vernon	No, sir, not one blasted, miserable...
Dudley	Stop it!
Dudley	Mummy, what's happening?
Vernon	Give me that!
Vernon	Give me that letter!
Harry	Get off!
Harry	They're my letters!
Harry	Let go of me!
Vernon	That's it!
Vernon	We're going away!
Vernon	Far away, where they can't find us!
Dudley	Daddy's gone mad, hasn't he?
Harry	Make a wish, Harry.
Vernon	Who's there?
Hagrid	Sorry about that.
Vernon	I demand that you leave at once, Sir!
Vernon	You are breaking and entering!
Hagrid	Dry up, Dursley, you great prune.
Hagrid	Mind, I haven't seen you since you was a baby, Harry.
Hagrid	But you're a bit more along than I would have expected.
Hagrid	Particularly 'round the middle.
Dudley	I'm not Harry.
Harry	I am.
Hagrid	Well, of course you are.
Hagrid	Got something for you.
Hagrid	Afraid I might have sat on it at somepoint, but I imagine it'll taste fine just the same.
Hagrid	Baked it myself, words and all.
Harry	Thank you.
Hagrid	It's not every day that your young man turns 11, now is it?
Harry	Excuse me, who are you?
Hagrid	Rubeus Hagrid, Keeper of Keys and Grounds at Hogwarts.
Hagrid	Of course, you know all about Hogwarts.
Harry	Sorry, no.
Hagrid	No? Blimey, Harry, didn't you ever wonder where your mum and dad learned it all?
Harry	Learnt what?
Hagrid	You're a wizard, Harry.
Harry	I'm a what?
Hagrid	A wizard.
Hagrid	And a thumping good one, I'd wager, once you're trained up little.
Harry	No, you've made a mistake.
Harry	I mean...l can't be a wizard.
Harry	I mean, I'm just Harry.
Harry	Just Harry.
Hagrid	Well, Just Harry, did you ever make anything happen?
Hagrid	Anything you couldn't explain, when you were angry or scared?
Harry	Dear Mr. Potter,
Harry	We are pleased to inform you that you have been accepted at Hogwarts School of Witchcraft and Wizardry."
Vernon	He will not be going there!
Vernon	We swore when we took him in we'd put a stop to all this rubbish.
Harry	You knew? 
Harry	You knew all along and you never told me?
Petunia	Of course we knew.
Petunia	How could you not be?
Petunia	My perfect sister being who she was.
Petunia	My mother and father were so proud the day she got her letter.
Petunia	We have a witch in the family.
Petunia	Isn't it wonderful?"
Petunia	I was the only one to see her for what she was.
Petunia	A freak!
Petunia	Then she met that Potter, and then she had you...
Petunia	and I knew you would be the same.
Petunia	Just as strange, just as abnormal.
Petunia	And then, if you please, she went and got herself blown up!
Petunia	And we got landed with you.
Harry	Blown up?
Harry	You told me my parents died in a car crash.
Hagrid	A car crash? 
Hagrid	A car crash killed Lily and James Potter?
Petunia	We had to say something.
Hagrid	It's an outrage!
Hagrid	It's a scandal!
Vernon	He'll not be going.
Hagrid	Oh, and I suppose a great Muggle like yourself's going to stop him, are you?
Harry	Muggle?
Hagrid	Non-magic folk.
Hagrid	This boy's had his name down ever since he were born.
Hagrid	He's going to the finest school of witchcraft and wizardry in the world and...
Hagrid	he'll be under the finest headmaster that Hogwarts has ever seen, Albus Dumbledore.
Vernon	I will not pay to have some crackpot old fool teach him magic tricks.
Hagrid	Never insult Albus Dumbledore in front of me.
Hagrid	Oh, um, I'd appreciate it if you didn't tell anyone at Hogwarts about that.
Hagrid	Strickly speaking, I'm not allowed to do magic.
Harry	Okay.
Hagrid	Ooh, We're a bit behind schedule.
Hagrid	Best be off.
Hagrid	Unless you'd rather stay, of course.
Harry	First year's students will require three sets of plain work robes one wand.
Hagrid	Essential bit of equipment, Harry.
Harry	One pair of dragon hide gloves.
Harry	Hagrid, Do they mean from a real dragon?
Hagrid	They don't mean a penguin, do they?
Hagrid	Crikey. I'd love a dragon.
Harry	You'd like a dragon?
Hagrid	Vastly misunderstood beasts, Harry.
Hagrid	Vastly misunderstood.
Harry	All students must be equipped with one standard size 2 pewter cauldron and may bring, if they desire,\r\n either an owl, a cat or a toad.
Harry	Can we find all this in London?
Hagrid	If you know where to go.
Barkeep Tom	Ah, Hagrid! The usual, I presume?
Hagrid	No, thanks, Tom.
Hagrid	I'm on official Hogwarts business.
Hagrid	Just helping young Harry here buy his school supplies.
Barkeep Tom	Bless my soul.
Barkeep Tom	It's Harry Potter!
Man	Welcome back, Mr. Potter.
Man	Welcome back.
Witch	Doris Crockford, Mr Potter.
Witch	I can't believe I'm meeting you at last.
Flitwick  	Ms. Granger's done it! 
Quirrell	Harry Potter. Can't tell you how pleased I am to meet you.
Hagrid	Hello, professor. I didn't see you there.
Hagrid	Harry, This is Professor Quirrell. 
Hagrid	He will be your Defense Against the Dark Arts teacher at Hogwarts
Harry	Oh, nice to meet you.
Quirrell	Fearfully fascinating subject.
Quirrell	Not that you need it, eh, Potter?
Hagrid	Yes, well, must be going now.
Hagrid	Lots to buy.
Harry	Goodbye.
Hagrid	See, Harry? You're famous.
Harry	But why am I famous, Hagrid?
Harry	All those people back there, how is it they know who I am?
Hagrid	I'm not sure I'm exactly the right person to tell you that, Harry.
Hagrid	Welcome, Harry, to Diagon Alley.
Hagrid	Here's where you'll get your quills and your ink.
Hagrid	And over there, all your bits and bobs for doing your wizardry.
Boy	It's a world-class racing broom.
Boy	Look at it! The new Nimbus 2000!
Boy	It's the fastest model yet.
Harry	But, Hagrid, how am I to pay for all this?
Harry	I haven't any money.
Hagrid	Well there's your money, Harry.
Hagrid	Gringotts, the wizard bank.
Hagrid	Ain't no safer place, not one.
Hagrid	Except perhaps Hogwarts.
Harry	Hagrid, what exactly are these things?
Hagrid	They're goblins, Harry.
Hagrid	Clever as they come goblins but not the most friendly of beasts.
Hagrid	Best stay close.
Hagrid	Mr. Harry Potter wishes to make a withdrawal.
Goblin	And does Mr. Harry Potter have his key?
Hagrid	Oh, Wait a minute.
Hagrid	Got it here somewhere.
Hagrid	Ha! Here's the little devil.
Hagrid	Oh, and there's something else as well.
Hagrid	Professor Dumbledore gave me this.
Hagrid	It's about You-Know-What in vault you-know-which.
Goblin	Very well.
Griphook	Vault 687.
Griphook	Lamp, please.
Griphook	Key, please.
Hagrid	Didn't think your mum and dad will leave you with nothing, now did ya?
Griphook	Vault 713.
Harry	What's in there, Hagrid?
Hagrid	Can't tell you, Harry.
Hagrid	Hogwarts business. Very secret.
Griphook	Stand back.
Hagrid	Best not to mention this to anyone, Harry.
Harry	I still need... a wand.
Hagrid	A wand? Well, you'll want Ollivanders.
Hagrid	There ain't no place better.
Hagrid	Why don't you run along there and wait.
Hagrid	 I just got one more thing I gotta do.
Hagrid	 Won't be long.
Harry	Hello?
Harry	Hello?
Ollivander	I wondered when I'd be seeing you, Mr. Potter.
Ollivander	It seems only yesterday that your mother and father were in here buying their first wands.
Ollivander	Here we are.
Ollivander	Give it a wave.
Ollivander	Apparently not.
Ollivander	Perhaps  this
Ollivander	No, no, definitely not.
Ollivander	No matter.
Ollivander	I wonder.. Curious.
Ollivander	Very curious.
Harry	Sorry, but what's curious?
Ollivander	I remember every wand I've ever sold, Mr. Potter.
Ollivander	It so happens that the phoenix whose tail feather resides in your wand, gave another feather.
Ollivander	Just one other.
Ollivander	It is curious that you should be destined for this wand when its brother gave you that scar. 
Harry	And who owned that wand?
Ollivander	We do not speak his name.
Ollivander	The wand chooses the wizard, Mr. Potter.
Ollivander	It's not always clear why.
Ollivander	But I think it is clear that we can expect great things from you.
Ollivander	After all, He-Who-Must-Not-Be-Named did great things.
Ollivander	Terrible yes, but great
Hagrid	Harry! Harry!
Hagrid	Happy birthday.
Hagrid	You all right, Harry?
Hagrid	You seem very quiet.
Harry	He killed my parents, didn't he?
Harry	The one who gave me this.
Harry	You know, Hagrid. 
Harry	I know you do.
Hagrid	First, and understand this Harry because it's very important:
Hagrid	Not all wizards are good.
Hagrid	Some of them go bad.
Hagrid	A few years ago there was a one wizard who went as bad as he can go.
Hagrid	 His name was V...
Hagrid	His name was V...
Harry	Maybe if you wrote it down?
Hagrid	No, I can't spell it.
Hagrid	All right, Voldemort.
Harry	Voldemort?
Hagrid	It was dark times, Harry. Dark times.
Hagrid	Voldemort started to gather some followers.
Hagrid	Brought them over to the Dark Side.
Hagrid	Anyone that stood up to him ended up dead.
Hagrid	Your parents fought against him.
Hagrid	But nobody lived once he decided to kill them.
Hagrid	Nobody, not one.
Hagrid	Except you.
Harry	Me? Voldemort tried to kill me?
Hagrid	Yes. That ain't no ordinary cut on your forehead, Harry.
Hagrid	A mark like that only comes from being touched by a curse, and an evil curse at that.
Harry	What happened to V...?
Harry	To You-Know-Who?
Hagrid	Well, some say he died.
Hagrid	Codswallop, in my opinion.
Hagrid	Nope, I reckon he's out there still too tired to carry on.
Hagrid	But one thing's absolutely certain. 
Hagrid	Something about you stumped him that night.
Hagrid	That's why you're famous.
Hagrid	That's why everybody knows your name.
Hagrid	You're the boy who lived.
Hagrid	What are you looking at?
Hagrid	Blimey, is that the time?
Hagrid	Sorry, Harry, I'm gonna have to leave you.
Hagrid	Dumbledore will be wanting his...
Hagrid	Well, he'll be wanting to see me.
Hagrid	Now, uh, your train leaves in 10 minutes.
Hagrid	Here's your ticket. 
Hagrid	Stick to it, Harry that's very important. 
Hagrid	Stick to your ticket.
Harry	Platform 9 3/4?
Harry	But, Hagrid, there must be a mistake.
Harry	This says platform 9 3/4.
Harry	There's no such thing, is there?
Man	Sorry.
Harry	Excuse me. Excuse me.
Trainmaster	Right on your left Madam.
Harry	Excuse me Sir, Can you tell me where I might find platform 9 3/4?
Trainmaster	9 3/4? Think you're being funny, do ya?
Mrs. Weasley	It's the same every year, packed with Muggles, Of course. 
Mrs. Weasley	Come on!
Harry	Muggles?
Mrs. Weasley	Platform 9 3/4, this way.
Mrs. Weasley	All right, Percy, you first.
Mrs. Weasley	Fred, you next.
George	He's not Fred, I am.
Fred	Honestly, woman, you call yourself our mother?
Mrs. Weasley	Oh, I'm sorry, George.
Fred	I'm only joking. I am Fred.
Harry	Excuse me.
Harry	Could you tell me how to...?
Mrs. Weasley	How to get onto the platform?
Mrs. Weasley	Not to worry, dear.
Mrs. Weasley	It's Ron's first time to Hogwarts as well.
Mrs. Weasley	All you've got do is walk straight at the wall between platforms 9 and 10.
Mrs. Weasley	Best do it at a bit of a run if you're nervous.
Ginny	Good luck.
Ron	Excuse me. Do you mind?
Ron	Everywhere else is full.
Harry	No. Not at all.
Ron	I'm Ron, by the way.
Ron	Ron Weasley.
Harry	I'm Harry. Harry Potter.
Ron	So it's true!
Ron	I mean, do you really have the...?
Harry	The what?
Ron	The scar?
Ron	Wicked!
Woman	Anything off the trolley, dears?
Ron	No, thanks. I'm all set.
Harry	We'll take the lot.
Harry	Bertie Bott's Every Flavor Beans?
Ron	They mean every flavor.
Ron	There's chocolate and peppermint and there's also spinach, liver and tripe.
Ron	George sweared he got a bogey-flavoured one once!
Harry	These aren't real frogs, are they?
Ron	It's just a spell.
Ron	Besides, It's the cards you want.
Ron	Each pack's got a famous witch or wizard.
Ron	I've got about 500 myself.
Ron	Watch it!
Ron	Oh, that's rotten luck.
Ron	They've only got one good jump in them to begin with.
Harry	I've got Dumbledore!
Ron	I got about six of him.
Harry	Hey, he's gone!
Ron	Well, you can't expect him to hang around all day, can you?
Ron	This is Scabbers, by the way.
Ron	Pathetic, isn't he?
Harry	Just a little bit.
Ron	Fred gave me a spell as to turn him yellow.
Ron	Want to see?
Harry	Yeah.
Hermione	Has anyone seen a toad?
Hermione	A boy named Neville's lost one
Ron	No.
Hermione	Oh, are you doing magic?
Hermione	Let's see, then.
Ron	Sunshine, daisies, butter mellow.
Ron	Turn this stupid fat rat yellow.
Hermione	Are you sure that's a real spell?
Hermione	Well, it's not very good, is it?
Hermione	Of course, I've only tried a few simple ones myself but they've all worked for me.
Hermione	For example:
Hermione	Oculus Reparo.
Hermione	That's better, isn't it?
Hermione	Holy cricket, you're Harry Potter!
Hermione	I'm Hermione Granger.
Hermione	And you are...?
Ron	I'm Ron Weasley.
Hermione	Pleasure.
Hermione	You two better change into robes.
Hermione	I expect we'll be arriving soon.
Hermione	You've got dirt on your nose, by the way.
Hermione	Did you know?
Hermione	Just there.
Hagrid	Right, then.
Hagrid	First years, this way, please!
Hagrid	Come on, now, first years, don't be shy.
Hagrid	Come on now, hurry up.
Hagrid	Hello, Harry.
Harry	Hey, Hagrid.
Hagrid	Right, then. This way to the boats.
Hagrid	Come on, now, follow me.
Ron	Wicked.
McGonagall	Welcome to Hogwarts.
McGonagall	Now, in a few moments, you'll pass through these doors and join your classmates.
McGonagall	But before you can take your seats, you must be sorted into your houses.
McGonagall	They are Gryffindor, Hufflepuff Ravenclaw and Slytherin.
McGonagall	Now, while you're here, your house will be like your family.
McGonagall	Your triumphs will earn you points.
McGonagall	Any rule-breaking, and you will lose points.
McGonagall	At the end of the year, the house with the most points is awarded the house cup
Neville	Trevor! Sorry.
McGonagall	The Sorting Ceremony will begin momentarily.
Malfoy	It's true then, what they're saying on the train.
Malfoy	Harry Potter has come to Hogwarts.
Whispers	Harry Potter?
Malfoy	This is Crabbe, and Goyle.
Malfoy	And I'm Malfoy.
Malfoy	Draco Malfoy.
Malfoy	Think my name's funny, do you?
Malfoy	I've no need to ask yours.
Malfoy	Red hair and a hand-me-down robe?
Malfoy	You must be a Weasley.
Malfoy	We'll soon find out that some wizarding families are better than others, Potter.
Malfoy	You don't want to go making friends with the wrong sort.
Malfoy	I can help you there.
Harry	I think I can tell the wrong sort for myself, thanks.
McGonagall	We're ready for you now.
McGonagall	Follow me.
Hermione	It's not real, the ceiling. 
Hermione	It's just bewitched to look like the night sky.
Hermione	I read about it in Hogwarts: A History.
McGonagall	All right, will you wait along here, please?
McGonagall	Now, before we begin Professor Dumbledore would like to say a few words.
Dumbledore	I have a few start-of-term notices I wish to announce.
Dumbledore	The first years, please note that the Dark Forest is strictly forbidden to all students.
Dumbledore	Also, our caretaker, Mr. Filch, has asked me to remind you that the third-floor corridor on the right hand side is out of bounds to everyone who does not wish to die a most painful death.
Dumbledore	Thank you.
McGonagall	When I call your name, you will come forth.
McGonagall	I shall place the Sorting Hat on your head and you will be sorted into your houses.
McGonagall	Hermione Granger.
Hermione	Oh, no. Okay, relax.
Ron	Mental, that one, I'm telling you.
Sorting Hat	Ah, right then... hmm... right.
Sorting Hat	Okay. Gryffindor!
McGonagall	Draco Malfoy.
Sorting Hat	Slytherin!
Ron	There isn't a witch or wizard who went bad who wasn't in Slytherin.
McGonagall	Susan Bones.
Ron	Harry, what is it?
Harry	Nothing. Nothing, I'm fine.
Sorting Hat	Let's see I know! Hufflepuff!
McGonagall	Ronald Weasley.
Sorting Hat	Another Weasley!
Sorting Hat	I know just what to do with you.
Sorting Hat	Gryffindor!
McGonagall	Harry Potter.
Sorting Hat	Hmm... difficult, very difficult.
Sorting Hat	Plenty of courage, I see.
Sorting Hat	Not a bad mind, either.
Sorting Hat	There's talent, oh, yes.
Sorting Hat	And a thirst to prove yourself.
Sorting Hat	But where to put you?
Harry	Not Slytherin, not Slytherin!
Sorting Hat	Not Slytherin, eh? Are you sure?
Sorting Hat	You could be great, you know.
Sorting Hat	It's all here, in your head.
Sorting Hat	And Slytherin will help you on the way to greatnesses, no doubt about that.
Sorting Hat	No? Well, if you're sure.
Sorting Hat	Better be...Gryffindor!
McGonagall	Your attention, please.
Dumbledore	Let the feast begin.
Seamus	I'm half and half.
Seamus	My dad's a Muggle. Mum's a witch.
Seamus	Bit of a nasty shock for him when he found out.
Harry	Say, Percy, who's that teacher talking to Professor Quirrell?
Percy	Oh, thats Professor Snape, head of Slytherin house.
Harry	What's he teach?
Percy	Potions.
Percy	But everyone knows, its the Dark Arts he fancies.
Percy	He's been after Quirrell's job for years.
Sir Nicholas	Hello! How are you?
Sir Nicholas	Welcome to Gryffindor.
Girl	Look, It's the Bloody Baron!
Percy	Hello, Sir Nicholas.
Percy	Have a nice summer?
Sir Nicholas	Dismal. Once again, my request to join the Headless Hunt has been denied.
Ron	I know you.
Ron	You're Nearly Headless Nick.
Sir Nicholas	I prefer Sir Nicholas, if you don't mind.
Hermione	Nearly headless?
Hermione	How can you be nearly headless?
Sir Nicholas	Like this.
Percy	Gryffindors, follow me please.
Percy	Keep up. Thank you.
Boy	Ravenclaw, follow me. This way.
Percy	This is the most direct path to the dormitories.
Percy	Oh, and keep an eye on the staircases.
Percy	They like to change.
Percy	Keep up, please, and follow me.
Percy	Quickly now, come on. Come on.
Neville	That picture's moving.
Ron	Look at that one.
Harry	I think she fancies you.
Girl	Oh, look! Look!
Girl	Who's that girl?
Man in paint	Welcome to Hogwarts.
Fat Lady	Password?
Percy	Caput Draconis.
Percy	Follow me, everyone. Keep up.
Percy	Quickly, come on.
Percy	Gather around here.
Percy	Welcome to the Gryffindor common room.
Percy	Boys' dormitory is upstairs and down to your left.
Percy	Girls, the same on your right.
Percy	You'll find that your belongings have already been brought up.
Ron	Made it!
Ron	Can you imagine the look on old McGonagall's face if we were late?
Ron	That was bloody brilliant!
McGonagall	Thank you for that assessment, Mr Weasley.
McGonagall	Perhaps, lt'd be more useful if I were to transfigure Mr. Potter and yourself into a pocket-watch.
McGonagall	That way, one of you might be on time.
Harry	We got lost.
McGonagall	Then perhaps a map?
McGonagall	I trust you don't need one to find your seats.
Snape	There will be no foolish wand-waving or silly incantations in this class.
Snape	As such, I don't expect many of you to appreciate the subtle science and exact art that is potion-making.
Snape	However, for those select few who possess the predisposition I can teach you how to bewitch the mind and ensnare the senses.
Snape	I can tell you how to bottle fame brew glory and even put a stopper in death.
Snape	Then again, maybe some of you have come to Hogwarts in possession of abilities so formidable that you feel confident enough to not pay attention.
Snape	Mr. Potter.
Snape	Our new celebrity.
Snape	Tell me, what would I get if I added powdered root of asphodel to an infusion of wormwood?
Snape	You don't know? Well, let's try again.
Snape	Where, Mr Potter, would you look if I asked you to find me a bezoar?
Harry	I don't know, Sir.
Snape	And what is the difference between monkshood and wolfsbane?
Harry	I don't know, Sir.
Snape	Pity.
Snape	Clearly, fame isn't everything is it, Mr. Potter?
Harry	Clearly, Hermione knows.
Harry	Seems a pity not to ask her.
Snape	Silence.
Snape	Put your hand down, you silly girl!
Snape	For your information, Potter
Snape	Asphodel and wormwood make a sleeping potion so powerful it is known as the Draught of the Living Dead.
Snape	A bezoar is a stone taken from the stomach of a goat and it will save you from most poisons.
Snape	As for monkshood and wolfsbane, they are the same plant, which also goes by the name of aconite.
Snape	Well...
Snape	Why aren't you all copying this down?
Snape	And Gryffindors note that five points will be taken from your house for your classmate's cheek.
Seamus	Eye of rabbit, harp string hum
Seamus	Turn this water into rum.
Seamus	Eye of rabbit...
Harry	What's Seamus trying to do to that glass of water?
Ron	Turn it into rum. 
Ron	Actually managed a weak tea yesterday, before...
Ron	Mail's here.
Harry	Can I borrow this? Thanks.
Dean	Hey, look! Neville's got a Remembrall
Hermione	I've read about those.
Hermione	When the smoke turns red, it means you've forgotten something.
Neville	The only problem is, I can't remember what I've forgotten.
Harry	Hey Ron! Somebody broke into Gringotts.
Harry	Listen.
Harry	Believed to be the work of Dark wizards or witches unknown Gringotts goblins while acknowledging the breach, insist nothing was taken.\r\n
Harry	The vault in question, number 713, had, in fact, been emptied earlier that very same day."
Harry	That's odd. 
Harry	That's the vault Hagrid and I went to.
Madam Hooch	Good afternoon, class.
Class	Good afternoon, Madam Hooch.
Madam Hooch	Good afternoon, Amanda.
Madam Hooch	Good afternoon.
Madam Hooch	Welcome to your first flying lesson.
Madam Hooch	Well, what are you waiting for? 
Madam Hooch	Everyone step up to the left side of their broomstick.
Madam Hooch	Come on now, hurry up. 
Madam Hooch	Stick your right hand over the broom and say, "Up."
Class	Up!
Malfoy	Up.
Ron	Up. Up!
Madam Hooch	With feeling.
Hermione	Up. Up. Up!
Ron	Shut up, Harry.
Madam Hooch	Now, once you've got hold of your broom, I want you to mount it.
Madam Hooch	And grip it tight, you don't wanna be sliding off the end.
Madam Hooch	When I blow my whistle, I want each of you to kick off from the ground, hard.
Madam Hooch	Keep your broom steady, hover for a moment
Madam Hooch	Then lean forward slightly and touch back down.
Madam Hooch	On my whistle. Three, two...
Madam Hooch	Mr. Longbottom.
Madam Hooch	Mr. Longbottom!
Neville	Down, down!
Class	Neville!
Madam Hooch	Come back down this instant!
Madam Hooch	Everyone out of the way!
Girl	Is he all right?
Madam Hooch	Oh, dear, it's a broken wrist.
Madam Hooch	Poor boy. Come on now, up you get.
Madam Hooch	Everyone's to keep their feet firmly on the ground while I take Mr Longbottom to the hospital wing.
Madam Hooch	Understand? If I see a single broom in the air the one riding it will find themselves out of Hogwarts before they can say, Quidditch.
Malfoy	Did you see his face?
Malfoy	Maybe if the fat lump had given this a squeeze, he'd have remembered to fall on his fat arse.
Harry	Give it here, Malfoy.
Malfoy	No. I think I'll leave it somewhere for Longbottom to find.
Malfoy	How about on the roof?
Malfoy	What's the matter, Potter?
Malfoy	Bit beyond your reach?
Hermione	Harry, no way!
Hermione	You heard what Madam Hooch said.
Hermione	Besides, you don't even know how to fly.
Hermione	What an idiot.
Harry	Give it here or I'll knock you off your broom!
Malfoy	Is that so?
Malfoy	Have it your way, then.
Boy	Nice going, Harry.
Boy	That was wicked, Harry!
McGonagall	Harry Potter!
McGonagall	Follow me.
McGonagall	You wait here.
McGonagall	Professor Quirrell, excuse me.
McGonagall	Could I borrow Wood for a moment please?
Quirrell	Oh, yes, of course.
McGonagall	Potter, this is Oliver Wood.
McGonagall	Wood, I have found you a Seeker.
Sir Nicholas	Have you heard? 
Sir Nicholas	Harry Potter's the new Gryffindor Seeker. 
Sir Nicholas	I always knew hed do well.
Ron	Seeker? 
Ron	But first years never make their house teams! 
Ron	You must be the youngest Quidditch player in
Harry 	A century, according to McGonagall.
Fred  	Hey, well done, Harry, 
Fred  	Wood's just told us!
Ron  	Fred and George are on the team, too. 
Ron  	Beaters.
George  	Our job is to make sure that you don't get bloodied up too bad. 
George  	Can't make any promises, of course. 
George  	Rough game, Quidditch.
Fred  	Brutal. 
Fred  	But no one's died in years. 
Fred  	Someone will vanish occasionally  
George  	But they'll turn up in a month or two!!
Ron  	Oh, go on, Harry, 
Ron  	Quidditch is great. 
Ron  	Best game there is! 
Ron  	And you'll be great, too!
Harry  	But I've never even played Quidditch. 
Harry  	What if I make a fool of myself?
Hermione	You won't make a fool of yourself. 
Hermione	It's in your blood.
Ron  	Whoa. 
Ron  	Harry, you never told me your father was a Seeker, too.
Harry  	I-I didn't know.
Ron  	I'm telling you, it's spooky. 
Ron  	She knows more about you than you do.
Harry  	Who doesn't?
Ron  	Ahh!
Harry  	What's happening?
Hermione  	The staircases change, remember?
Harry	Let's go this way.
Ron 	Before the staircase moves again. 
Ron	Does anybody feel like...we shouldn't be here?
Hermione	We're not supposed to be here. 
Hermione	This is the 3rd floor. 
Hermione	It's forbidden.
Harry  	Let's go.
Ron  	It's Filch's cat!
Harry  	Run! Quick, let's hide through that door!
Harry	It's locked!
Ron  	That's it, we're done for!
Hermione  	Oh, move over! 
Hermione	Alohomora
Hermione	Get in
Ron	Alohomora?
Hermione 	Standard book of spells, Chapter 7.
Filch	Anyone here, my sweet? Come on.
Hermione 	Filch is gone.
Ron 	Probably thinks this door's locked.
Hermione 	 It was locked.
Harry  	And for good reason. 
All  	AHHHHHHH! 
Ron 	What do they think they're doing?? 
Ron 	Keeping a thing like that locked up in a school.
Hermione 	 You don't use your eyes, do you? 
Hermione 	Didn't you see what it was standing on?
Ron  	I wasn't looking at its feet! 
Ron  	I was a bit preoccupied with its heads. 
Ron  	Or maybe you didn't notice, there were three!
Hermione  	It was standing on a trap door. 
Hermione  	Which means it wasn't there by accident. 
Hermione  	It's guarding something.
Harry  	Guarding something?
Hermione  	That's right. 
Hermione  	Now, if you two don't mind, I'm going to bed before either of you come up with another clever idea to get us killed...or worse, expelled!
Ron  	She needs to sort out her priorities!
Oliver 	Quidditch is easy enough to understand. 
Oliver 	Each time has seven players, 3 chasers, 2 beaters, 1 keeper and a seeker that's you. 
Oliver 	There are three kinds of balls. 
Oliver 	This one's called the Quaffle.
Oliver 	Now, the chasers handle the Quaffle and try to put it through one of those three hoops. 
Oliver 	The keeper, that's me, defends the hoops. 
Oliver 	With me so far?
Harry  	I think so. 
Harry  	What are those?
Oliver  	You better take this. 
Oliver  	Careful now, it's comin' back. 
Oliver  	Eh, not bad, Potter, you'd make a fair beater...Uh-oh. 
Harry	What was that?
Oliver  	Bludger. Nasty little buggers. 
Oliver  	But you are a Seeker.
Oliver  	The only ball I want you to worry about is this...the Golden Snitch. 
Harry 	I like this ball.
Oliver 	Ah, you like it now. 
Oliver 	Just wait. 
Oliver 	It's wicked fast and damn near impossible to see.
Harry  	What do I do with it?
Oliver  	You catch it...before the other team's seeker. 
Oliver  	You catch this, the game is over. 
Oliver  	You catch this, Potter, and we win.
Harry  	Whoa.
Flitwick	One of a wizard's most rudimentary skills is levitation the ability to make objects fly. 
Flitwick	Uh, do you all have your feathers? Good. 
Flitwick	Now, uh, don't forget the nice wrist movement we've been practicing, hmm? 
Flitwick	The swish and flick. Everyone. 
Class	The swish and flick. 
Flitwick	Good. 
Flitwick	And enunciate. 
Flitwick	Wingardium Leviosa. 
Flitwick	Off you go then.
Draco  	Wingardium Levio-saaa.
Ron  	Wingardrium Leviosar. 
Hermione  	Stop, stop, stop.
Hermione  	You're going to take someone's eye out. 
Hermione  	Besides, youre saying it wrong. 
Hermione  	It's Leviosa, not Leviosar.
Ron  	You do it then if you're so clever. 
Ron  	Go on, go on.
Hermione	Wingardium Leviosa.
Flitwick  	Oh, well done! 
Flitwick  	See here, everyone! 
Flitwick  	Oh, splendid!
Seamus  	Wingard Levosa. Wingardly Lev... 
Flitwick  	Whooaaa! Ooh.
Harry  	I think we're going to need another feather over here, Professor.
Ron  	It's Leviosa, not Leviosar. 
Ron  	Honestly, she's a nightmare. 
Ron  	No wonder she hasn't got any friends!
Harry	I think she heard you.
Harry	Where's Hermione?
Neville	Parvati Patil said that she wouldn't come out of the girl's bathroom. 
Neville	She said that she'd been in there all afternoon...crying.
Quirrell	TROLL! IN THE DUNGEON! 
Quirrell	T-TROOLLL IN THE DUNGEON!! 
Quirrell	Thought you ought to know. 
Dumbledore	SILLLLLEEENNNNCEEEEE!
Dumbledore	 Everyone will please, not panic. 
Dumbledore	Now, Prefects will lead their houses back to the dormitories. 
Dumbledore	Teachers will follow me to the dungeons.
Girl  	Hufflepuff, this way!
Boy  	Stay together!
Percy  	Gryffindors...keep up please. 
Percy  	And stay alert!
Harry  	How could a troll get in?
Ron  	Not by itself. 
Ron  	Trolls are really stupid. 
Ron  	Probably people playing jokes.
Ron  	What?
Harry 	Hermione! 
Harry 	She doesn't know!
Ron	I think the troll's left the dungeon.
Harry 	It's going into the Girl's Bathroom!
Harry  	Hermione, move!
Hermione	Help! Help!
Ron  	Hey, pea brain! 
Hermione 	Ahhh! Help!
Harry 	Whooa! Whoa, whoa! 
Harry  	Do something!
Ron 	What?
Harry  	Anything! 
Harry  	Hurry up!
Hermione	Swish and flick!
Ron  	Wingardium Leviosa! 
Ron  	Cool!
Hermione  	Is it...dead?
Harry  	I don't think so. 
Harry  	Just knocked out. 
Harry  	 Ew. Troll bogies.
McGonagall 	Oh! Oh, my goodness! 
McGonagall 	E-Explain yourselves, both of you!
Ron and Harry	Well, what it is...
Hermione  	It's my fault, Professor McGonagall. 
McGonagall 	 Ms. Granger?
Hermione  	I went looking for the troll. 
Hermione  	I'd read about them and thought I could handle it. 
Hermione  	But I was wrong. 
Hermione  	If Harry and Ron hadn't come and found me...
Hermione  	I'd probably be dead.
McGonagall  	Be that as it may...it was an extremely foolish thing to do. 
McGonagall  	I would have expected more rational behaviour on your part and I am very disappointed in you Ms. Granger. 
McGonagall  	5 points will be taken from Gryffindor for your serious lack of judgment. 
McGonagall  	As for you two gentlemen I just hope you realize how fortunate you are. 
McGonagall  	Not many first year students could take on a full grown mountain troll and live to tell the tale. 
McGonagall  	5 points...will be awarded to each of you. 
McGonagall  	For sheer dumb luck. 
Quirrell  	Perhaps you ought to go...
Quirrell  	M-might wake up...heh.Ahh! Hehe....
Harry	Good of you to get us out of trouble like that.
Ron	Mind you, we did save her life.
Harry	Mind you, she might not have needed saving if you hadn't insulted her.
Ron	What are friends for?
Ron	Take a bit of toast, mate. Go on.
Hermione	Ron's right, Harry. 
Hermione	You're gonna need your strength today.
Harry  	I'm not hungry.
Snape  	Good luck today, Potter. 
Snape  	Then again, now that you've proven yourself against a troll, a little game of Quidditch should be easy work for you...even if it is against Slytherin.
Harry  	That explains the blood.
Hermione  	Blood?
Harry  	Listen, last night, I'm guessing Snape let the troll in as a diversion so he could try and get past that 3 headed dog. 
Harry  	But, he got himself bitten, that's why he's limping.
Hermione 	 But why would anyone go near that dog?
Harry  	The day I was at Gringotts, Hagrid took something out of one of the vaults.
Harry  	 He said it was Hogwarts' business, very secret.
Hermione 	So you're saying...
Harry 	That's what the dog's guarding. 
Harry 	That's what Snape wants.
Hermione  	Bit early for mail, isn't it?
Harry  	But I-I never get mail.
Ron  	Let's open it.
Harry  	It's a broomstick!
Ron  	Thats not just a broomstick, Harry. 
Ron  	It's a Nimbus 2000!
Harry  	But who...?
OIiver  	Scared, Harry?
Harry  	A little.
Oliver  	That's all right. 
Oliver  	I felt the same way before my first game.
Harry  	What happened?
Oliver  	Er, I don't really remember. 
Oliver  	I took a bludger to the head 2 minutes in. 
Oliver  	Woke up in the hospital a week later.
Lee Jordan	Hello, and welcome to Hogwarts' first Quidditch game of the season! 
Lee Jordan	Today's game Slytherin versus Gryffindor!!!
Lee Jordan	The players take their positions as Madam Hooch steps out onto the field to begin the game.
Madam Hooch	Now, I want a nice clean game...from all of you. 
Lee Jordan	The bludgers are up...followed by the Golden Snitch. 
Lee Jordan	Remember, the snitch is worth 150 points. 
Lee Jordan	The seeker who catches the Snitch ends the game.
Lee Jordan	The Quaffle is released...and the game begins!
Lee Jordan	Angelina Johnson scores! 
Lee Jordan	10 points for Gryffindor! 
Harry  	Yes! Whoa!
Hagrid 	Well done!
Lee Jordan	Slytherin takes possession of the Quaffle.
Lee Jordan	Bletchley passes to Captain Marcus Flint.
Harry 	Yes!
Lee Jordan	 Another 10 points to Gryffindor! 
Gryffindors  	Yay!
Flint  	Give me that! 
Crowd  	Boooo!!
Flint	Take that side!
Harry  	Whoa! Whooa!
Hagrid  	What's going on with Harry's broomstick?
Hermione  	It's Snape! 
Hermione  	He's jinxing the broom!
Ron  	Jinxing the broom? 
Ron  	What do we do?
Hermione  	Leave it to me. 
Ron  	Come on, Hermione!
Hermione  	Lacarnum Inflamarae.
Man  	Fire! You're on fire!
Snape  	What? Oh!
Ron  	Go!
Hagrid  	Go go go!
Hagrid	Looks like he's gonna be sick.
Lee  Jordan	He's got the Snitch! 
Lee  Jordan	Harry Potter receives 150 points for catching the Snitch!
Madam Hooch 	Gryffindor win!
All  	YAY!
Draco  	No!
Hagrid  	Yes!
Hermione  	Whoo-hoo!
Crowd  	Go go Gryffindor! Go go Gryffindor! 
Hagrid	Nonsense. 
Hagrid	Why would Snape put a curse on Harry's broom?
Harry 	Who knows. 
Harry 	Why was he trying to get past that 3 headed dog on Halloween?
Hagrid  	Who told you 'bout Fluffy?
Ron  	Fluffy?
Hermione	That thing has a name?
Hagrid 	 Well, of course he's got a name. 
Hagrid 	He's mine. 
Hagrid 	I bought him off an Irish feller I met down at the pub last year. 
Hagrid 	Then I lent him to Dumbledore to guard the
Harry  	Yes?
Hagrid  	Shouldn'ta said that.  No more questions!
Hagrid  	Don't ask any more questions. 
Hagrid  	That's top secret, that is.
Harry  	But Hagrid, whatever Fluffy's guarding, Snape's trying to steal it!
Hagrid  	Codswallop. 
Hagrid  	Professor Snape is a Hogwarts teacher.
Hermione  	Hogwarts teacher or not, I know a curse when I see one. 
Hermione  	I've read all about them. 
Hermione  	You have to keep eye contact. 
Hermione  	And Snape wasn't blinking.
Harry 	Exactly.
Hagrid	Now, you listen to me, all three of you. 
Hagrid	You're meddlin' in things that ought not to be meddled in. 
Hagrid	It's dangerous.
Hagrid	What that dog is guarding is strictly between Professor Dumbledore and Nicholas Flamel.
Harry 	Nicholas Flamel?
Hagrid	I shouldn't have said that. 
Hagrid	I should not have said that. 
Hagrid	I should not have said that. 
Harry	Nicholas Flamel...Who's Nicholas Flamel?
Hermione	I don't know.
Harry	Knight to E-5.
Ron  	Queen to E-5.
Hermione  	That's totally barbaric!
Ron  	That's wizard's chess. 
Ron  	I see you've packed.
Hermione  	See you haven't.
Ron  	Change of plans. 
Ron  	My parents decided to go to Romania to visit my brother, Charlie. 
Ron  	He's studying dragons there!
Hermione  	Good. You can help Harry, then. 
Hermione  	He's going to go the library for information on Nicholas Flamel.
Ron  	We've looked a hundred times!
Hermione  	Not in the restricted section...
Hermione  	Happy Christmas.
Ron  	I think we've had a bad influence on her.
Ron	Harry, wake up! 
Ron	Come on Harry, wake up!
Ron  	Happy Christmas, Harry.
Harry  	Happy Christmas, Ron. 
Harry  	What are you wearing?
Ron  	Oh, Mum made it. 
Ron  	Looks like you've got one too!
Harry  	I've got presents?
Ron  	Yeah!
Harry  	Oh! 
Ron  	There they are. 
Harry  	Your father left this in my possession before he died.
Harry  	It is time it was returned to you.
Harry  	Use it well.
Ron  	What is it?
Harry  	Some kind of...cloak.
Ron  	Well, let's see then. 
Ron  	Put it on.
Ron  	Whoa!
Harry  	My body's gone!
Ron  	I know what that is! 
Ron  	That's an invisibility cloak!
Harry  	I'm invisible??
Ron	They're really rare. 
Ron	I wonder who gave it to you.
Harry	There was no name. 
Harry	It just said, "Use it well."
Harry	Famous fire eaters...
Harry	15th Century Fiends...Flamel...
Harry	Nicholas Flamel...where are you?
Man  	AHHHHHHHHHHHHHHHH!!!!!!!!
Filch	Who's there?! 
Filch	I know you're in there. 
Filch	You can't hide. 
Filch	Who is it? 
Filch	Show yourself!
Quirrell  	Severus...I-I thought...
Snape  	You don't want me as your enemy, Quirrell.
Quirrell 	 W-what do you m-mean?
Snape  	You know perfectly well what I mean. 
Snape  	We'll have another chat soon...
Snape  	When you've had time to decide where your loyalties lie.
Filch  	Oh, Professors. I found this, in the Restricted Section. 
Filch  	It's still hot. 
Filch  	That means there's a student out of bed.
Harry  	Mum? Dad? 
Harry  	Ron! You've really got to see this! 
Harry  	Ron! You've got to see this! 
Harry  	Ron, Ron, come on. Get out of bed!
Ron 	Why?
Harry  	There's something you've got to see. 
Harry  	Now, come on!
Harry  	Come on. Come. Come look, it's my parents!
Ron  	I only see us.
Harry	Look in properly. Go on. 
Harry	Stand there. There. 
Harry	You see them, don't you? 
Harry	Thats my dad
Ron  	That's me! Only, I'm head boy...and 
Ron  	I'm holding the Quidditch cup! 
Ron  	And bloody hell, I'm Quidditch Captain too! 
Ron  	I look good. 
Ron  	Harry, do you think this mirror shows the future?
Harry  	How can it? 
Harry  	Both my parents are dead.
George  	Do you like yours, Ron?
George  	Ron?
Ron	I'll be right back.
Ron	Wanna play chess?
Harry	No.
Ron	Wanna go and visit Hagrid?
Harry	No.
Ron	Harry, I know what you're thinking, but don't.
Ron	There's something not right about that mirror.
Dumbledore  	Back again, Harry?
Dumbledore  	I see that you, like so many before you, have discovered the delights of the Mirror of Erised. 
Dumbledore  	I trust by now you realize what it does. 
Dumbledore  	Let me give you a clue. 
Dumbledore  	The happiest man on earth would look into the mirror and see only himself, exactly as he is.
Harry  	So, then it shows us what we want? 
Harry  	Whatever we want?
Dumbledore  	Yes...and no. 
Dumbledore  	It shows us nothing more or less than the deepest, most desperate desires of our hearts. 
Dumbledore  	Now you, who have never known your family, you see them standing beside you. 
Dumbledore  	But remember this, Harry. 
Dumbledore  	This mirror gives us neither knowledge or truth. 
Dumbledore  	Men have wasted away in front of it, even gone mad. 
Dumbledore  	That is why tomorrow it will be moved to a new home, and I must ask you not to go looking for it again.
Dumbledore  	It does not do to dwell on dreams, Harry, and forget to live.
Hermione	Look at you, playing with your cards.
Hermione	Pathetic!
Hermione	We've got final exams coming up soon.
Ron	I'm ready. Ask me any question.
Hermione	Alright, what are the 3 most crucial ingredients in a Forgetfulness Potion?
Ron	I forgot.
Hermoine	And what, may I ask, do you plan to do if this comes up in the final exam?
Ron	Copy off you.
Hermoine	No, you won't.
Hermoine	Besides, according to Professor McGonagall, we're to be given special quills bewitched with an Anti Cheating Spell.
Ron	That's insulting! 
Ron	It's as if they don't trust us! Dumbledore again!
Ron	Leg-Locker Curse?
Harry	Malfoy.
Ron	You have got to start standing up to people, Neville.
Neville	How? I can barely stand at all!
Seamus	I'll do the countercurse!
Neville	No, that's all I need!
Neville	You to set my bloody kneecups on fire!
Seamus	I don't appreciate the insinuation, Longbottom.
Seamus	Besides, if anyone cared to notice my eyebrows have completely grown back!
Harry	I found him!
Ron	Dumbledore is particularly famous for his defeat of the dark wizard Grindelwald in 1945.
Harry	Go on!
Ron	For the discovery of the twelve uses of dragon blood...and his work on alchemy with his partner, Nicholas Flamel!
Harry	I knew the name sound familiar.
Harry	I read it on the train that day.
Hermione	Follow me!
Neville	Hey! Wait! Where are you going?
Neville	What about the countercurse?
Hermione  	I had you looking in the wrong section! 
Hermione  	How could I be so stupid? 
Hermione  	I checked this out a few weeks ago for a bit of light reading.
Ron  	This is light?
Hermione 	Of course! Here it is! 
Hermione 	Nicholas Flamel is the only known maker of the Philosopher's Stone!
Ron and Harry  	The what?
Hermione  	Honestly, don't you two read? 
Hermione  	The Philosopher's Stone is a legendary substance with astonishing powers. \r\n
Hermione  	It will turn any metal into pure gold and produces the Elixir of Life, which will make the drinker immortal.
Ron  	Immortal?
Hermione  	It means you'll never die.
Ron 	 I know what it means!
Harry	 Shh!
Hermione 	The only stone currently in existence belongs to Mr. Nicholas Flamel, the noted alchemist, who last year celebrated his 665th birthday!
Hermione 	That's what Fluffy's guarding on the 3rd floor. 
Hermione 	That's what's under the trapdoor...
Hermione 	the Philosopher's Stone!
Harry  	Hagrid!
Hagrid	Oh, hello. Sorry, don't wish to be rude, but I'm in no fit state to entertain today. 
All 3  	We know about the Sorcerer's Stone!
Hagrid 	Oh.
Harry  	We think Snape's trying to steal it.
Hagrid  	Snape? Blimey, Harry, you're not still on about him, are you?
Harry  	Hagrid, we know he's after the Stone. 
Harry  	We just don't know why.
Hagrid  	Snape is one of the teachers protecting the Stone! 
Hagrid  	He's not about to steal it!
Harry  	What?
Hagrid  	You heard. Right. 
Hagrid  	Come on, now, I'm a bit preoccupied today.
Harry  	Wait a minute.
Harry  	One of the teachers?
Hermione	Of course! There are other things defending the Stone, aren't there?
Hermione	Spells and enchantments.
Hagrid  	That's right. 
Hagrid  	Waste of bloody time, if you ask me.
Hagrid  	Ain't no one gonna get past Fluffy. 
Hagrid  	Hehe, not a soul knows how. 
Hagrid  	Except for me and Dumbledore. 
Hagrid  	I shouldn't have told you that. 
Hagrid  	I shouldn't have told you that. 
Hagrid  	Oh! Ooh! Ooh! Ooh! Ooh! 
Harry  	Uh, Hagrid, what exactly is that?
Hagrid  	That? It's a ... its um...
Ron 	 I know what that is! 
Ron 	But Hagrid, how did you get one?
Hagrid  	I won it. Off a stranger I met down at a pub. 
Hagrid  	Seemed quite glad to be rid off it, as a matter of fact.
Hermione  	Is that...a dragon?
Ron  	That's not just a dragon. 
Ron  	That's a Norwegian Ridgeback! 
Ron  	My brother Charlie works with these in Romania.
Hagrid  	Isn't he beautiful? Oh. Bless him, look. 
Hagrid  	He knows his mummy. Hehe. 
Hagrid  	Hallo, Norbert.
Harry  	Norbert?
Hagrid  	Yeah, well, he's got to have a name, doesn't he?
Hagrid  	Don't you, Norbert? Dededede.
Hagrid  	Ohh! Oooh, ooh, ooh, well...
Hagrid  	He'll have to be trained up a bit, of course. 
Hagrid  	Who's that?
Harry 	Malfoy.
Hagrid  	Oh, dear.
Harry	Hagrid always wanted a dragon. 
Harry	He told me so the first time I met him.
Ron  	It's crazy. 
Ron  	And worse, Malfoy knows.
Harry  	I don't understand. 
Hermione	Is that bad?
Ron  	It's bad.
McGonagall	Good evening.
McGonagall  	Nothing, I repeat, nothing gives a student the right to walk about the school at night. 
McGonagall  	Therefore, as punishment for your actions, 50 points will be taken.
Harry  	50?!
McGonagall 	Each. And to ensure it doesn't happen again, all four of you will receive detention.
Malfoy	Excuse me, Professor. 
Malfoy	Perhaps I heard you wrong. 
Malfoy	I thought you said..."the four of us."
McGonagall	No, you heard me correctly, Mr. Malfoy. 
McGonagall	You see, as honorable as your intentions were, you too were out of bed after hours. 
McGonagall	You will join your classmates in detention.
Filch  	A pity they let the old punishments die. 
Filch  	There was a time detention would find you hanging by your thumbs in the dungeons. 
Filch  	God, I miss the screaming. 
Filch  	You'll be serving detention with Hagrid tonight.
Filch  	He's got a little job to do inside the dark forest.
Filch  	A sorry lot this, Hagrid. 
Filch  	Oh, good God, man, you're not still on about that bloody dragon, are you?
Hagrid 	Norbert's gone.
Hagrid 	Dumbledore sent him off to Romania to live in a colony.
Hermione  	Well, that's good, isn't it? 
Hermione  	He'll be with his own kind.
Hagrid  	Yeah, but what if he don't like Romania? 
Hagrid  	What if the other dragons are mean to him?
Hagrid  	He's only a baby, after all.
Filch  	Oh, for Gods sake, pull yourself together, man. 
Filch  	You're going into the forest, after all. 
Filch  	Got to have your wits about you.
Malfoy	The forest? I thought that was a joke! 
Malfoy	We can't go in there. 
Malfoy	Students aren't allowed.
Malfoy	 And there are...werewolves!
Filch 	 There's more than werewolves in those trees, lad. 
Filch 	You can be sure of that.
Filch 	Nighty-night.
Hagrid 	Right. Let's go.
Harry 	 Hagrid, what's that?
Hagrid  	What we're here for. 
Hagrid  	See that? That's unicorn's blood, that is. 
Hagrid  	I found one dead a few weeks ago. 
Hagrid  	Now, this one's been injured bad by something. 
Hagrid  	So, it's our job to find the poor beast. 
Hagrid  	Ron, Hermione, you'll come with me.
Ron	Okay.
Hagrid 	And Harry you'll go with Malfoy. 
Malfoy	Okay. Then I get Fang!
Hagrid 	Fine. Just so you know, he's a bloody coward. }
Malfoy	You wait till my father hears about this. 
Malfoy	This is servant's stuff.
Harry 	If I didn't know better, Draco, I'd say you were scared.
Malfoy	Scared, Potter?! 
Malfoy	Did you hear that? 
Malfoy	Come on, Fang.  Scared.
Harry 	What is it, Fang?
Malfoy	AHHHHHHHHH!!! AHHH! HELP!!!!!
Firenze  	Harry Potter, you must leave. 
Firenze  	You are known to many creatures here. 
Firenze  	The forest is not safe at this time. 
Firenze  	Especially for you.
Harry  	But what was that thing you saved me from?
Firenze 	A monstrous creature. 
Firenze 	It is a terrible crime to slay a unicorn. 
Firenze 	Drinking the blood of a unicorn will keep you alive even if you are an inch from death. 
Firenze 	But at a terrible price. 
Firenze 	You have slain something so pure that the moment the blood touches your lips, you will have a half-life. 
Firenze 	A cursed life.
Harry  	But who would choose such a life?
Firenze  	Can you think of no one?
Harry 	 Do you mean to say...that that thing that killed the unicorn...
Harry 	that was drinking its blood...that was Voldemort?
Firenze  	Do you know what is hidden in the school at this very moment?
Harry  	The Sorcerer's Stone.
Hermione  	Harry!
Hagrid 	Hello there, Firenze. 
Hagrid 	I see you've met our young Mr. Potter. 
Hagrid 	You all right there, Harry? 
Firenze  	Harry Potter, this is where I leave you. 
Firenze  	You're safe now. Good luck.
Hermione	You mean, You-Know-Who's out there, right now, in the forest?
Harry  	But he's weak. 
Harry  	He's living off the unicorns. 
Harry  	Don't you see? We had it wrong. 
Harry  	Snape doesn't want the stone for himself, he wants the stone for Voldemort. 
Harry  	With the Elixir of Life, Voldemort will be strong again. 
Harry  	He'll He'll come back. 
Ron  	But if he comes back, you don't think he'll try to kill you, do you?
Harry 	 I think if he'd had the chance, he might have tried to kill me tonight.
Ron 	 And to think, I've been worrying about my Potions final!
Hermione  	Hang on a minute.
Hermione  	We're forgetting one thing. 
Hermione  	Who's the one wizard Voldemort always feared?
Hermione  	 Dumbledore! 
Hermione  	As long as Dumbledore's around, you're safe. 
Hermione  	As long as Dumbledore's around, you can't be touched. 
Hermione 	 I've always heard Hogwarts' end of the year exams were frightful, but I found that rather enjoyable.
Ron  	Speak for yourself.
Ron  	 All right there, Harry?
Harry  	My scar. It keeps burning.
Hermione  	It's happened before.
Harry  	Not like this.
Ron  	Perhaps you should see the nurse.
Harry 	 I think it's a warning.
Harry 	 It means dangers coming. Uhh!  
Harry 	Oh. Of course!
Hermione 	 What is it?
Harry  	Don't you think it's a bit odd that what Hagrid wants more than anything is a dragon, and a stranger shows up and just happens to have one?
Harry  	I mean, how many people wander around with dragon eggs in their pockets? 
Harry  	Why didn't I see it before? 
Harry  	Hagrid, who gave you the dragon egg?
Harry  	 What did he look like?
Hagrid  	I don't know. 
Hagrid  	I never saw his face. 
Hagrid  	He kept his hood up.
Harry  	The stranger, though, you and he must have talked.
Hagrid  	Well, he wanted to know what sort of creatures I looked after. 
Hagrid  	I told him. I said, "After Fluffy, a dragon's gonna be no problem."
Harry 	 And did he seem interested in Fluffy?
Hagrid 	 Well, of course he was interested in Fluffy!
Hagrid 	 How often do you come across a three headed dog, even if you're in the trade? 
Hagrid 	But I told him. I said, "The trick with any beast is to know how to calm him.
Hagrid 	 Take Fluffy, for example, just play him a bit of music and he falls straight to sleep."
Hagrid	  I shouldn't have told you that.
Hagrid	 Where you going?! Wait!
Harry 	 We have to see Professor Dumbledore, immediately!
McGonagall  	I'm afraid Professor Dumbledore is not here. 
McGonagall  	He received an urgent owl from the Ministry of Magic and left immediately for London.
Harry  	He's gone?! Now? 
Harry  	But this is important! 
Harry  	It's about...the Sorcerer's Stone.
McGonagall 	How do you know?
Harry  	Someone's going to try and steal it.
McGonagall  	I don't know how you three found out about the stone, but I can assure you it is perfectly well-protected. 
McGonagall  	Now would you go back to your dormitories? Quietly. 
Harry  	That was no stranger Hagrid met in the village. 
Harry  	It was Snape, which means he knows how to get past Fluffy.
Hermione 	 And with Dumbledore gone
Snape 	 Good afternoon. 
Snape 	Now, what would three young Gryffindors such as yourselves be doing inside on a day like this?
Hermione  	Uh...we were just...
Snape  	You want to be careful.
Snape  	People will think you're up to something.
Hermione  	Now what do we do?
Harry	We go down the trapdoor. Tonight.
Harry  	Trevor.
Ron  	Trevor shh!
Ron  	Go, you shouldn't be here!
Neville	Neither should you. 
Neville	You're sneaking out again, arent you?
Harry  	Now, Neville, listen. We were
Neville  	No! I won't let you!
Neville  	 You'll get Gryffindor in trouble again!
Neville  	 I-I'll fight you.
Hermione 	 Neville, I'm really, really sorry about this
Hermione 	 Petrificus Totalus.
Ron	You're a little scary sometimes...you know that? 
Ron	Brilliant, but scary.
Harry 	 Let's go. Sorry.
Hermione  	Sorry.
Ron  	It's for your own good, you know.
Hermione 	Ow! You stood on my foot!
Ron  	Sorry.
Hermione  	Alohomora.
Ron  	Wait a minute...he's.... 
Harry	Snoring
Harry  	Snape's already been here. 
Harry  	He's put a spell on the harp.
Ron  	Uh. It's got horrible breath!
Harry  	We have to move its paw.
Ron  	What?!
Harry  	Come on! Okay. Push! 
Harry  	I'll go first. 
Harry  	Don't follow until I give you a sign.
Harry  	If something bad happens, get yourselves out 
Harry  	Does it seem a bit...quiet to you?
Hermione 	The harp. It stopped playing.
Ron  	Ew! Yuck! Ugh. 
Harry  	Jump! Go! 
Ron  	Ahh! Whoa. 
Ron  	Lucky this plant-thing is here, really.
Harry 	Whoa! Oh. Ahh!
Hermione 	Stop moving, both of you. 
Hermione 	This is Devil's Snare. 
Hermione 	You have to relax. 
Hermione 	If you don't, it will only kill you faster.
Ron  	Kill us faster?! 
Ron  	Oh, now I can relax!
Ron and Harry	  Hermione!!
Ron	Now what are we gonna do?!
Hermione	Just relax!
Harry  	Hermione! Where are you?!
Hermione	Do what I say. Trust me. 
Ron 	Ahh! Harry!
Ron	Harry!
Hermione	Are you okay?
Harry 	Yeah, yeah, I'm fine.
Ron 	Help!
Hermione  	He's not relaxing, is he?
Harry  	Apparently not.
Ron 	Help! Help me!
Hermione  	We've got to do something!
Harry  	What?
Hermione  	Uh! I remember reading something in Herbology. 
Ron  	Help!
Hermione	Um Devil's Snare, Devil's Scare,it's deadly fun...but will sulk in the sun! 
Hermione	That's it! Devil's Snare hates sunlight!
Hermione	Lumus Solem!
Ron  	Ahhh!
Harry 	Ron, are you okay?
Ron	Yeah.
Harry  	Okay.
Ron	Whew. Lucky we didn't panic!
Harry  	Lucky Hermione pays attention in Herbology.
Hermione  	What is that?
Harry	I don't know. 
Harry	Sounds like wings.
Hermione  	Curious. I've never seen birds like these.
Harry  	They're not birds, they're keys. 
Harry  	And I'll bet one of them fits that door. 
Hermione 	What's this all about?
Harry  	I don't know. Strange.
Ron   	Alohomora! 
Ron   	Well, it was worth a try.
Hermione  	Ugh! What're we going to do? 
Hermione  	There must be 1000 keys up there!
Ron  	We're looking for a big old fashioned one. 
Ron  	Probably rusty like the handle.
Harry  	There! I see it!
Harry  	The one with the broken wing!
Hermione  	What's wrong, Harry?
Harry  	It's too simple.
Ron  	Oh, go on, Harry! 
Ron  	If Snape can catch it on that old broomstick, you can! 
Ron  	You're the youngest seeker in a century!
Ron  	This complicates things a bit!
Harry  	Catch the key!
Ron  	Hurry up!
Hermione  	I don't like this. 
Hermione  	I don't like this at all.
Harry  	Where are we? A graveyard.
Ron 	This is no graveyard. 
Ron 	It's a chessboard.
Harry 	There's the door.
Hermione  	Now what do we do?
Ron 	 It's obvious, isn't it? 
Ron 	We've got to play our way across the room. 
Ron 	All right. Harry, you take the empty Bishop's square. 
Ron 	Hermione, you'll be the Queen's side castle. 
Ron 	As for me, I'll be a knight.
Hermione 	What happens now?
Ron	Well, white moves first, and then...we play. 
Hermione 	Ron, you don't suppose this is going to be like...real wizard's chess, do you?
Ron  	You there! D-5! 
Ron  	Yes, Hermione, I think this is going to be exactly like wizard's chess!
Ron  	Castle to E-4!  
Ron  	Pawn to C-3!
Harry  	Wait a minute.
Ron  	You understand right, Harry. 
Ron  	Once I make my move, the Queen will take me...then you'll be free to check the King.
Harry  	No, Ron! No!
Hermione 	 What is it?
Harry  	He's going to sacrifice himself!
Hermione 	No, Ron, you can't!
Hermione 	There must be another way!
Ron	Do you want to stop Snape from getting that Stone or not?
Ron	Harry, it's you that has to go on. I know it. 
Ron	Not me, not Hermione, you. 
Ron	Knight...to H-3.
Ron  	Check.
Ron  	Ahhhh!
Harry  	RON! 
Harry  	NO! Don't move! Dont forget, we're still playing. 
Harry  	Checkmate. 
Harry  	Take care of Ron. Then, go to the owlery. 
Harry  	Send a message to Dumbledore. 
Harry  	Ron's right...I have to go on.
Hermione  	You'll be okay, Harry. 
Hermione  	You're a great wizard, you really are.
Harry  	Not as good as you.
Hermione	Me? Books and cleverness? 
Hermione	There are more important things. 
Hermione	Friendship, and bravery. 
Hermione	And Harry, just be careful.
Harry 	You? No. It can't be...Snape. He was the one
Quirrell 	Yes. He does seem the type, doesn't he? 
Quirrell 	Next to him, who would suspect, "p-p-poor s-stuttering Professor Quirrell?"
Harry  	B-but, that day, during the Quidditch Match, Snape tried to kill me.
Quirrell  	No, dear boy. I tried to kill you! 
Quirrell  	And trust me, if Snape's cloak hadn't caught fire and broken my eye contact, I would have succeeded. 
Quirrell  	Even with Snape muttering his little counter-curse.
Harry  	Snape was trying to...save me?
Quirrell 	I knew you were a danger right from the off. 
Quirrell 	Especially after Halloween.
Harry 	Th-then you let the troll in.
Quirrell  	Very good Potter, yes. 
Quirrell  	Snape, unfortunately, wasn't fooled. 
Quirrell  	While everyone else was running to the dungeon, he went to the 3rd floor to head me off. 
Quirrell  	He, of course, never trusted me again.
Quirrell  	He rarely left me alone. 
Quirrell  	But he doesn't understand. 
Quirrell  	I'm never alone. Never. 
Quirrell  	Now...what does this mirror do? 
Quirrell  	I see what I desire. 
Quirrell  	I see myself holding the stone. 
Quirrell  	But how do I get it?
Voldemort 	Use the boy
Quirrell  	Come here, Potter, now!
Quirrell  	Tell me. What do you see?
Quirrell 	What is it?! What do you see?!
Harry  	I-I'm shaking hands with Dumbledore. 
Harry  	I've won the house cup.
Voldemort	He lies.
Quirrell	Tell the truth! What do you see?!
Voldemort	Let me speak to him.
Quirrell  	Master, you are not strong enough.
Voldemort	I have strength enough for this. 
Voldemort	Harry Potter. We meet again.
Harry 	Voldemort.
Voldemort  	Yes. You see what I have become? 
Voldemort  	See what I must do to survive? 
Voldemort  	Live off another. A mere parasite. 
Voldemort  	Unicorn blood can sustain me, but it cannot give me a body of my own. 
Voldemort  	But there is something that can. 
Voldemort  	Something, that conveniently enough, lies in your pocket!
Voldemort  	Stop him! 
Voldemort  	Don't be a fool! 
Voldemort  	Why suffer a horrific death when you can join me and live?!
Harry  	Never!
Voldemort  	Haha. Bravery. Your parents had it too. 
Voldemort  	Tell me, Harry, would you like to see your mother and father again? 
Voldemort  	Together, we can bring them back. 
Voldemort  	All I ask for is something in return. 
Voldemort  	That's it, Harry. 
Voldemort  	There is no good and evil. 
Voldemort  	There is only power, and those too weak to seek it. 
Voldemort  	Together, we'll do extraordinary things. 
Voldemort  	Just give me the stone! 
Harry  	You liar!
Voldemort	Kill him!
Quirrell 	Ahh! Ahh! What is this magic?
Voldemort  	Fool! Get the stone!
Quirrell	Ahhhhhhhhhh!
Voldemort  	Arrrhhhhhh!
Harry  	Ahhhhhhhhh!
Dumbledore 	Good afternoon, Harry. 
Dumbledore 	Ah. Tokens from your admirers?
Harry 	Admirers?
Dumbledore	What happened down in the dungeons between you and Professor Quirrell is a complete secret, so, naturally, the whole school knows. 
Dumbledore	Ah, I see your friend Ronald has saved you the trouble of opening your Chocolate Frogs.
Harry 	Ron was here? 
Harry 	Is he all right? 
Harry 	What about Hermione?
Dumbledore  	Fine. They're both just fine.
Harry 	But, what happened to the Stone?
Dumbledore  	Relax, dear boy. The stone has been destroyed. 
Dumbledore  	My friend Nicholas and I had a little chat and agreed it was best all around.
Harry	But Flamel, he'll die, won't he?
Dumbledore	He has enough Elixir to set his affairs in order. 
Dumbledore	But yes, he will die.
Harry  	How is it I got the Stone, sir? 
Harry  	One minute I was staring in the mirror, and the next...
Dumbledore	Ah. You see, only a person who wanted to find the Stone, find it, but not use it, would be able to get it. 
Dumbledore	That is one of my more brilliant ideas. 
Dumbledore	And between you and me thats saying something.
Harry  	Does that mean, with the Stone gone, I mean, that Voldemort can never come back?
Dumbledore 	Ah, I'm afraid there are ways in which he can return. 
Dumbledore 	Harry, do you know why Professor Quirrell couldn't bear to have you touch him?
Dumbledore 	It was because of your mother. 
Dumbledore 	She sacrificed herself for you, and that kind of act leaves a mark. 
Dumbledore 	No, no, this kind of mark cannot be seen.
Dumbledore 	It lives in your very skin.
Harry 	What is it?
Dumbledore	Love, Harry, love. 
Dumbledore	Ah. Bertie Bott's Every Flavour Beans. 
Dumbledore	I was most unfortunate in my youth to come across a vomit flavoured one, and since then I have lost my liking for them. 
Dumbledore	But I think I could be safe with a nice toffee...
Dumbledore	Mm. Alas. Earwax.
Harry	All right there, Ron?
Ron	All right? You?
Harry	All right. Hermione?
Hermione	Never better.
Dumbledore	Another year gone. 
Dumbledore	And now, as I understand it, the house cup needs awarding, and the points stand thus. 
Dumbledore	In fourth place, Gryffindor with 312 points. 
Dumbledore	Third place, Hufflepuff, with 352 points. 
Dumbledore	In second place, Ravenclaw, with 426 points
Dumbledore	And in first place, with 472 points, Slytherin House.
Students	Whoo! Yeah!
Malfoy	Nice one, Mate! 
Dumbledore 	Yes, yes, well done Slytherin, well done Slytherin. 
Dumbledore 	However, recent events must be taken into account. 
Dumbledore 	And I have a few last minute points to award. 
Dumbledore 	To Miss Hermione Granger, for the use of cool intellect when others were in great peril, 50 points. 
Harry	Good job.
Dumbledore	Second, to Mr. Ronald Weasley, for the best played game of chess that Hogwarts has seen these many years...50 points. 
Dumbledore	And third, to Mr. Harry Potter, for pure nerve and outstanding courage, I award Gryffindor house 60 points. 
Hermione	We're tied with Slytherin!
Dumbledore	And finally, it takes a great deal of bravery to stand up to your enemies, but a great deal more to stand up to your friends. 
Dumbledore	I award 10 points to Neville Longbottom.
Dumbledore	Assuming that my calculations are correct, I believe that a change of direction is in order. 
Dumbledore	Gryffindor wins the House Cup!
Hagrid	Yes!
Seamus	Yeah! We won!!
Hagrid	Come on now, hurry up. You'll be late. 
Hagrid	Train's leaving. 
Hagrid	Go on. Go on. Come on. Hurry up.
Hermione	Come on, Harry.
Harry	One minute. 
Hagrid	Thought you were leaving without saying good-bye, didja? 
Hagrid	This is for you.
Harry	Thanks, Hagrid. 
Hagrid	Oh. Go on...on with you. 
Hagrid	Oh, listen, Harry, if that dolt of a cousin of yours, Dudley, gives you any grief, you could always, um, threaten him with a nice pair of ears to go with that tail of his.
Harry	But Hagrid, we're not allowed to do magic away from Hogwarts. You know that.
Hagrid	I do. But your cousin don't, do he? Eh? Off you go.
Hermione	Feels strange to be going home, doesn't it?
Harry	I'm not going home. Not really.
\.


--
-- Data for Name: potions; Type: TABLE DATA; Schema: public
--

COPY public.potions (name, known_ingredients, effect, characteristics, difficulty_level) FROM stdin;
Ageing Potion	Newt spleens , Bananas	Ages drinker temporarily	Green	Advanced
Amortentia	\N	Love Potion that causes a powerful infatuation or obsession in the drinker	Mother-of-pearl sheen, Spiralling steam, Scent is multi-faceted and varies based on what the person likes	Advanced
Antidote to Veritaserum	\N	Counters the effect of Veritaserum	\N	\N
Babbling Beverage	Valerian sprigs, Aconite, Dittany	Causes the drinker to speak nonsense	\N	\N
Baruffio's Brain Elixir	Leaping Toadstools, Frog Brains, Runespoor eggs, Powdered dragon claw	Allegedly increases one's brain power	Green in colour	\N
Befuddlement Draught	Scurvy grass, Lovage, Sneezewort	Recklessness	Dark green in colour	\N
First Love Beguiling Bubbles	\N	Causes the drinker to become infatuated with the giver of the potion	\N	\N
Fire Protection Potion	Bursting mushrooms, Salamander blood, Wartcap powder	Protects drinker from fire	Purple or Black	Beginner
Tolipan Blemish Blitzer	Dragon claw	Treats acne	White in colour, Thick paste consistency	\N
Blood-Replenishing Potion	\N	Replenishes lost blood	Dark red in colour	\N
Bruise removal paste	\N	Heals bruises in an hour	Thick, yellow paste	\N
Bundimun Secretion	\N	Doxycide, Bundimun Pomade, Cleaning products	Lime green in colour, Emits vapours	\N
Burn-healing paste	\N	Heals burns	Orange	\N
Calming Draught	\N	Calms the drinker	Blue in colour	\N
Caxambu Style Borborygmus Potion	\N	Provokes stomach growling	\N	\N
Chelidonium Miniscula	Dark yellow in colour	\N	\N	\N
Confusing Concoction	Scurvy grass, Lovage, Sneezewort	Confusion	\N	Simple to moderate
Cough potion	\N	Cures coughing	\N	\N
Cupid Crystals	\N	Causes the drinker to become infatuated with the giver of the potion	\N	\N
Cure for Boils	Dried nettles, 6 snake fangs, 4 horned slugs, 2 porcupine quills, Pungous Onions, Flobberworm Mucus, Ginger root, Shrake spines	Removes boils	Blue, Emits pink smoke	Beginner
Death potion	\N	Highly corrosive, death on contact	Black in colour	Advanced
Deflating Draught	\N	Deflates the target	\N	\N
Developing solution	\N	Develops moving photographs	\N	\N
Doxycide	Bundimun Ooze, Streeler shells, Dragon liver, Hemlock essence, Tormentil tincture, Cowbane essence	Temporarily stuns Doxies so that the pests can be removed from a home	Black in colour, Typically delivered as a spray	\N
Dr Ubbly's Oblivious Unction	\N	Heals wounds left by thoughts	\N	\N
Draught of Living Death	Standard potioning water, Powdered Root of Asphodel, Infusion of Wormwood, Valerian root, A Sopophorous bean, A Sloth brain	Causes the drinker to fall into a deep, death-like slumber	Turns pale lilac colour then clear	Advanced
Draught of Peace	Powdered moonstone, Syrup of Hellebore, Powdered Unicorn horn, Powdered Porcupine quills	Relieves anxiety	Light silver colour and vapour	Advanced
Potion for Dreamless Sleep	\N	Drowsiness , dreamless sleep	Purple in colour	\N
Emerald Potion	Emerald green in colour, Glows phosphorescently	Induces fear, delirium, intense stomach pain and extreme thirst in the drinker	\N	\N
Elixir of Life	Philosopher's Stone	Immortality	\N	\N
Elixir to Induce Euphoria	Shrivelfig, Porcupine quills, Peppermint sprigs, Sopophorous beans, Wormwood	Induces happiness	Sunshine yellow in colour, Sweet, Aromatic, Emits rainbow when finished	Advanced
Everlasting Elixirs	\N	\N	\N	\N
Essence of Insanity	\N	\N	\N	\N
Fake protective potions	Bubotuber Pus, Gravy	Supposedly protect the drinker from the effects of dark magic (likely useless)	Fraudulent solutions	Beginner
Felix Felicis	Ashwinder egg, Squill bulb, Murtlap tentacle, Tincture of thyme, Occamy eggshell, Powdered common rue	Makes the drinker lucky, Giddiness and recklessness with overuse, Extremely toxic in large quantities, Highly disastrous if brewed incorrectly	Droplets leap like goldfish above potion's surface when in cauldron	Advanced
Fergus Fungal Budge	Onion juice, Jewelweed, Neem oil	Treats ringworm, fungicide, Potential negative side effects if used by elves	\N	\N
Flesh-Eating Slug Repellent	Repels Flesh-Eating Slugs	\N	\N	\N
Forgetfulness Potion	2 drops of Lethe River Water, 2 Valerian sprigs, 2 measures of Standard Ingredient, 4 mistletoe berries	Memory loss	Orange in colour	Beginner
Garrotting Gas	\N	Causes choking, possibly suffocation	Colourless	\N
Hair-Raising Potion	Rat tails, Porcupine quills, Billywig stings	Raises hair up on end	Green colour	\N
Heartbreak Teardrops	\N	Causes the drinker to become infatuated with the giver of the potion	Red in colour	\N
Herbicide Potion	Flobberworm mucus, Horklump juice, Lionfish spines, Standard Ingredient	Kills or damages plants	Green	Advanced
Hiccoughing Solution	\N	Presumably causes hiccoughs	\N	\N
Invigoration Draught	Alihotsy leaves, Dried billywig stings, Peppermint, Stewed Mandrake, Infusion of Wormwood,\r\nHoneywater, Vervain, infusion, Scurvy grass, Lovage	Energises the drinker	Orange	O.W.L. level
Kissing Concoction	\N	Causes the drinker to become infatuated with the giver of the potion	\N	\N
Laxative Potion	Two scrumples of an unknown ingredient, An ingredient used in a furnace, Agrimonia	Laxative	\N	\N
Love Potion Antidote	Wiggentree twigs, Castor oil, Extract of Gurdyroot	Serves as an antidote for Love Potion	Clear, colourless	\N
Madame Glossy's Silver Polish	\N	Polishes silver objects	\N	\N
Mandrake Restorative Draught	Stewed Mandrake	Returns transfigured or cursed individuals to their original state	\N	\N
Mouth Itching Antidote	Pale green in colour	Cures mouth itching	\N	\N
Mrs Skower's All-Purpose Magical Mess Remover	\N	Cleans stains	Strong acrid odour	\N
Murtlap Essence	Murtlap tentacles	Soothes and heals cuts and abrasions	Blue in colour	\N
Pepperup Potion	Bicorn horn, Mandrake root	Warms up the recipient and cures common cold, Steam emits from drinker's ears	\N	\N
Polyjuice Potion	Lacewing flies (stewed 21 days), Leeches, Powdered bicorn horn, Knotgrass, Fluxweed (picked at full moon), Shredded Boomslang skin, A bit of the person one wants to turn into (typically hair)	Allows a human drinker to temporarily assume the form of another person	Before addition of final ingredient: Thick and mud-like, Bubbles slowly\r\nAfter addition of final ingredient: Taste and colour vary depending on the person being turned into	Advanced
Rat tonic	\N	Healing potion for rats, Abnormal growth of the rat if too much is drunk	Green-coloured	\N
Regeneration potion	Bone of the father, Flesh of a servant, Blood of a foe	Helps restore non-corporeal wizards to their bodies	\N	Advanced
Rudimentary body potion	Snake venom, Unicorn blood	Helps restore non-corporeal wizards to a rudimentary bodies/sustains rudimentary bodies	\N	Advanced
Shrinking Solution	Minced daisy roots, Peeled Shrivelfig, Sliced caterpillars, One rat spleen, A dash of leech juice, A splash of cowbane, Wormwood	Causes living beings to shrink to a smaller form	Acid green in colour	\N
Skele-Gro	1 Chinese Chomping Cabbage, 3 Puffer-fish, 5 Scarab beetles	Restores bones	Smokes when poured, Vile taste, Burns on the way down	Above second year
Sleekeazy's Hair Potion	Gomas Barbadensis, Asian Dragon Hair, Petroleum Jelly	Makes hair more manageable	\N	\N
Sleeping Draught	4 sprigs of Lavender, 6 measures of Standard Ingredient, 2 blobs of Flobberworm Mucus, 4 Valerian sprigs	Make the drinker quickly fall into a deep but temporary sleep	Dark Purple	Advanced
Strengthening Solution	Salamander blood, Powdered  Griffin claw	Superhuman strength	Turquoise in colour	Moderate to advanced
Swelling Solution	Puffer-fish eyes, Dried nettle, Bat spleens	Causes enlargement on contact	\N	Beginner
Ten-Second Pimple Vanisher	\N	Treats boils, pimples, blackheads and acne	\N	\N
Thick golden potion	\N	Healing, curse quarantining	Golden in colour	\N
Truth serum	Jobberknoll feathers	Drinker tells the truth	\N	\N
Veritaserum	\N	Forces drinker to speak the truth	Clear and odourless like water	Advanced
Weedosoros	\N	Highly poisonous	Deep brown in colour	\N
Wideye Potion	6 snake fangs, 4 measures of Standard Ingredient, 6 dried Billywig stings,  2 sprigs of Wolfsbane	Prevents sleeping, Awakens victim	\N	Beginner
Wit-Sharpening Potion	Ground scarab beetles, Cut ginger roots, Armadillo bile	Improves intellect	Purple in colour	Moderate
Wolfsbane Potion	Wolfsbane	Eases the symptoms of lycanthropy; prevents werewolves from losing their minds post-transformation.	Faint blue smoke when completed, Unpleasant taste	Advanced
Wound-cleaning potion	\N	Antiseptic	Purple liquid, Smokes on contact, Stings on contact	\N
\.


--
-- Data for Name: spells; Type: TABLE DATA; Schema: public
--

COPY public.spells (name, incantation, type, effect, light) FROM stdin;
Summoning Charm	Accio	Charm	Summons an object	None
Age Line	Unknown	Charm	Prevents people above or below a certain age from access to a target	Blue
Water-Making Spell	Aguamenti	Charm, Conjuration	Conjures water	Icy blue
Launch an object up into the air	Alarte Ascendare	Charm	Rockets target upward	Red
Albus Dumbledore's Forceful Spell	Unknown	Spell	Great Force	None
Unlocking Charm	Alohomora	Charm	Unlocks target	Invisible, blue, yellow, or purple
Healing Spell	Anapneo	Healing spell, Vanishment	Clears airway	\N
Hex that grows antlers on the head	Anteoculatia	Hex	Grows antlers on head	Red
Anti-Cheating Spell	Unknown	Charm	Prevents cheating	Purple
Anti-Disapparition Jinx	Unknown	Jinx	Prevents Disapparition within a certain area	\N
Anti-intruder jinx	Unknown	Jinx	Repels intruders	\N
Antonin Dolohov's curse	Unknown	Curse	Injuries capable of killing	Purple
Revealing Charm	Aparecium	Charm	Reveals hidden writing	\N
Tracking spell	Appare Vestigium	Charm	Reveals traces of magic, including footprints and track marks	Swirl of gold
Apparition	None	Transportation	Magically transports the caster	None
Aqua Eructo Charm	Aqua Eructo	Charm	Jet of water	Ice Blue
Spider repelling spell	Arania Exumai	Spell	Repels spiders	Blue
Slowing Charm	Arresto Momentum	Charm	Slows or stops target's velocity	None
Arrow-shooting spell	\N	Conjuration	Fires arrows from the caster's wand	\N
Ascendio	Ascendio	Charm	Lifts caster	None
Killing Curse	Avada Kedavra	Curse	Instantaneous death	Green
Avifors Spell	Avifors 	Transfiguration	Transforms the target into a bird.	Blue
Avenseguim	Avenseguim	Charm	Turns object into tracking device	Orange
Bird-Conjuring Charm	Avis	Conjuration, Charm	Conjures birds	Blue
Babbling Curse	Unknown	Curse	Uncontrollable babbling	\N
Badgering	Unknown	Transfiguration	Turns target human into a badger	\N
Bat-Bogey Hex	Unknown	Hex	Transforms target's bogeys into bats	\N
Baubillious	Baubillious	Charm	Jet of white sparks	White
Bedazzling Hex	Unknown	Hex	Disguises things	\N
Bewitched Snowballs	Unknown	Charm	Charms snowballs to follow and harass a designated target	\N
Bluebell Flames	Unknown	Charm	Conjures bluebell flames	Bright blue
Blue sparks	Unknown	Charm	Jet of blue sparks	Blue
Exploding Charm	Bombarda	Charm	Small explosion	None
Exploding Charm 2	Bombarda Maxima	Charm	Powerful explosion	White
Brackium Emendo	Brackium Emendo	Healing spell, Charm	Mends bones	Blue
Bravery Charm	Unknown	Charm	Enhances teammates against foes	\N
Bridge-conjuring spell	Unknown	Conjuration	Conjures bridges	None
Broom jinx	Unknown	Jinx	Makes a broomstick attempt to buck its rider off	\N
Bubble-Head Charm	Unknown	Charm	Creates bubble protecting the head	\N
Bubble-producing spell	Unknown	Conjuration	Creates a stream of non-bursting bubbles	None
Hair Loss Curse	Calvorio	Curse	Removes victim's hair	Red or Purple
Cantis	Cantis	Jinx	Makes target sing	Pink
Extension Charm	Capacious extremis	Charm	Increases interior space	\N
Seize and Pull Charm	Carpe Retractum	Charm	Pull caster towards object, Pull object towards caster	Orange or Purple
Cascading Jinx	Unknown	Jinx	Attacks multiple enemies	Blue
Caterwauling Charm	Unknown	Charm	Sets off a high-pitched shriek if entered	\N
Cauldron to Sieve	\N	Transfiguration	Turns a cauldron into a sieve	\N
Cauldron to badger	\N	Transformation	Transforms a cauldron into a badger.	\N
Cave inimicum	Cave inimicum	Charm	Concealment	None
Cheering Charm	Unknown	Charm	Creates joy	\N
Circumrota	Circumrota	Charm	Rotates an object	\N
Cistem Aperio	Cistem Aperio	Charm	Opens chests	White
Locking Spell	Colloportus	Charm	Locks doors	None
Stickfast Hex	Colloshoo	Hex	Sticks shoes to floor	\N
Colour Change Charm	Colovaria	Charm	Changes colour	Red
Blasting Curse	Confringo	Curse	Explosion	Fiery Orange
Confundus Charm	Confundo	Charm	Confuses the target	Pink
Conjunctivitis Curse	Unknown	Curse	Irritates eyes	\N
Cornflake skin spell	Unknown	Dark charm	Makes skin appear like cornflakes	\N
Cracker Jinx	Unknown	Jinx	Conjures exploding Wizard Crackers	\N
Cribbing Spell	Unknown	Spell	Assists the caster in cheating on written papers.	\N
Crinus Muto	Crinus Muto	Transfiguration	Transforms hair	White
Cruciatus Curse	Crucio	Curse	Excruciating pain	Red or None
Gouging Spell	Defodio	Charm	Carves through material	\N
Eradication Spell	Deletrius	Charm, Counter-charm	Erases image from Reverse Spell	None
Densaugeo	Densaugeo	Hex 	Elongates teeth	Violet
Deprimo	Deprimo	Charm	Blasts holes in ground	Green
Banishing Charm	Depulso	Charm	Sends target away	White or Red
Descendo	Descendo	Charm	Lowers target	Blue
Desk Into Pig	\N	Transfiguration	Transfigures desks into pigs	\N
Deterioration Hex	Unknown	Hex	Impairs foes	\N
Severing Charm	Diffindo	Charm	Cuts objects	Light green, pink or red
Diminuendo	Diminuendo	Charm	Shrinks objects	White
Dissendium	Dissendium	Charm	Reveals secret passages	None
Disillusionment Charm	Unknown	Charm	Disguises target as surroundings	White
Draconifors Spell	Draconifors	Transfiguration	Turns object into dragon	Fiery orange
Drought Charm	Unknown	Charm	Dries up small bodies of water	\N
Ducklifors Jinx	Ducklifors	Transfiguration, Jinx	Turns organisms to ducks	Yellow or Purple
Hardening Charm	Duro	Charm	Turns object to stone	None
Ears to kumquats	\N	Transfiguration	Transfigures target's ears into kumquats	\N
Ear-shrivelling Curse	Unknown	Curse	Causes ears to wither	\N
Ebublio Jinx	Ebublio	Jinx	Traps target in giant bubble	Blue
Engorgement Charm	Engorgio	Charm	Causes swelling	Icy blue
Engorgio Skullus	Engorgio Skullus	Hex	Swells head	Red or Purple
Insect Jinx	Entomorphis	Transfiguration Jinx	Turns into insect	Red or Purple
Entrail-Expelling Curse	Unknown	Curse	Expels entrails	\N
Epoximise	Epoximise	Transfiguration spell	Bonds two objects	\N
Erecto	Erecto	Charm	Erects a structure	None
Evanesce	Evanesce	Transfiguration	Vanishes objects	Bluish-white
Vanishing Spell	Evanesco	Transfiguration	Vanishes things	None
Everte Statum	Everte Statum	Charm	Makes opponent stumble, Causes sharp pain	Orange
Patronus Charm	Expecto Patronum	Charm	Conjures a spirit guardian	Silver
Disarming Charm	Expelliarmus	Charm	Disarms an opponent	Scarlet
Expulso Curse	Expulso	Curse	Blows things up	Blue
Extinguishing Spell	Unknown	Charm	Extinguishes fires	\N
False memory charm	Unknown	Charm	Implants a false memory in the victim	\N
Feather-light charm	Unknown	Charm	Minimises object's weight	\N
Ferret to human	Unknown	Transfiguration	Changes ferrets into humans	None
Bandaging Charm	Ferula	Healing Spell, Charm, Conjuration	Bandages target	\N
Fianto Duri	Fianto Duri	Charm	Most likely hardens magical shields	Blueish white
Fidelius Charm	Unknown	Charm	Conceals a secret	\N
Fiendfyre	Unknown	Curse	Unleashes cursed fire	Fire
Finestra spell	Finestra	Charm	Shatters glass	Blue
General Counter-Spell	Finite	Counter-spell	Terminates all spell effects	Red
Finger-removing jinx	Unknown	Jinx	Removes a person's fingers	\N
Firestorm	Unknown	Charm	Ring of fire	Crimson and gold
Flagrante Curse	Flagrante	Curse	Causes objects to burn on contact	\N
Flagrate	Flagrate	Charm	Writes in midair	Fiery scarlet
Flame-Freezing Charm	Unknown	Charm	Makes fire harmless	White
Flask-conjuring spell	Unknown	Conjuration	Conjures flask	None
Flintifors	Flintifors	Transfiguration	Turns target into matchboxes	\N
Knockback Jinx	Flipendo	Jinx	Knocks target back	Blue
Knockback Jinx Duo	Flipendo	Jinx	Knocks target back	Red
Flipendo Tria	Flipendo Tria	Jinx	More powerful version of Flipendo	Blue
Flying Charm	Unknown	Charm	Allows an object to fly	\N
Smokescreen Spell	Fumos	Charm	Defensive smokescreen	Grey
Fumos Duo	Fumos Duo	Charm	Multiple concealing smokescreens	Dark Red
Pimple Jinx	Furnunculus	Jinx	Causes pimples to erupt	Gold 
Fur spell	Unknown	Charm	Causes fur to grow on someone	\N
Doubling Charm	Geminio	Charm	Duplicates an object	None
Freezing Spell	Glacius	Charm	Freezes target	Blue
Glacius Duo	Glacius Duo	Charm	Freezes the target	Blue
Glacius Tria	Glacius Tria	Charm	Freezes target enemy	Blue
Glisseo	Glisseo	Charm	Turns stairs into a slide	None
Green Sparks	Unknown	Charm	Jet of green sparks	Green
Gripping Charm	Unknown	Charm	Makes holding easier	\N
Hair-thickening Charm	Unknown	Charm	Causes hair to grow longer and thicker	\N
Harmonia Nectere Passus	Harmonia Nectere Passus	Charm	Repairs Vanishing Cabinets	None
Herbifors Spell	Herbifors	Transfiguration	Transforms target into flowers	Red or Purple
Herbivicus Charm	Herbivicus	Charm	Rapidly grows plants	Green
Dumbledore's Army parchment jinx	Unknown	Jinx	Causes boils to spell "SNEAK" on the face of a traitor	\N
Homing spell	Unknown	Dark Arts	Offensive spells; will follow their target	Orange or Green
Human Presence Revealing Spell	Homenum Revelio	Charm 	Reveals human presence	None
Homonculous Charm	Unknown	Charm 	When cast onto a map, it enables to track the movements of every person in the mapped area	\N
Homorphus Charm	Unknown	Charm 	May temporarily change a transformed werewolf back into their human form (according to Gilderoy Lockhart, it cures lycanthropy)	\N
Horn tongue hex	Unknown	Hex	Transforms target's tongue into a horn	\N
Horton-Keitch Braking Charm	Unknown	Charm	Allow broomsticks to brake more easily	\N
Horcrux-making spell	Unknown	Dark Arts	Prepared a receptacle to become a Horcrux	\N
Hot-Air Charm	Unknown	Charm	Jet of hot air	None
Hour-Reversal Charm	Unknown	Charm	Reverses time	Blue
Hover Charm	Unknown	Charm	Makes objects hover	Pink
Hurling Hex	Unknown	Hex	Unclear, possibly causes a broomstick to attempt to hurl its rider off.	\N
Illegibilus	Illegibilus	Charm	Makes text illegible	\N
Freezing Charm	Immobulus	Charm	Stops movement and actions of the target	Blue
Impediment Jinx	Impedimenta	Jinx	Hinders movement	Turquoise
Imperius Curse	Imperio	Curse	Total control over the victim	None
Imperturbable Charm	Unknown	Charm	Invisible barrier	\N
Impervius Charm	Impervius 	Charm	Waterproofs an object	None
Inanimatus Conjurus Spell	Unknown	Transfiguration	Presumably conjuresinanimate objects	\N
Incarcerous Spell	Incarcerous	Conjuration	Binds target in ropes	None
Fire-Making Spell	Incendio	Charm	Conjures flames	Orange and Red
Incendio Duo Spell	Incendio	Charm	Conjures flames	Green
Incendio Tria	Incendio Tria	Charm	Conjures blue flames	Blue
Inflating Charm	Inflatus	Charm	Inflates target	Blue
Informous Spell	Informous	Charm	Adds to the Folio Bruti	Blue
Instant Scalping Hex	Unknown	Hex	Instantly scalps hair	\N
Intruder Charm	Unknown	Charm	Detects intruders and sounds an alarm	\N
Jelly-Legs Curse	Locomotor Wibbly	Curse, Jinx	Legs become wobbly	Orange
Jelly-Brain Jinx	Unknown	Jinx	Dulls mental abilities	\N
Jelly-Fingers Curse	Unknown	Curse	Fingers become wobbly	\N
Knee-reversal hex	Unknown	Hex	Puts knees on backward	\N
Lacarnum Inflamari	Lacarnum Inflamari	Charm	Ignites cloaks	Orange
Langlock	Langlock	Jinx	Sticks tongue to roof of the mouth	None
Lapifors Spell	Lapifors	Transfiguration	Turns target into rabbit	Green
Leek jinx	Unknown	Jinx	Leeks sprout from ears	\N
Legilimency Spell	Legilimens	Charm	Lets caster see into the mind of another person	Psychadelic transparent wave
Levicorpus	Levicorpus	Jinx	Suspends people by the ankles	Green
Liberacorpus	Liberacorpus	Counter-jinx	Counteracts Levicorpus	None
Locomotion Charm	Locomotor	Charm	Moves objects in midair	None
Leg-Locker Curse	Locomotor Mortis	Curse	Sticks legs together	Purple
Wand-Lighting Charm	Lumos	Charm	Illuminates the wand tip	White
Wand-Lighting Charm Duo	Lumos Duo	Charm	Focused beam of light	White
Lumos Maxima	Lumos Maxima	Charm	Produces bright light	White
Lumos Solem Spell	Lumos Solem	Charm	Produces sunlight	Bright yellow
Magicus Extremos	Magicus Extremos	Charm	Temporarily increases casters' spell power	Pink
Melofors Jinx	Melofors	Conjuration, Jinx	Encases head in pumpkin	Orange
Meteolojinx Recanto	Meteolojinx Recanto	Counter-charm	Causes weather effects caused by incantations to cease	None
Tongue-Tying Curse	Mimblewimble	Curse	Ties tongue in knot	Blue
Ministry of Magic Fog	Unknown	Patented Charm	Produces special fog (for concealment of certain locations)	\N
Mobiliarbus	Mobiliarbus	Charm	Levitates wooden things	Blue
Mobilicorpus	Mobilicorpus	Charm	Moves bodies	None
Cushioning Charm	Molliare	Charm	Invisible cushion	\N
Dark Mark	Morsmordre	Curse	Conjures Dark Mark	Green
Curse of the Bogies	Mucus ad Nauseam	Curse	Nasty cold & runny nose	Green
Muffliato Charm	Muffliato 	Charm	Conceals sound	None
Multicorfors Spell	Multicorfors 	Transfiguration	Changes clothes	Red
Mutatio Skullus	Mutatio Skullus	Hex	Grows extra heads	\N
Wand-Extinguishing Charm	Nox	Charm	Extinguishes wandlight	\N
Nebulus	Nebulus	Charm	Conjures fog	Grey
Oculus Reparo	Oculus Reparo	Charm	Repairs glasses	None
Obliteration Charm	Unknown	Charm	Removes footprints	\N
Memory Charm	Obliviate 	Charm	Erases memories	Green
Obscuro	Obscuro	Conjuration	Blindfolds target	None
Oppugno Jinx	Oppugno 	Jinx	Assaults target with directed object(s)	None
Orbis Jinx	Orbis	Jinx	Sucks the target into the ground	Blue
Orchideous	Orchideous	Conjuration	Conjures flowers	Pink
Oscausi	Oscausi	Dark charm	Seals mouth	White
Pack	Pack	Charm	Packs luggage	None
Papyrus Reparo	Papyrus Reparo	Charm	Mends torn paper	None
Patented Daydream Charm	\N	Charm	Makes the user daydream for 30 minutes	\N
Partis Temporus	Partis Temporus	Charm	Parts the target	None
Pepper breath hex	Unknown	Hex	Inflicts fiery hot breath	\N
Periculum	Periculum	Charm	Burst of red sparks	Red
Permanent Sticking Charm	Unknown	Charm	Sticks object permanently in place	\N
Peskipiksi Pesternomi	Peskipiksi Pesternomi	Charm	Nothing (supposedly captures pixies)	None
Full Body-Bind Curse	Petrificus Totalus	Curse	Temporary Paralysis	White
Piertotum Locomotor	Piertotum Locomotor	Charm	Animates target	None or Green
Piscifors	Piscifors	Transfiguration	Turns target into fish	Blue
Placement Charm	Unknown	Charm	Places object on target	\N
Four-Point Spell	Point Me	Spell	Wand points due north	None
Portus	Portus	Charm	Turns object into Portkey	Blue
Reverse Spell	Prior Incantato	Charm	Shows the previous spells cast by a wand	Gold
Protean Charm	Unknown	Charm	Links objects	\N
Shield Charm	Protego	Charm	Reflects spells and blocks physical forces	Invisible on its own, reflects light of spell
Protego Diabolica	Protego Diabolica	Dark Arts	Ring of protective black fire that only burns the caster's enemies whilst leaving their allies unharmed	\N
Protego horribilis	Protego horribilis	Charm	Summons a powerful protective barrier	\N
Protego Maxima	Protego Maxima	Charm	Summons a large protective barrier	White
Protego totalum	Protego totalum	Charm	Shields an area	None
Purple Firecrackers	Unknown	Charm	Exploding firecrackers	\N
Pus-squirting hex	Unknown	Hex	Causes yellowish goo to squirt from one's nose	None (bang)
Quietening Charm	Quietus	Charm	Quietens target	None
Head Shrink Spell	Redactum Skullus	Hex, Counter-curse	Shrinks head	Red or Purple
Shrinking Charm	Reducio	Charm	Shrinks target	Purple
Reductor Curse	Reducto	Curse	Destroys solid objects	Blue
Refilling Charm	Unknown	Charm	Refills beverage containers	None
Reparifors	Reparifors	Healing spell, Charm	Heals minor magically induced ailments	Purple
Reverte	Reverte	Charm	Returns objects to their original positions or states	\N
Revulsion Jinx	Relashio	Jinx	Forces target to let go	Purple
Reviving Spell	Rennervate	Charm	Awakens victim	Red
Reparifarge	Reparifarge	Untransfiguration	Reverses the effects of an incomplete Transformation spell	White
Mending Charm	Reparo	Charm	Fixes broken objects	None
Muggle-Repelling Charm	Repello Muggletum	Charm	Repels Muggles	None (haze)
Repello Inimicum	Repello Inimicum	Charm	Repels enemies. If used with Protego Maxima and Fianto Duri, it disintegrates anything that comes in contact with the barrier.	Blueish white
Revelio Charm	Revelio	Charm	Reveals secrets about a person or object	Blue
Tickling Charm	Rictusempra	Charm	Tickles and weakens	Silver
Boggart-Banishing Spell	Riddikulus	Charm	Turns a Boggart into something amusing	None
Rose Growth	Unknown	Charm, Transfiguration	Accelerates the growth of a rosebush	\N
Rowboat spell	Unknown	Charm	Causes a rowboat to propel itself.	\N
Salvio hexia	Salvio hexia	Charm	Hex deflection	None (haze)
Sardine hex	Unknown	Hex	Victim sneezes sardines	\N
Sauce-making spell	Unknown	Conjuration	Conjures sauce	None
Minerva McGonagall's fire-creating spell	Unknown	Spell	Creates fire	Orange
Scouring Charm	Scourgify	Charm	Cleans objects	None
Sealant Charm	Unknown	Charm	Seals envelopes	\N
Sea urchin jinx	Unknown	Transfiguration jinx	Makes tiny spikes erupt all over the victim	\N
Sectumsempra	Sectumsempra	Curse	Lacerates target	White
Shield penetration spell	Unknown	Spell	Used to break down magical shields	Bluish-white
Shooting spell	Unknown	Spell	Small explosion with a gunshot-sound	None
Smashing spell	Unknown	Curse	Explosive	Blue
Snake Summons Spell	Serpensortia	Conjuration	Conjures snake	White
Silencing Charm	Silencio	Charm	Silences target	None
Skurge Charm	Skurge	Charm	Cleans ectoplasm, Frightens ghosts and other spirits	Green
Slippery Jinx	Unknown	Jinx	Makes object slippery	\N
Slug-vomiting Charm	Slugulus Eructo	Curse	Victim vomits slugs	Green
Sonorous Charm	Unknown	Charm	Emits a magnified roar from the tip of the wand	Orange
Amplifying Charm	Sonorus	Charm	Loudens target	None
Specialis Revelio	Specialis Revelio	Charm	Reveals spells cast on objects or potions	None
Sponge-Knees Curse	Unknown	Curse	Causes the target's legs to become spongy	\N
Softening Charm	Spongify	Charm	Softens objects	Purple or Orange
Squiggle Quill	Unknown	Transfiguration	Transfigures writing quills into worms	\N
Stealth Sensoring Spell	Unknown	Spell	Detects those under magicaldisguise.	\N
Steleus	Steleus	Hex	Causes target to sneeze	Green
Stinging Jinx	Unknown	Jinx, Hex	Stings flesh	White
Stretching Jinx	Unknown	Jinx	Expands the target	\N
Stunning Spell	Stupefy	Charm	Knocks out target	Red
Supersensory Charm	Unknown	Charm	Superior perception	\N
Surgito	Surgito	Counter-charm	Removes enchantments	\N
Switching Spell	Unknown	Transfiguration	Switches two objects	White
Taboo	Unknown	Curse	When a word is spoken, the caster is alerted and protective enchantments around the speaker are weakened.	None
Tail-growing hex	Unknown	Hex	Gives the victim a tail	\N
Dancing Feet Spell	Tarantallegra 	Jinx	Sends legs out of control	\N
Teacup to tortoise	Unknown	Transfiguration	Transforms a teacup into a tortoise	Blue
Teapot to tortoise	Unknown	Transfiguration	Transforms a teapot into a tortoise	Orange
Teeth-straightening spell	Unknown	Charm	Straightens teeth	\N
Teleportation spell	Unknown	Spell	Makes objects teleport elsewhere	\N
Tentaclifors	Tentaclifors	Transfiguration Jinx	Turns victim's head into tentacle	Purple
Tergeo	Tergeo	Charm	Cleans up objects	None
Tickling Hex	Titillando	Hex	Tickles and weakens	Purple
Toenail-growing hex	Unknown	Hex	Causes its victim's toenails to grow alarmingly fast	\N
Transmogrifian Torture	Unknown	Curse	Tortures, possibly by transfiguring the target to death	\N
Trip Jinx	Unknown	Jinx	Trips victim	\N
Twitchy-Ears Hex	Unknown	Hex	Makes victim's ears twitch	\N
Unbreakable Charm	Unknown	Charm 	Makes object unbreakable	\N
Unbreakable Vow	Unknown	Spell	Magical vow that is fatal if broken	Red
Unsupported flight	Unknown	Spell	Allows a witch or wizard to fly unaided	\N
Vacuum cleaner spell	Unknown	Charm	Cleans an object like a vacuum cleaner	None
Ventus Jinx	Ventus	Jinx	Jet of spiralling wind	Grey
Ventus Duo	Ventus Duo	Jinx	Creates a stronger jet of wind compared to Ventus	\N
Vera Verto	Vera Verto	Transfiguration	Transforms animals into water goblets	Crystal clear
Verdillious	Verdillious	Charm	Causes the wand tip to burn like a sparkler whilst damaging the foe.	Green
Verdimillious Charm	Verdimillious	Charm	Emits green sparks from the wand that can: Do damage to opponents , Reveal hidden things	Green
Verdimillious Duo Spell	Verdimillious	Charm	Emits green sparks from the wand that can: Do damage to opponents , Reveal hidden things	Green
Vermiculus Jinx	Vermiculus	Jinx	Turns things into worms	Yellow
Red Sparks	Vermillious	Charm	Jet of red sparks	Red
Snake-Vanishing Spell	Vipera Evanesca	Vanishment	Vanishes snakes	Black smoke
Vulnera Sanentur	Vulnera Sanentur	Healing spell, Counter-curse	Slows blood flow, Clears residue, Knits wounds	None
Waddiwasi	Waddiwasi	Jinx	Propels wad at the target	None
Washing up spell	Unknown	Charm	Cleans dishes	None
Levitation Charm	Wingardium Leviosa	Charm	Makes objects fly	None
White sparks	Unknown	Charm	Jet of white sparks	White
Episkey	Episkey	Healing spell, Charm	Heals minor injuries	None
\.


--
-- PostgreSQL database dump complete
--

