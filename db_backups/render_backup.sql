--
-- PostgreSQL database dump
--

\restrict dr8Shj80uw7SpzAUAK51NvYq4vRudivPWcjMTVeYSxbBEMFgVTIXdIHqKDQta5y

-- Dumped from database version 17.6 (Debian 17.6-1.pgdg12+1)
-- Dumped by pg_dump version 17.6 (Ubuntu 17.6-2.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: hospital_mngt_database_user
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO hospital_mngt_database_user;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: hospital_mngt_database_user
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO hospital_mngt_database_user;

--
-- Name: appointments; Type: TABLE; Schema: public; Owner: hospital_mngt_database_user
--

CREATE TABLE public.appointments (
    id integer NOT NULL,
    "time" time without time zone NOT NULL,
    date timestamp without time zone NOT NULL,
    medical_records character varying NOT NULL,
    patient_id integer,
    doctor_id integer
);


ALTER TABLE public.appointments OWNER TO hospital_mngt_database_user;

--
-- Name: appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: hospital_mngt_database_user
--

CREATE SEQUENCE public.appointments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointments_id_seq OWNER TO hospital_mngt_database_user;

--
-- Name: appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hospital_mngt_database_user
--

ALTER SEQUENCE public.appointments_id_seq OWNED BY public.appointments.id;


--
-- Name: departments; Type: TABLE; Schema: public; Owner: hospital_mngt_database_user
--

CREATE TABLE public.departments (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    image character varying NOT NULL
);


ALTER TABLE public.departments OWNER TO hospital_mngt_database_user;

--
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: hospital_mngt_database_user
--

CREATE SEQUENCE public.departments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departments_id_seq OWNER TO hospital_mngt_database_user;

--
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hospital_mngt_database_user
--

ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;


--
-- Name: doctors; Type: TABLE; Schema: public; Owner: hospital_mngt_database_user
--

CREATE TABLE public.doctors (
    id integer NOT NULL,
    title character varying,
    "doctorId" character varying,
    first_name character varying(50),
    last_name character varying(50),
    email character varying NOT NULL,
    department_id integer,
    bio text,
    education character varying,
    certifications character varying,
    specialty character varying(50),
    image character varying(200),
    password character varying NOT NULL
);


ALTER TABLE public.doctors OWNER TO hospital_mngt_database_user;

--
-- Name: doctors_id_seq; Type: SEQUENCE; Schema: public; Owner: hospital_mngt_database_user
--

CREATE SEQUENCE public.doctors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctors_id_seq OWNER TO hospital_mngt_database_user;

--
-- Name: doctors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hospital_mngt_database_user
--

ALTER SEQUENCE public.doctors_id_seq OWNED BY public.doctors.id;


--
-- Name: patients; Type: TABLE; Schema: public; Owner: hospital_mngt_database_user
--

CREATE TABLE public.patients (
    id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    age integer NOT NULL,
    gender character varying NOT NULL,
    email character varying NOT NULL,
    phone_number character varying NOT NULL,
    password character varying NOT NULL
);


ALTER TABLE public.patients OWNER TO hospital_mngt_database_user;

--
-- Name: patients_id_seq; Type: SEQUENCE; Schema: public; Owner: hospital_mngt_database_user
--

CREATE SEQUENCE public.patients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.patients_id_seq OWNER TO hospital_mngt_database_user;

--
-- Name: patients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hospital_mngt_database_user
--

ALTER SEQUENCE public.patients_id_seq OWNED BY public.patients.id;


--
-- Name: appointments id; Type: DEFAULT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.appointments ALTER COLUMN id SET DEFAULT nextval('public.appointments_id_seq'::regclass);


--
-- Name: departments id; Type: DEFAULT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);


--
-- Name: doctors id; Type: DEFAULT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.doctors ALTER COLUMN id SET DEFAULT nextval('public.doctors_id_seq'::regclass);


--
-- Name: patients id; Type: DEFAULT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.patients ALTER COLUMN id SET DEFAULT nextval('public.patients_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: hospital_mngt_database_user
--

COPY public.alembic_version (version_num) FROM stdin;
ab418a69674a
\.


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: hospital_mngt_database_user
--

COPY public.appointments (id, "time", date, medical_records, patient_id, doctor_id) FROM stdin;
1	01:00:27	2025-07-19 00:00:00	Throw phone win page pressure power pressure. Know laugh usually door church rate which. Rest two police charge available compare step quality. Consider administration ask.	1	33
2	20:06:53	2025-07-30 00:00:00	Reason alone foreign avoid age leg truth. Use price today already dream. Institution evidence relationship case.	30	47
3	15:03:20	2025-09-18 00:00:00	Require trade painting senior across. And figure foreign rise. Discover event cut camera his would economy through.	88	25
4	01:58:46	2025-06-27 00:00:00	Smile four century peace draw because above this. Ball fly fight institution magazine development economic direction.\nRepresent move almost public.	81	46
5	21:33:28	2025-06-12 00:00:00	Myself soon future strong station live design. Program again onto. Message yard cut soon number force.	36	48
6	21:31:32	2025-08-08 00:00:00	Financial life analysis recent institution create. Central compare couple coach city head force.	16	47
7	03:44:16	2025-07-11 00:00:00	Stage center necessary return. Beautiful prepare century small else then set. Base front return significant traditional true. Thus every watch brother.	43	32
8	20:50:57	2025-10-02 00:00:00	World candidate watch upon. Hard kid knowledge rise their test thank.\nReduce customer remember citizen. Put big grow single apply. Media effort behind understand result somebody table.	80	50
9	21:35:18	2025-08-19 00:00:00	Author necessary seek enter. Trouble perhaps although. Company should if thus week bring many.\nPolice knowledge here of ten apply.	54	39
10	23:13:58	2025-08-17 00:00:00	Them east need. Certain parent arm site democratic marriage. Glass field seat than family.\nSense control nice serve save. With room true edge upon.	88	19
11	17:04:45	2025-06-11 00:00:00	Suggest federal staff decide amount trip key. Former have house quality.\nPeace change civil total only why hair. Report large know health move study effect. Not wind test free analysis.	65	40
12	19:28:50	2025-05-15 00:00:00	Town remember defense break home production base. Blood responsibility particular whole successful.	100	20
13	21:00:37	2025-07-04 00:00:00	Mission chance else. Form collection hotel fly sense voice.\nForward ten arm forward key. Reach accept business. First similar develop soon sell.\nSong everyone seat defense. Protect then subject cost.	30	22
14	23:31:23	2025-01-02 00:00:00	Mr spring far member century follow near. Statement also simple. Poor local white treat fact seven. Life part official defense.\nCommunity nothing them push.	83	26
15	09:08:31	2025-04-10 00:00:00	Hold some wrong language. Carry writer dream upon visit pick.\nNation minute someone surface. Billion its mention.\nWrong skill visit one.\nSuccessful toward student series that part tough.	42	1
16	11:16:02	2025-07-24 00:00:00	Gas spend different ahead base. Trip eye one.\nConsider special state good stay cover employee. Know card there cultural. Only road travel.	4	9
17	19:53:06	2025-09-14 00:00:00	Need manager rate. Feel until major once shake guy international almost. Name activity prepare just country.	75	31
18	16:14:27	2025-04-19 00:00:00	Along player day hard door democratic follow. Free possible visit card discuss international fill. Bit few will owner within.	89	23
19	15:52:14	2025-04-16 00:00:00	Business laugh health value whom now. Could her girl who nearly kid attention. Animal feeling explain action.	84	39
20	00:18:40	2025-01-21 00:00:00	Turn party involve and. Begin end agree everybody my place.\nPlay land however can environmental act lead. Product state use include check almost. Company whose tax ago think large human eye.	33	23
21	23:40:08	2025-05-08 00:00:00	Determine stuff southern prepare still decision fine family. Opportunity rock process without form book much table. Reveal media grow development. Common vote thought teach firm use.	38	36
22	03:26:11	2025-05-21 00:00:00	Myself movie gun almost act. Within election himself note capital. Visit attorney thing town foreign.	42	46
23	06:05:32	2025-04-09 00:00:00	Trip up point since feeling around ten. Quickly government red single short its world any. Water charge student evidence perhaps one seven.	37	50
24	07:39:02	2025-08-06 00:00:00	Where either news seven keep age. College exactly out either support. Authority happen candidate safe score.	31	47
25	12:51:51	2025-07-06 00:00:00	Operation field share us of throughout modern within. Teacher detail score away space.\nNote night why mother if analysis. Guy daughter author before great.	50	12
26	04:43:06	2025-05-14 00:00:00	Environmental design long goal police ever vote. Door resource positive five.\nCompare could student develop we him. Character less student several nearly. Also son necessary thank product.	23	36
27	03:24:03	2025-06-09 00:00:00	Particular series view of agency still themselves. Recently team effect individual throughout affect keep. Effect prevent Mrs class.	83	26
28	07:53:07	2025-06-07 00:00:00	Game various my theory. Five performance respond book onto have ago actually. End dog store parent step.\nSpring one dream but lawyer. Air financial buy two interview term support.	42	8
29	19:07:09	2025-09-29 00:00:00	Music these assume central lay success. Send it various in ball street. Sister save guy keep yes beat character value.\nMouth think summer man great. However read mother bill.	16	14
30	05:43:08	2025-05-03 00:00:00	Life take similar movie so myself walk. Science small place those stage town somebody. Per although father far grow form.	1	29
31	23:26:20	2025-07-11 00:00:00	Very hundred cold ability. Scientist stuff have itself prevent send in.\nIts model Mr mission. Age station visit enough power war. Big high manage.	78	4
32	05:37:56	2025-06-20 00:00:00	Doctor under doctor continue former specific. By scene anyone attention television. Choice power guess number system.\nWhether yet late could off hand. Himself window others give.	40	9
33	05:33:10	2025-04-25 00:00:00	Realize plan south various generation should. Where religious stop.\nPossible almost so model fine arrive yard respond. Author tell south particular goal kid.	79	28
34	14:23:23	2025-09-11 00:00:00	Case even safe near. Case later where western. Wind several day consumer business others himself stand. High skin agency miss.\nMain plant hear main. Her local address fall.	39	9
35	12:05:10	2025-05-10 00:00:00	Once bad do. Main approach eye chair north stuff style.\nSimply me in discover deal three unit beautiful.	79	4
36	16:02:29	2025-05-30 00:00:00	Reality because mission wear yet maybe. Everybody speak TV style bank question. Network short animal training rate talk also.\nHuman police choice start several break understand. Wife machine raise.	72	49
37	04:10:13	2025-03-01 00:00:00	Money several hour red. Question call start early situation note customer. Might along with control. Rate Mrs significant avoid draw enter to.	73	45
38	00:48:50	2025-04-29 00:00:00	Expect strategy ago debate take of.\nStyle bed take budget suggest. Including head result far sport.\nTry song high either here heavy know forget. Whom rich day increase action.	6	7
39	04:09:31	2025-02-27 00:00:00	Require book situation majority place. Direction whole level head talk mean control. Suggest expert many hotel.\nAttention other while production campaign attention accept. Shoulder interest anyone.	9	25
40	10:23:02	2025-02-18 00:00:00	Cost right step analysis as character often. Six born old fly public respond. Hundred environment else operation always federal view.\nResource require admit respond great. Mission sort soon account.	87	28
41	07:04:47	2025-04-26 00:00:00	Our from whole perhaps reason. Threat road education understand enough dinner. That job short you.\nHerself finally those seem able ahead movie.	45	13
42	18:05:50	2025-04-24 00:00:00	Director finish party wonder do. Age official teach successful.	25	8
43	06:39:05	2025-02-05 00:00:00	Movie several recognize factor individual best. Every after rest give.\nIn wear response. Often air finish occur.\nToo size traditional dream. Mrs star become citizen night.	31	44
44	11:59:05	2025-02-05 00:00:00	Program include center hospital remember. Area close wide rich.\nSystem stage require east least home. Government ok put give about design data.	78	19
45	17:04:04	2025-07-08 00:00:00	Hope condition pay own product clearly. Expect southern why remain leg man. Other thank high per answer way treat.	64	13
46	15:58:22	2025-04-14 00:00:00	By difficult certain once phone feel back.\nStory kitchen thought pretty animal quality. Address age today sign benefit activity answer. Big drop go experience threat.	54	26
47	02:21:11	2025-09-12 00:00:00	Floor full foreign approach. Themselves official act cost. Maybe conference loss tough find.\nForeign size forward nearly. Eat democratic into why for check.\nDeep notice foot view say rise anyone.	10	10
48	23:44:18	2025-01-17 00:00:00	At measure poor. Wrong section see station I hospital late. Somebody watch safe few take budget.\nMain direction court. Partner assume its price technology. Defense million voice.	41	46
49	03:29:16	2025-05-17 00:00:00	Save protect move agreement produce policy. Many night country health. Far training truth.\nConsider military if attorney. Believe win everybody simple almost her.	92	30
50	21:34:13	2025-04-28 00:00:00	Most front role sometimes analysis ok science laugh. Lawyer form push training investment. Push think conference type alone.	75	24
51	05:38:58	2025-07-28 00:00:00	Set suffer there open end offer state. Herself player skill leave purpose friend report medical.\nBecome similar write tree dinner cup. Admit use radio can available mission follow story.	58	36
52	13:59:03	2025-05-30 00:00:00	Hundred child figure daughter option. Several add program history sister yes partner save. Old know program have single imagine lose young.	73	36
53	19:33:20	2025-02-03 00:00:00	Speak dinner oil. Left month even already budget prevent door.\nScore let whom.\nSuddenly budget throughout adult. Get participant phone role position.	47	42
54	15:15:18	2025-09-18 00:00:00	Phone every recently at difficult response fire. It beautiful attention save parent dinner leader west.\nExecutive pass weight force person voice. Sense condition somebody pretty.	45	40
55	10:25:16	2025-06-25 00:00:00	Throughout bill collection oil. Court dog score relate. Could religious wrong whom.\nWould pattern might money age simply. Toward camera whom voice. Few only much.	77	43
56	05:54:38	2025-08-19 00:00:00	Student before parent. Goal seat drive once. In box when new.\nDrug thought character discussion lead. Health light ask like remain town.\nUp talk get of.	52	13
57	23:35:29	2025-09-07 00:00:00	Particular pretty language throughout daughter score. Could behavior usually against structure. Meet authority always ahead plan.	18	35
58	23:58:25	2025-03-09 00:00:00	Summer along really tell around light. Probably next air page you question dinner agency. Win responsibility article move their most.\nWhom write student Mrs I arm the.	44	41
59	16:30:13	2025-01-18 00:00:00	Understand again close public. Country just himself certainly political near.\nClose from increase page nice effort night laugh. Fine choice professional sort great allow field.	23	21
60	03:01:40	2025-01-10 00:00:00	Keep occur as. Matter become them human. Happen beat Republican fly political bad.	86	21
61	16:35:21	2025-02-23 00:00:00	Radio almost room general return require water.\nMind sport note world. Real sound night position. Other office star newspaper level fine.	4	45
62	00:16:52	2025-01-02 00:00:00	Attention surface traditional enjoy. Could month seek. Finish beat close data party certainly interesting.\nCar try image tend ball. Sister ready doctor son owner book.	2	10
63	13:12:26	2025-04-27 00:00:00	Loss tax loss try computer official and. Society any possible. Rich social week future agree lawyer such.	14	4
64	00:20:53	2025-04-17 00:00:00	Newspaper sure strong machine shake. Rise help better little.	4	43
65	15:22:52	2025-05-01 00:00:00	Without such especially indicate western. Start task daughter claim degree produce. Response family do spend.	72	31
66	21:48:08	2025-04-28 00:00:00	Together eye again theory participant. When bit central green bit fill everybody special.	14	46
67	19:04:58	2025-04-13 00:00:00	Pressure memory network form write sit. Student mission attack democratic economy quickly interest. Long identify wish design source.\nQuickly close under lawyer season.	33	27
68	16:34:01	2025-06-07 00:00:00	Edge just require without hand across treatment. Senior single cut spring role life need.\nMaintain card trial air approach your us. Able tough write baby.	44	45
69	17:53:49	2025-07-13 00:00:00	Director miss teacher too car. Local us reflect determine evidence try fill member. And view total wonder.	60	26
70	17:52:51	2025-10-05 00:00:00	Special eight give local use yes. Science religious miss break ground purpose.	35	29
71	07:40:16	2025-02-21 00:00:00	Recognize movement identify statement hospital. Might improve player range economic than ball individual. About view or among buy both series process.	93	17
72	05:37:55	2025-09-02 00:00:00	Policy show individual. Possible appear itself election institution foot. Capital anyone onto create also adult drug.	73	27
73	21:32:18	2025-04-11 00:00:00	Where bad really figure dinner low. Student measure stand.\nHard yard source attention state apply prevent doctor. Reduce control growth significant relationship bring every.	90	1
74	21:32:59	2025-09-30 00:00:00	Evidence he president hour indeed. Institution true appear prepare direction manager care. Rock own age several onto operation.\nNo parent account describe free north. Sure hear near word case.	50	5
75	21:15:04	2025-07-31 00:00:00	Challenge body morning street to. Thousand herself southern design lawyer.	91	27
76	21:30:59	2025-05-31 00:00:00	Newspaper commercial fill everything she Mrs away staff. Special owner room represent question news entire seek. Official discussion charge friend.	19	49
77	19:48:33	2025-06-30 00:00:00	Friend agency add wear cell democratic. Marriage positive coach rate. Former someone east prove argue scientist ever write.	10	2
78	14:21:59	2025-04-13 00:00:00	Subject painting president need create two.\nHuman decade body check create inside because. Son we garden.\nA exactly it energy. Pass stay tell imagine. Save whose detail bed.\nHer machine less fund.	17	38
79	12:58:42	2025-07-01 00:00:00	Nothing ask eat drive. Loss federal control time act. Say truth blue ability left.	86	31
80	00:24:07	2025-10-02 00:00:00	Position new financial collection bed list health yes. Never tree professor realize. Knowledge wait fund those.\nUsually dog later gas shake year sometimes. Choice they idea difficult.	48	14
81	09:35:20	2025-05-12 00:00:00	Him condition good old cost take prevent. Others represent machine end also third poor. Themselves feeling benefit everyone.	44	48
82	05:26:57	2025-09-26 00:00:00	Various grow simple head happy series. Add idea group local term rule top mouth. News news pull development.	32	15
83	23:29:10	2025-08-03 00:00:00	Pattern word particularly board front sport. Green fast letter. Source quite really less surface century.	5	32
84	17:46:55	2025-08-12 00:00:00	Quite collection with office. Vote medical also which hear general future. Daughter should building increase. Until hold toward adult staff plan.	83	29
85	00:41:00	2025-07-21 00:00:00	Program least suddenly ok. Indeed figure main allow address start. Live forget establish so yet generation born.\nAdministration soon total challenge. Soon begin truth pressure early stuff.	18	2
86	16:38:13	2025-08-05 00:00:00	Scientist for sit agreement paper.\nBed director exist exist food. Above attack occur official daughter.	53	48
87	16:42:55	2025-06-16 00:00:00	Outside another husband business wish either teach. Glass central eight imagine toward also.\nSuddenly stage little sign to analysis later. Happy often back control coach. Official drug on.	7	27
88	08:05:03	2025-09-10 00:00:00	Give car door matter bit. Without he across technology nature of discussion.\nInvestment international reveal girl hear full write sport.	9	7
89	21:45:37	2025-10-04 00:00:00	Whatever air data happen. Process both out security. Management change box drive play.\nAccount wife company long foot follow. Population turn adult customer pretty. Memory far free fish.	66	16
90	14:43:13	2025-02-18 00:00:00	Community Mr program commercial lay expect somebody. Those position risk song never study director. Tend go right discuss my voice.\nNothing buy name especially grow best throughout include.	66	32
91	23:36:19	2025-05-25 00:00:00	These field floor. Create want range mother game.\nGuy away whose two ground choice.\nCharge show job role program nice as quality. Attention enough same course wind five church.	59	20
92	07:05:54	2025-05-24 00:00:00	Against four sit task dream. Fear soldier sit able newspaper shoulder out. Clearly court PM enough focus fine contain task. Scientist with between garden can.	73	26
93	17:07:08	2025-02-09 00:00:00	Town everyone stage half. Pattern service yet tend feel back sound course. Power thus eight number available. Decision high time article network challenge thousand.	24	18
94	07:38:44	2025-05-06 00:00:00	They money conference democratic director system product. Party step thus worker expect there eight. Adult plan perhaps seek particularly town song.	59	26
95	03:54:20	2025-08-21 00:00:00	Finally represent style quality difficult of.\nSince include letter possible. Bit myself move until some choice modern.	33	49
96	19:52:48	2025-03-19 00:00:00	Majority note issue local black mention leave expert. Machine drop condition tend data box. Marriage though risk upon various this. Long dinner campaign not back employee.	10	7
97	16:13:16	2025-01-02 00:00:00	Meet here bed.\nSpend son analysis receive fill cost economy. Morning sort expert early institution each. Again crime hospital.	19	26
98	11:57:52	2025-02-27 00:00:00	Hospital society method role forget go science. Recent would building common yes sport center.\nState gas air figure. Clearly doctor grow financial very other. Artist week start every experience.	31	9
99	11:08:08	2025-01-02 00:00:00	Lay interview might blood. Not identify name. Join tough series I ten article nature.	95	44
100	10:51:22	2025-06-13 00:00:00	Mention opportunity hair win.\nProtect her former goal change listen. Coach ahead cost home agree big.\nCultural series trip. After pay natural hope. Themselves street practice bad system market whom.	14	30
101	14:35:00	2025-10-08 00:00:00	headache	101	7
102	14:35:00	2025-10-08 00:00:00	headache	101	7
103	14:38:00	2025-10-01 00:00:00	stomachache	101	8
104	22:40:00	2025-10-09 00:00:00	mild pain	101	9
105	23:56:00	2025-10-10 00:00:00	groin	101	24
106	23:56:00	2025-10-09 00:00:00	...	101	24
107	22:08:00	2025-10-02 00:00:00	healing	102	15
108	09:57:00	2025-10-10 00:00:00	check up\n	106	7
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: hospital_mngt_database_user
--

COPY public.departments (id, name, description, image) FROM stdin;
1	Emergency	Away time art relationship I Congress adult. Finally threat boy drop agree cost. Purpose travel away rich rule even.	emergency.jpg
2	Cardiology	Such he often discuss fall. Approach carry office head production outside magazine.	cardiology.jpg
3	Neurology	You cover last movie herself computer. Responsibility figure organization list large especially water. Gun together respond father travel.\nCase financial mouth threat.	neurology.jpg
4	Pediatrics	Win season marriage eight late her general. Then write available left. Thought program story attack inside most he.	pediatrics.jpg
5	Orthopedics	Plan once size. If few peace else. Hot whether but president guess. Draw talk drive pass.\nSite moment measure walk.\nAnyone she dark. Administration loss clear.	orthopedics.jpg
6	Gynecology	Point chance television executive accept accept. Cell cultural be develop resource.	gynecology.jpg
7	General Surgery	Stuff us mission avoid sea city. Vote control may. Drug treat include important training.\nCar body traditional soon generation difference.\nSix pay strong or arm blue pressure. Sea office difference.	general_surgery.jpg
8	Optometry	Brother present citizen care physical Democrat. For his now member leg firm suffer. Me physical sort under remain.	optometry.jpg
9	Radiology	Country stand rock want. Church water identify TV answer. Lead administration easy.\nAct movie budget others phone. Thing vote share minute. Car share appear claim.\nPressure stay how north.	radiology.jpg
10	ENT	Two father able what. I trial sport sign which your.\nWhat product Republican president.\nTask red opportunity show off. Look plan lay forward.	ent.jpg
11	Oncology	Arrive black he experience since. Miss movement perform behavior every. Lawyer her fill really country quickly.	oncology.jpg
12	Urology	Reflect thought defense realize phone while mention. Address each which front parent that. Under institution many away either.	urology.jpg
13	Dentistry	Until theory win college. Apply find control third production way. First pass evidence sell keep under turn.	dentistry.jpg
14	Dermatology	Employee word couple sign concern idea section control. Total lead production.\nCup because coach scientist able read data. Over opportunity south some among support.	dermatology.jpg
15	Nephrology	Ahead policy my money list player receive. Land agency so leave building tree realize.	nephrology.jpg
16	Psychiatry	Pretty cost population answer possible. Still assume gun ask magazine agency. Dark will case meet throughout letter indeed.	psychiatry.jpg
\.


--
-- Data for Name: doctors; Type: TABLE DATA; Schema: public; Owner: hospital_mngt_database_user
--

COPY public.doctors (id, title, "doctorId", first_name, last_name, email, department_id, bio, education, certifications, specialty, image, password) FROM stdin;
1	Dr.	34271	Jennifer	Bell	charlessantos@example.com	1	Age rate agreement little particularly least. Total likely throughout network democratic next.\nTechnology matter time third. Side develop fall poor child light.	Direction catch meeting different blood hour road. Account about result product always painting. Building shake water fund too.	Just sound effect floor. Mother test move executive scientist. Still throughout into feeling face girl.\nRace rise affect impact than above. Season across full whatever unit.	Emergency Physician	Dr45.jpg	$2b$12$YF8Kih.TUXdL6lQLEdYk7.wync/zMMHY59n1nE8rMtAxSfsYJSgVm
2	Dr.	48772	John	Terry	jonathan66@example.com	1	Yard hold so get. Action away magazine thought live. Song oil at effect.\nUse machine southern about and. Make good social support.	May back generation window. True expect begin writer. Thousand area term personal him.\nEvent personal reality area born. Agree follow smile lose rest. Business during discover late.	Safe little enter book imagine cut glass sit. Past fire stock power. Simply rule operation already happen seven fact.	Trauma Surgeon	Dr46.jpg	$2b$12$m7ySdKS.f7Kd0pDaqsTI9.v5.a7NKbKj1COs51WhnKumHjN.d.2yq
3	Dr.	66857	David	Hampton	trujilloshannon@example.org	1	Improve build where week so young. Last question establish tough available. Stuff participant myself plan address.	Which as most movement. Customer member between into above owner reach.\nIncrease where this usually. Site about available yourself military another guy. Of several body money.	Really likely government impact direction. Fine read middle age begin half political size. Civil blue dinner will fish rather natural.	Emergency Physician	Dr47.jpg	$2b$12$urpYvbbIkapawPgLqyd5pOgUGROZulcG.De1AICXbBXvfUDT99NbW
4	Dr.	11286	Carolyn	Murphy	devon64@example.net	1	When election dog may I until theory. Administration girl in third who. It only mission admit reflect anyone fish. Politics ten community player.\nExecutive difference drop.	Second recognize center girl everybody. Exactly actually alone agree. By management range national.	Attention bed black successful statement indeed town brother. Book unit wait phone lot. Fish financial wear fish true.\nMust effort see despite. Road character avoid total.	Critical Care Specialist	Dr48.jpg	$2b$12$pDLy9rjIX/V77ePkS5SKFuEiHpcdokANYLGBF9oVgQVvo5JSl8xAa
5	Dr.	34796	Andrew	Clarke	glynch@example.com	1	Simply reduce major debate guess mission energy suddenly. Us Democrat trade yeah else yet policy religious. Edge some officer remain property become collection commercial.	Rather far effort green whatever dinner forward. Career think type knowledge article. Organization design size hot.\nThink maybe page. Catch why item indeed. Field ahead response.\nOld set rise hear.	Into paper most machine run. Operation officer decision ask research. Blood debate quality student.	Emergency Physician	Dr49.jpg	$2b$12$KXXP.eoktp4sPXfDcJW6COBrez2pq21sRTtx6SNqJGYyj8TlGSdiO
6	Dr.	11717	Larry	Miller	qshields@example.org	1	Way brother article artist specific. Suggest stuff mother break of. Able risk person yes when situation.\nSeries put at seem where two they.\nAnimal add inside understand. Study consider this memory.	Cut free meet. Simply in attention law coach follow word. Trouble organization hear program. Whose sure now see.	Black piece study nearly chance experience. Coach want dark whom how appear standard.\nAt three beyond matter suffer society process talk. Quality drop floor check opportunity especially.	Emergency Physician	Dr50.jpg	$2b$12$hpfy35OVnvkCJBPUcUFD9uqEBQ4TJ64EFcFOc3f1bEC1PhxECwhuW
7	Dr.	39960	Brandon	Gardner	dpeterson@example.org	2	Yeah available fall fear now. Particular maintain kind.\nReal business son thing. Suffer ever run yet.\nForm act nature attorney scientist. Whose keep one risk course thus along.	Town difficult generation dinner. Sound that east toward two.\nSince meeting statement energy none culture issue.\nArgue central between. Federal market bag democratic arrive day.	Industry tough because among that character. Beautiful project positive PM risk account threat hotel. Few fear however compare claim writer machine.	Cardiologist	Dr1.jpg	$2b$12$47LYLOyC3IoVZ5SZeCMBiu.h8jj/5bGCiS7gXRsYBuPcgwEZpFrtO
8	Dr.	96374	Joseph	Lindsey	davissharon@example.com	2	Attention detail focus stuff. Begin now degree be entire me condition.\nImportant relate decade none concern. Statement when hand very close movie.	Performance usually local score executive establish air. Appear step quality benefit best. Before open laugh point raise.\nPass school however. Nothing ahead capital himself adult collection room.	Image attack account business sound action operation. Adult about according card.	Cardiologist	Dr2.jpg	$2b$12$Jqnt7rhEM0K3c8zkLCba5.i6LwrSNzw7CQm.zwwuEPM0DcZfS2YsC
9	Dr.	14534	Thomas	Silva	sandovalnicholas@example.com	2	Also government time. Test lot husband would.\nEverybody when could point yeah. Big foreign process attention. Partner scene book weight paper.	Stay now either bring. Particularly simple upon local play.\nTalk difficult girl. Kind easy cause popular water box moment.	Sometimes land nor fund rule staff long. Lose tree energy begin speech go. Pull important rate relationship term opportunity admit.	Cardiologist	Dr3.jpg	$2b$12$7ATkUUNfXmvDdBeIeIU4Ye/tX63c7JeMS8gDjFzUtnb6N95FzNUni
10	Dr.	48689	Cynthia	Robles	johnsonlisa@example.org	2	Fine standard race effort stock evening where professor. Shoulder answer within upon discuss remain improve. Site street technology perhaps say. Candidate plant adult idea town.	History for often six me represent face. Institution else stuff sense collection. Fund marriage anyone during program capital. Dark here police.	Boy determine mind clear out. By check newspaper last interview whole civil.\nEarly development which can significant on that. Data indicate senior great Democrat probably carry.	Cardiologist	Dr4.jpg	$2b$12$YfN1WXqphZeI0YaS856zd.eQtsrx8vB7QPDrVDKMX5O7G/VG1GF1q
11	Dr.	88405	Ryan	Hutchinson	seansandoval@example.com	3	Tax party evening senior case treat. Player relationship quality much career instead actually. Choose increase site any thank western including.	Democrat within bring never war general worker service. Audience teach with state drop around sometimes.\nAccount coach middle administration sort list. Nice public key explain serious task.	Give whatever system bill usually another. Serious magazine might painting kitchen artist. Information ball him season.\nBack chair ever exist over through. Exist stage oil action.	Neurologist	Dr5.jpg	$2b$12$jElhzXx30OK8tJR3.Q2r1eOJJXwLDmiFNHmLHiORxdxw2OpWwXd.e
12	Dr.	26937	Lauren	Whitaker	ggarcia@example.org	3	Good himself production probably fall. Language great break stage off goal teach environment.	Test change goal sport more lose plan. Shake local board. Send whose moment term same.\nSay green nation service exist bank long. Share win society number water.	Voice line most wrong notice. And about student everything kind. Kid future face miss all spend.\nSign she continue cut tough main get pick.	Neurologist	Dr6.jpg	$2b$12$P6jxOrXpHizihRxfKPH5IOORpcbVd7SET67bIqmvQXHe1w8sh.DSq
13	Dr.	38115	Ryan	Gonzalez	thomasfinley@example.org	3	Inside increase real into majority son. Term final give size.\nCrime spring three center middle. Control yourself travel send color guess.\nTeam newspaper part. Play company rise material life garden.	Finish again movie project. South radio own sense increase us give use.	Inside mouth investment compare follow. Himself to culture chance ground career.\nWait avoid box. Discussion hot enter red management wide.	Neurologist	Dr7.jpg	$2b$12$zNQXeYRrVtiDPHiVuJ/WGuGjf06nH51z9NeIke1xMDiuVgrxRQTza
14	Dr.	80495	Kyle	Fuller	iandavis@example.net	3	Old send doctor key discuss with station. Course receive exist rule Democrat tonight us trip. Toward member music create.	Firm board place today. Him improve investment. Only war main indicate seat.\nInvestment responsibility traditional country reach.	Across least ground bring me read. Practice notice race help should scientist.	Neurologist	Dr8.jpg	$2b$12$PFedr/rOiF3ddmi8t8tDDOp949UvnhDsctvbphkG9xLit3e0SN0dO
15	Dr.	13444	Jenna	Patterson	zacharyhardin@example.org	4	For buy quite audience door son husband. President sit social watch majority performance successful.\nMaybe possible hundred since how action. Bring on reality leg. Rock two computer prove.	Price down plan send material own look. Assume include seek health evening knowledge.	Rather market lawyer evening political. Or go story simple age.\nReally animal charge consumer. Small during lose again and against amount. Point first hot official by available ball.	Pediatrician	Dr21.jpg	$2b$12$DO67GY97kmylm5AvZxVq6u/CFktFO7t5Cas4ZsPnswUAI.Y8x7RQG
16	Dr.	23896	Ashley	Diaz	danielhernandez@example.net	4	Safe phone see three owner. Actually subject under him laugh news. This personal entire customer lead eye outside.\nPopulation type professor imagine crime operation. Paper mother song after rest.	May war he can catch left. Build nothing list.\nProject health door general law. Area necessary dream store remember every especially nearly.	Policy person close. Cause stand she door but own turn specific.\nAgency wind represent realize.\nLeg dark toward today. Evening sister lead pay same and affect.	Pediatrician	Dr22.jpg	$2b$12$R3Ijpvt1X/mXuqj2CMUPBukZI.g/8QcGruEv2xcAkpgo5HAOMS/9.
17	Dr.	30165	Alexander	Short	candace45@example.com	4	Foot through government do strong yourself. When hope rule water theory.\nRecognize image note exactly. Team sister require actually commercial front. Per strong surface enter against who ability.	Quality resource happen term issue. Today allow computer view other.\nForce tough then research. Model blood finally. Movement wind national argue southern.	Fear without focus can dog window.\nSomething bar wear would. Attorney course degree war thought. Travel the scene case.	Pediatrician	Dr23.jpg	$2b$12$qpplNe.7V8MKLHeDhiQFWetsfBJ3qzmF4Y3ZIMIoDlRyeYzHbHd0S
18	Dr.	33262	Kevin	Roberts	fordamber@example.org	4	Meet its stand whatever that none. Determine seem build boy. Notice check military Mr newspaper brother.\nBudget floor movie however seem or drug.	Name glass herself local movie student. Response experience audience coach staff network discuss. His certainly right strategy street very information value.	Your voice good ahead thought consumer. Itself school local. Challenge hot yet old baby.\nDemocrat end billion. Next we notice particular court yourself.\nBuilding draw always anyone.	Pediatrician	Dr24.jpg	$2b$12$C.I7RhkPRujDK7F3IQ4zje4HR8z055xsxTTVu0.E.52NZbAT5JOoW
19	Dr.	11868	Sherry	Lyons	leeaustin@example.org	5	Great defense truth measure. Result amount smile political sport old situation because.	Yes concern special technology business before. Government character suddenly young maybe. How better life go need soon also.\nGreen set market. Without degree owner born.	Choose size focus. Article own federal husband force ask.\nReflect Republican sell end long. Under some operation fine paper speech south. Democrat common might teach sound board wear.	Orthopedic Surgeon	Dr9.jpg	$2b$12$TfQOqzQbCzD53J3ZH4vC4u6oef2tGm1HC1ZKV4YHrMsS2SQ40clUG
20	Dr.	14069	Steven	Patterson	andrewcross@example.com	5	Interview million friend recently range. Affect particularly voice big use serve. Fast paper measure mention white.	Office alone century him. Suggest improve term agency. Strong set degree.\nAgo its yes dinner. Region fill hold interest.	Look some alone now center. Some to learn safe gas outside. Water issue name old since scene.	Orthopedic Surgeon	Dr10.jpg	$2b$12$Jywkn0e7CypGbjY.zaBKLeUSmevp6mD/UqzurLx8SMWE8J.uTnvou
21	Dr.	52751	Jason	Smith	william03@example.org	5	Majority foreign image right arrive head. Sing family trade wide two agree. Up save might protect public say.\nThat chair rule analysis respond throughout however. Front mean east a late southern.	Weight mind hope into.\nDecide citizen page mission drug federal read. Seven west professor medical. Everything center song speech water. Along four political audience about note race.	Society future right talk part theory box site. Believe read worker parent value. Tax become she company different imagine step.	Orthopedic Surgeon	Dr11.jpg	$2b$12$NYmUbQM48FzybvqWeVvqO.uEBqlnkqjIgiacQ8ksbNKfCgsOsmbtK
22	Dr.	25683	Steve	Brooks	smithbreanna@example.org	6	Suggest ability charge herself no know performance. Action people low edge sell ok bank. Evidence third development.	Research western himself source. Hold plant serve star.\nExactly mouth across reach reason.	Require research officer outside. Reason in should throughout four.\nWhether reflect have performance beautiful into. Group third away old artist. Gas family choice yourself.	Gynecologist	Dr38.jpg	$2b$12$3OGparzIih1tS4VXCkFZm./sADJ4cPAErBYzJ7J8j4hH2vW/gNY6u
23	Dr.	62833	Lauren	Houston	angela17@example.net	6	Support act glass herself. Public understand at general within.\nWalk development quite fish. Discuss manager choice take image benefit. Education the strong. Manager owner tax seat total top new.	President former man travel theory. Before end early budget reason white.\nNotice agency bank require. Push again break in customer certainly. Alone agency turn fine maintain attorney employee.	Move right us wide attention professional level. Determine six spring actually.	Gynecologist	Dr39.jpg	$2b$12$82O5u0VjSj3LUSsgUk2XvuaF4glYyqqjx073V3ZcDB./x2jB/zuWy
24	Dr.	76195	Joshua	Lopez	melissa72@example.org	7	Hot else daughter on loss information son. Pull unit leave.\nEnd argue federal ago parent national professional. Story admit may nothing.	Image case thousand trial including thing. Wide customer develop strong up friend. Threat wind grow method.\nToward final wife simply cell hot.\nFind southern member.	Control effort level recent ability sure stage. Loss surface guess for bring improve. Lot benefit federal parent.\nThis thousand here. Bag why way already hour Republican.	General Surgeon	Dr25.jpg	$2b$12$WT.jzkAfzf.uRUMUMsFVde/w/OYvfDmBoDyaGEjtOD8jpQyj25Hi6
25	Dr.	98406	Dean	Williams	andreagarcia@example.net	7	Sound source section allow pretty pay. Win interview population our step popular matter.\nRelationship method account house by choice economy. Reduce trip easy easy task our cell.	Spend live property stand also. Usually travel manager key.\nNothing cause challenge sit stage standard itself. White resource employee term color up. Owner better yard.	Own fund protect worker them write. Reality want interesting plan war career join benefit.	General Surgeon	Dr26.jpg	$2b$12$Qutgg8DsXGj5Y3J6axXQGuncDouSsqf4QNiiw/5SHcu/d6QNRNlkO
26	Dr.	42235	Anna	Huber	stewartdouglas@example.com	7	Majority or hard yet itself race total. Purpose kid discussion over painting rather top. Simple move director evidence TV.	Certainly company thousand risk over level strategy. Lose worry full garden not water news. According expert sense something difference mouth.	Most thank want assume memory PM. Poor mouth south phone sing condition writer.\nMatter compare relate important.\nClearly hit morning option data half. Game challenge happen later college.	General Surgeon	Dr27.jpg	$2b$12$MH2nhJnRRgAu.dCAkW8tPuSz48FyrZjQuCqNDwKctABPvhC8xYvOi
27	Dr.	15962	Douglas	Coleman	sarah87@example.com	8	Far always fish pattern huge. Threat can agree.\nParty item least director enough challenge time. Way adult land should receive institution education. Law week bank court condition room.	Finally management detail require before. His enough college report open.\nBoy seven certainly candidate station partner style. Plant opportunity religious skin center agreement six.	Return whether loss beautiful. Heart house clear benefit identify under require.\nTrade marriage visit environmental real again role. State position military citizen data plan picture.	Optometry	Dr12.jpg	$2b$12$J/W/XD2QnEavqm/4IxTHyewaLz93H5AC8NNhTpa/X8b/KmdAcN0La
28	Dr.	13708	Trevor	Mcneil	lauren53@example.net	8	Test never fast research agreement available.\nMoment feeling enjoy ready. How activity start line. Hospital between quite country fall across painting five.	High skill wait produce realize anyone. Woman civil soon bag main now down degree.\nTurn item agent happen catch among mother successful. Rate truth growth face.	Shoulder name when hold major every here. Else performance interest ball.\nConcern with compare nor girl eye. Black school side positive.	Optometry	Dr13.jpg	$2b$12$Hpnv8o36qCaCVAISncCyye0RctZ/fLHSH46tvoHBeGGkxM4MqmhI2
29	Dr.	91267	Jose	Garcia	williamsrobert@example.org	8	To interest heavy manage. Eat list former.\nHospital reality city real event set water. Mean model eye study.	Head level forget effort local less. Executive find real both certain so couple tend. Music ability office another huge.	Close build research wear. Prepare recently art few. Similar open finally forward. Head would at effect.\nUnder east she water short analysis per. Only media century Republican year just.	Optometry	Dr14.jpg	$2b$12$k/e8Xp/Ly9w8PxPx4DtKteroMIS9cqnDWNRkDTXh8eLiU7iwPFTqe
30	Dr.	52810	Sarah	Parrish	craig65@example.com	9	Security plant mean action career reach level. Decade could and girl could. Common add huge never today right beat.	Economy prepare particular very kind. Consumer author baby unit.\nPresident tonight budget together finally. Staff away decision employee. Prevent history animal push our.	Another suffer newspaper nor face. By talk bar seven final wall. Article campaign memory entire.\nStage focus sort. Stop account enough Congress would resource. Stock though mention something claim.	Radiology	Dr16.jpg	$2b$12$7cN1ZMVzYRIiQn/whI6DQO7wORFDVi5FfZQZ1yKIFgBt4RJ1biqmC
31	Dr.	38519	Charles	Mcdowell	mathew41@example.net	9	Catch provide instead rest sport Mrs year. Cause start family study student. World memory possible already develop number tell. Rock well clear figure.	Start purpose seek first government. Detail poor need hand apply collection.\nCivil process mission organization camera. Necessary not begin this very man class.	Mind hear former question. Possible whole music treat place sign better.\nProve respond exactly religious. Long son live describe raise.	Radiology	Dr17.jpg	$2b$12$Cvd9WlSNWirGUDCNXV5Ya.jsWc9XfUJ74/qD2v6E7zPNpk/gZ/ukW
32	Dr.	55566	Jim	Sanchez	qwilliams@example.net	9	Reflect during five system history. Door reflect poor address here. Community audience build actually.	Present visit fear officer south design. Know bring seat low. Husband commercial wonder state reduce each animal.	Current friend body allow reason. Garden dinner skill four. Pull everyone kitchen American level. Item administration medical writer.	Radiology	Dr18.jpg	$2b$12$j.N6nH1fyF4osRTuVJ6JxOA5H48W0jN1l7VDqi1quStVAWvmzCKFW
33	Dr.	88306	Rebecca	Mcguire	aguilardavid@example.net	10	Ask during full yes others foot. Have church space worry least five when join.\nPublic wind sing region car its work. Finish development key play. Treatment gun energy carry treatment rock city.	If eight plant data least poor short. Ever wife business amount fall again exist.\nOur memory early service. Send what those bring.\nLine arrive people player author. Argue able too often light.	Beat way go when word. Face arm soldier message. Knowledge others mind recently.\nLook news safe true bring.\nSomeone enough music more science name authority wait. Small within yes understand learn.	ENT	Dr20.jpg	$2b$12$uGUNbmNc6AyJ0BcfxIrqROzVk53Zhd9mBC8FgpGQ7A5CzAEVJKd4u
34	Dr.	32714	Zachary	Lara	ryan37@example.org	10	Provide expect remain before matter edge. Above center later think anyone deep. Mrs beyond long price.	Right brother deal make general. Add white onto model issue very improve travel. Senior especially good whose billion.\nFour ask probably center.	Until almost thank officer ever try television. Price room job seek dinner. Win station else job exactly seat.	ENT	Dr28.jpg	$2b$12$UqjdMSskC8Qz.a/6lpJAuuO2A9.OTir1NnpqoTS6DhMZBxydzOqIW
35	Dr.	45533	Paula	Ray	elizabeth30@example.net	10	Number beyond result firm speak response daughter. Good performance watch region PM. Student rule interesting pattern age everything single.	Beat last its analysis boy firm world. Add view almost bar game story. Firm show ever.\nSend quickly positive air. Hair face agent save activity benefit person. Care dream picture necessary fine care.	Maintain company lay benefit. Sing of me American. Attorney major teacher will material race such. Six sport between event character.	ENT	Dr29.jpg	$2b$12$otNHCDiy/z6nk53Opk3tFe2OphmDwK3HnAI96WQ7hSe9y7mb601mG
36	Dr.	79712	Christina	Walsh	lwilliams@example.com	11	Middle meeting school series his check door. Off whom PM age.\nProve recognize mouth notice. Financial particularly across power. Really analysis information successful current three.	Recognize collection bag item effect general a. Fact experience civil interesting food. Line our similar.	Century give charge spring something. Energy along forget article crime present.	Oncology	Dr30.jpg	$2b$12$BUNjfhvS22w/Qb.EOnWVuOtfwtGzabJHC2L2Ytqp.pJxXcemEPfKG
37	Dr.	22402	Sharon	Hill	xhudson@example.com	11	Network newspaper school education decide. Government PM avoid.\nBig group meet. Small nature candidate side smile bad not. Dog operation situation term black.	Behind large authority on home bill instead. Research travel work they college. Part second guy final watch. Eight wrong issue why well consider.	Size involve business summer need she bill. Across capital turn onto smile during. Company moment writer bring firm throw. Soldier section pass water.	Oncology	Dr31.jpg	$2b$12$nLe9a/i89mnX.x5VLGZwiu.OwbIxtQ5jcrTLRuQvPVg42ahJxo6G6
38	Dr.	85507	Sandra	Fisher	jeanhenry@example.org	12	Worker real seven upon respond. Born message decide reduce team remember. Product on physical center scientist care spring the.	Bed question dinner reveal continue. Decision new product three find resource significant.\nCommercial product first would fish. Prevent us section well.	Mr deal happy include our always everyone. Necessary federal century speak go thank health. Your agreement lot along player road.	Urology	Dr32.jpg	$2b$12$PZlbM1VlLjy1BkcHXkwg3uGl.gO62XbBUIDlPFX.rExeRza.ZXDl2
39	Dr.	33994	Tracy	Curtis	fitzpatrickkyle@example.net	12	Citizen bring identify reach. About require agency eight everything. Next benefit rule left sense often.\nMight finish baby bill show almost. Manager act group budget music affect success.	Church since different thing road. Section maybe door without address back tax. Surface network value teacher. Stock view five lawyer.	Section go message inside money blue year. Seat religious enter spring dream. Field support area.	Urology	Dr33.jpg	$2b$12$SYHJo.Kmirb7iJ9mU/MbC.9LHhgN0za4V9dae5HumRF7LFAUD1pBq
40	Dr.	97321	James	Fox	devin99@example.com	12	Perhaps include response road responsibility after. Late product occur beautiful marriage. Series week why entire same early day.\nLetter brother movement analysis on. Free threat significant city.	Probably different father provide toward customer. Under marriage cut difference yourself. This they look only always.	Discover difference trial discussion. Beat buy store treatment increase star voice. Finish size available century attack.	Urology	Dr34.jpg	$2b$12$1tPCHlhGZNefiqsJrGMipeaAJ5Uhypyd4fpmhHumF2CK0mZNLSeNe
41	Dr.	98298	Michael	Brady	dunlaprebecca@example.net	13	Whatever bit win offer item. Various support create indicate car wall reason. Difficult turn lawyer court line poor.\nQuickly argue nice. Military amount ready.	Away successful put including live save. Want view then public whole age. Should value less lawyer PM challenge conference. Step network enough be here theory her.	Player feeling central difference. Carry they music often. Might not agency hold just.\nBank wind table. Own form peace month. Fact himself prove.	Dentistry	Dr35.jpg	$2b$12$yzWwsxrk5iHinW1w8v2alufFakLZioJoQgaY/KEmMAjdfmSNZeG8O
42	Dr.	41703	Brooke	Pham	portereduardo@example.net	13	Draw can born then despite computer. Follow let meeting though.\nHer cause receive often. Movement indicate less example set raise. Above cell him vote weight team week director.	Wish could indicate run. Market middle town candidate tonight else probably.\nSite wife note. Yard against majority.	Happen yourself not. Staff grow happen nothing.\nCase although really billion machine wall. When fire high become choice. Free west least shake.	Dentistry	Dr36.jpg	$2b$12$FGlT3Kt2W4cfD/qKicJ23uOkHomQBr8dHJHCxChEG3cjoXqZ0Hc5i
43	Dr.	92330	Elizabeth	Smith	oneilljason@example.net	13	Pm hour save election adult phone key safe. Family say power focus read lawyer understand break. Power upon often news culture summer ever. House animal ok best foot far start.	Hard morning myself treatment practice. Relationship control quite if whose world key.\nSoldier system capital daughter hand.\nTrip medical list mother.	Painting role word purpose support tonight same. Often add catch show good price.\nBuilding until word movement. Deep participant painting all party.	Dentistry	Dr37.jpg	$2b$12$9y5YmEMYCt/KyDlbVqPrQu6MfOPyelVvYJdoq6sqkGIY3JYCBss32
44	Dr.	48142	Jeremy	Williams	caitlynarellano@example.com	14	Create car kind everyone east. Their lay act leave generation. Service election civil perhaps special street.\nClear clear owner help parent run. Foreign half girl note else off guess.	Agree behavior guy language clearly. Husband enjoy current wait daughter management.\nOut agree save learn man writer. Ok economy suggest.	Never shoulder price although. He challenge politics through right near. Bank concern tree us.\nJob well cut those court sell. Why officer close building type energy wait describe.	Dermatology	Dr41.jpg	$2b$12$pMoNZJl5H/wPlr.uN3z4fOddv1sR1aiaD.w.u2a3dyHXTOkRDjHxm
45	Dr.	18265	Kristin	Mcdonald	washingtoncharles@example.com	14	Property hold able model evidence.\nRecord girl partner. Tough well rich writer.\nHit sure be throughout song cause. Two close allow past.	Case later prevent director high quality marriage. Partner recognize lot hold.\nThis both gas relate key type evening many.	Thing development owner election. Upon raise series rate church want.\nEvidence democratic turn long. Window determine different financial field response hotel.	Dermatology	Dr42.jpg	$2b$12$hZlxCC4DOvfqtBZ5vKA1J.ZSxyMeEGj008EQbaHgxlWNefBxWufmG
46	Dr.	97840	Dan	Cox	jamie46@example.net	14	Old seem forget hear mission front. Raise step month trial. Hit condition add assume.\nPossible soldier life their no. Remember value fight be court natural white agree. Fear garden compare blue art.	Exist service affect also. Truth help day discussion later although catch with.\nTeam region his natural forward task case. Today move central teacher car learn body billion.	Heart surface war main. Return talk dream sign myself officer interesting remain.\nWhatever glass see staff early. Agency special without speak should throw. Take month present finally.	Dermatology	Dr43.jpg	$2b$12$zQu05WLE79xK63w8o4a6pOdDOf39nD4JKJ1Tg/RXId6ytzXV3Ep1K
47	Dr.	31427	Diane	Walker	brianbrown@example.org	15	Society police paper manage series to. Know great voice employee visit animal law. Fight black lot ask.	Own test people.\nTrip four put decide staff late rock. Scene sell lose happen picture prove. Wish movie size.\nWife anyone lot quickly body degree. Argue training together themselves anything measure.	Poor enter might face bill. Attention draw pull want. Cut back listen itself away oil.\nCentral clearly either drop bar. Benefit western thing sense recent author.	Nephrology	Dr44.jpg	$2b$12$gq4Bn00xkCECOp5fKatIgOK78EM6qxTft3jP3vGPkdurFBypR5bCa
48	Dr.	33479	Melissa	Miller	maryrobinson@example.net	15	Degree meeting physical believe. Three nothing foreign far word resource study easy. Room threat full south end.	Street lawyer about southern daughter. Past ago end ask really figure available.\nCover whatever get shoulder lead. Song people successful leader miss paper several choice.	Foot lawyer employee so information. Guy grow medical. Red order analysis edge above.\nEnter board must call treatment watch. Know face purpose.	Nephrology	Dr15.jpg	$2b$12$WaGv72rv2rfc1a7W07yQse9vDFdd6sXDKSvuSxiwhtTrpqZo1KPv6
49	Dr.	50178	Dawn	Smith	khanson@example.org	16	Reflect forget simply whom glass author late. Offer billion speech.\nWish various data score enough yet stand. Perhaps watch other fly fall service almost.	Surface want real decision shoulder fly old. Think suddenly soldier draw.\nMe address film everybody education.	Tend officer least page risk. Special before dog hundred region one factor. Own wrong arm energy practice plant center. Sea movement hot network protect soon less oil.	Psychiatry	Dr19.jpg	$2b$12$1xsrB9O8rSShP4GONnUcIeV/WkULnWVzf6Jc3sLOJnX6BKWHr1J1.
50	Dr.	55159	Jeffrey	Sanchez	orodriguez@example.org	16	Wide she guess minute change notice present. Page back possible time history.\nListen almost month finally. Time his region special. Situation line your power pretty. Thousand these himself.	Believe school exist law seat. May six majority charge building discover hair. Woman reduce popular perform participant.	Wonder region however opportunity want. Loss memory break final entire despite.	Psychiatry	Dr40.jpg	$2b$12$gY9UVXl/HNTRFBh1fUS/SOa5JTJ9ngplgvAL.PF2ZNkiLW8L7/HW6
\.


--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: hospital_mngt_database_user
--

COPY public.patients (id, first_name, last_name, age, gender, email, phone_number, password) FROM stdin;
1	Jessica	Turner	85	Female	amanda63@example.org	001-222-856-1571x09228	$2b$12$D6wEcqX/2Yig0y.6RcjmkOBnfA4QyeH0b.EPFrVuORMw3hwYstFnq
2	Rose	Young	88	Female	john12@example.org	001-275-447-3467x232	$2b$12$womSxdMMMa.qqQcP4.FmA.Qs3ZLBuS1KwvKFxGcnlyhriM6wSsU7q
3	Justin	Brown	81	Male	qgardner@example.org	+1-446-812-3413x205	$2b$12$4Dj0Xf9NUJ2bWp.6hLCqZuMwAnEnisHD2.CQC4Gd.ECTBvBNZPq/O
4	Jillian	Johnson	42	Female	timothy04@example.net	365-368-6274x422	$2b$12$.7yncV0KGrO1lpftBQv3ieyBkJx6q8a3F4ee.voyL01PN.NxDa7gq
5	Tanya	Simmons	71	Other	fbolton@example.com	+1-612-695-0143x1777	$2b$12$fCxAgC9WszoSb9YaQNuX3.SvZKl7SnqSPmUGFmvDEmi4R1CyCwKmW
6	Evelyn	Coleman	93	Female	hthompson@example.com	(997)728-3979x266	$2b$12$rNbWI8PggfhCm5t/va3AhOeOaaxO.JSOp4M/mOmfpCWL/7HPUqHFu
7	Robert	Wolfe	63	Female	juliewright@example.com	7827051300	$2b$12$CdU9FrTkzXXywcUDFD1JYeXJEshXduvpo0mfrPHvqitNzk.sbE77S
8	Steven	Donovan	32	Female	norrispaige@example.net	(676)368-0081	$2b$12$YNmaej9HoN/fDjmcsJDedunnWzN.KshiuY/bmthAdb1lGR/n/o/rG
9	Kimberly	Sellers	89	Female	holmesgerald@example.org	+1-709-357-7985x56038	$2b$12$aPD9TrVm51.5mgMWP4B9Oes0FU6Y0TiIeZc86gNrpve6Z.vFobJS.
10	Michele	Mendoza	60	Male	skirby@example.net	860.449.1550	$2b$12$9cH.dWcpCRAATleVFkdKbuWwXCCqxcJmW607IxOm5ow72CGHy/gZm
11	Mike	Gonzalez	89	Other	gabriellarowe@example.net	+1-455-401-0474x19553	$2b$12$/AOMFt/FJhjL1dpMxZWwreO49AQ6i4StEQgU4QMIdzcGYrmt/KwKm
12	Antonio	Morris	68	Male	vincentcampbell@example.org	365-348-8671x99735	$2b$12$OJyO9qs7j8VP1k6Dzs46VuTrxRMxfgQ/vttEbilKBd.KDclYukJ.2
13	Matthew	Zimmerman	28	Male	stephenhurst@example.net	736-487-2144x8214	$2b$12$jBL.BrtKmOBy4Q537J/0h.gN4aiWhRXQjEIzjAKr3YukysDVUdhHe
14	Gabriel	Butler	46	Other	randalljennifer@example.com	362-225-3687x786	$2b$12$jrisHS4dXv182Z6qwtNMgufAPEdfwKdi5ufsME2YZmKnrMdcFiK/a
15	Kevin	Duarte	31	Other	shawn44@example.net	328.905.8509	$2b$12$.6Ho4GUPR1mWSNHmtRfrKux0UTYabHICKNrXfxVkzp97RYPPEchv.
16	Felicia	Solis	97	Other	victoria54@example.org	(234)826-9352x01468	$2b$12$Pq8AhD.yffu.KW596/TEA.sKobiUFEzv/Uq4mzZFfSim/iPTDA4lu
17	Sydney	Medina	18	Male	colliernancy@example.org	(328)923-6979	$2b$12$Ro.ztxwj2gL01aSvyotSiOHU0xra4w0uAYsqyK1cYMqeKwxyLje4e
18	Antonio	Hart	38	Other	evansblake@example.net	(601)812-1788x3332	$2b$12$5FhUySaNUs..xkMxOa.hu.N5VkE/9n7uTiOAuObtCS.EtblYmhE4G
19	Ryan	Carpenter	19	Other	james78@example.net	+1-612-704-9181x930	$2b$12$21JiY/lJZ6HAqpziJ1uBLeeJNj3fU6NcPNvk1L4oF5FsZcg4s32Hu
20	Heather	Suarez	43	Female	matthew51@example.com	765-542-7768	$2b$12$zTpj4io5ZAMiui82zkwZ..IX6aJXUpfW6Boxt0vaYCPnPAMhN.5uS
21	Emily	Schmidt	27	Female	annettebanks@example.com	3462850685	$2b$12$.4HymKJ0hu0B5vzR2SJgL.PbD9TNIKDOKQ7xM506UHwDH1LHLRjva
22	Kaitlyn	Ponce	49	Other	gconway@example.net	(273)904-0428x83875	$2b$12$3fWHxQ557cG0y.uafapiyOSPrIZTMLjw5bSsApXq5SSGST9.6kuTu
23	Amy	Myers	96	Male	emoore@example.org	+1-450-551-2582	$2b$12$j3xM/3BY0SQoypzAEb4ykOm4c4nUme1EgCj4kONC4yBqxShXfev6S
24	Jessica	Rodriguez	80	Male	michaelortiz@example.net	(296)711-3118x19403	$2b$12$ve95pER8o57vu2EiU.j0heekK/6vVAouaoed1kvlrYkMBcYLCZliK
25	Erica	Oconnor	70	Male	craig01@example.com	(886)862-9606x3862	$2b$12$ecyhPv1orCLBrTu0SWwyXeeKPLrAOmMqfWPaws6uPnm2EPew3EtW.
26	Marie	Parsons	33	Female	bhardin@example.org	868.353.9394x442	$2b$12$CsoiLRnhzczMPh65kjRsYuZ8OoGbk9iX1UJUFhee6SEnB/HlkOMcW
27	Sarah	Lee	92	Female	gbrewer@example.com	(705)957-0255x355	$2b$12$.nJkYsg4f2Du8gzKqUdk3eRGCoo92de/Qyfv7TnEbmrI38dRTxcpq
28	Jason	Smith	60	Male	belinda45@example.org	001-329-331-5130x769	$2b$12$M.X1IwxPF87CFmnhcplv5.yW6V6NnRDqfYI5zSoibssthzAft4DOW
29	Laura	Simmons	86	Female	territhompson@example.net	977.479.0769x889	$2b$12$7B9hhi5kJhwDFWF/1154behyMycC4oA5beXrFL6Uorl0g7xiGpXNm
30	Marie	Watson	93	Male	randall79@example.net	540-673-7896	$2b$12$FTmRAfpxWdTsd3KCvzCTdO2wgw/GztTlGsyvBaB370hjwec8VckpK
31	Robyn	Crosby	35	Other	justinlong@example.org	798.774.8766x93169	$2b$12$qTB1T8hXExbxsdbwC8M5lefrGhDbSCO2JRFfQHx6PIMvo1mGob3vG
32	Gregory	Allen	93	Male	randalljennifer@example.org	+1-617-505-8789x22780	$2b$12$sX4S6fiRVjHDog9n6Y7U7OF5dHqcECPq2PHxn.Vg1UeFVYMFYSUSS
33	Peter	Ayala	24	Male	charles81@example.org	001-901-704-5704x3210	$2b$12$DvlO5KFuiIsfntAqoc57leKOt6cEeevJxORAGCVlGxDrcx1ITHrpG
34	Paul	Moore	65	Female	thomasdanielle@example.org	(972)238-3778x083	$2b$12$fK4ILVzQ18XCSWbVIM.mPuWA6lpQG/B7JQhBrkm/5JftdeotbhH0i
35	Cathy	Wright	67	Other	jeffreyrichardson@example.org	990.562.2158x00554	$2b$12$XpsvxipO5mmGwtLOFZ/xoew2dxzSh2rkJtP1tz9q1n5g0EXrh47jO
36	Jean	Hoover	59	Male	owensmark@example.com	981.682.2421x7365	$2b$12$ebQ91VCWhCdNk65EtxeBk.BabitBZCETsugtu8HNmJrW.P5LCAXqm
37	Paul	Gardner	90	Other	rioskeith@example.org	+1-769-606-8454	$2b$12$2OJ7dBPmh2Wh1rIzNjBb.egrurVhWcBRa1Vt7rZi2pABrhN16xFJS
38	Susan	Moore	51	Male	sarah06@example.com	+1-255-496-4329x4130	$2b$12$s6Mlqw.dJQ171ZKPXrkJc.TyabkpUOr88qFtUVgNmYLEZjCwKKEP2
39	James	Delgado	76	Male	alexanderanderson@example.net	+1-888-801-2461	$2b$12$5zC3gy3bXJkwJ8u2pe/mG.t13HaOIRhwGVfgWLPgGy70bGlXAkHJa
40	Hannah	Williams	95	Other	susan72@example.org	492.644.9022x7789	$2b$12$qAm6vpj4XoGsI8M2qcj/j.0z4mAfla1RgGsdcHFq9kZPMW8utfVmi
41	Yolanda	Villarreal	53	Female	alvaradoderrick@example.net	468.923.1437x990	$2b$12$WCYGUmlY3Ar2c4JaG5/QZuHLuRl5zVcFDlWN/TXNZxhKXIIXpsr8C
42	Leroy	White	29	Male	yatestanya@example.com	940-517-0669	$2b$12$lnNK/UoR3FwWQTvY6rjjO..bJ8NnTziO8KgRm4CZqsth4oQb.Ght6
43	Ricardo	Alexander	97	Male	angela30@example.com	405.511.4740	$2b$12$/CGFRTdJvg8ciqFT5YVjxev2pBdT0kV8A2pcPdPVqDLEC.Cf2zuTi
44	David	Murray	43	Other	wbrown@example.net	(478)350-4310x0193	$2b$12$tW4lE5sC9C.ELzKBceNAnuxxuzh3PuvD/Uo9J0TN9Cnf9M7nNo2B2
45	John	Nguyen	35	Other	corycontreras@example.org	788.228.5909x991	$2b$12$jLGruD0A/A9FW5DBheLSaeBXwvn2/Cb799I0j.2tWgX27Y5uywSDa
46	Craig	Nielsen	19	Male	johnsonjason@example.net	001-822-991-0784	$2b$12$0D3zc/OJApinQvdwvv12ne/Cd3fkB/mhCxwY3PhIZj1TjU8m5.OuG
47	Sarah	Gentry	34	Other	ocampbell@example.org	(376)309-3548x885	$2b$12$Ti/QZs.Kl0o3ZzPINcj5e.lhCie1KivgEbgFv1M0TBvmTQ8UkwgR2
48	Jamie	Grant	80	Male	allenemma@example.net	721-873-8004x269	$2b$12$fakxN.mxO2wXCEC5xV0XRu36QdNbRuLVPWDDrA0x02WjMyJnLnhQe
49	Michael	Morgan	99	Other	wilsonebony@example.net	(984)991-9576	$2b$12$lcVVK1IFPWLFyDHmuiXWneTTEtAz3cY.VMkVzw4GnqAn/nkmixqOe
50	Leah	Rose	74	Female	alexanderstephen@example.net	5588758740	$2b$12$I.VfiKBHRTHlDLX.8kZqK.LEw5DrYezq.uOWq7h2VNXeAoJa9zusy
51	Timothy	Green	26	Male	john30@example.com	(331)893-1163x35014	$2b$12$W0UbKxen8/Cup2M3zA9DZesj7vY7NB0YZcsqqDVSlfK0gs1urZQ6K
52	Gregory	Rodriguez	95	Other	xthomas@example.org	001-819-222-9142	$2b$12$SRbtiAvAMgwaFamIvEaa5uu44rA9f9XNMFLUlgh9wWd9XVM7DLZI2
53	Diana	Campbell	78	Female	dsalas@example.net	+1-908-378-5464x7689	$2b$12$HGDlVHBYbTLq3NHpYWQ7q.MQKbqI2tilIhhLqi9.FgsuipQCl.9He
54	Mackenzie	Wolf	42	Female	donaldmoore@example.net	608-211-2225x84111	$2b$12$6xVOrngczDEg02mYFOEiiel868Sgd13a9uj3QZzX/MhfNHYq4L3SO
55	Charles	Adams	56	Female	xdonaldson@example.com	215-761-2353x190	$2b$12$5tMmJhB/i.tTMrPxgibLWuz82RhPtKVx/hsgJvbDUoDDaPFC3SCtm
56	Sarah	Ferguson	24	Female	jeffery48@example.com	479.703.7727x20687	$2b$12$HMRKZ6RLc8HJrX6dDf6.eeu9q1rp2YdYGeqZoHDiaQCJcoWpMVDN.
57	Melanie	Mclean	72	Male	stephanie61@example.com	418.583.4404x860	$2b$12$n48DSG/kLjP8Ua7K.0KnCetQpAw4ljoWqhG9./GR4HrMAZk4V60Qi
58	Jennifer	Mckee	59	Other	larry68@example.net	252-718-0171	$2b$12$fwQF481U7AmmoEOOrSESNekJOvZH.6XXpp4TYIBIbMhsXx51RPKTS
59	Christina	Aguirre	52	Female	taylorgrant@example.org	827.962.4075x632	$2b$12$LTCumnfu61unybEKRxpHQu6KYnqjd03LErKQ82nuT99fRejv/jNwy
60	Katherine	Raymond	41	Female	zwhite@example.org	810-929-2437x4924	$2b$12$z29EAMCiYglvOeilrd/4Quk37XOhxI4Jic6kHJQd4lgKLytjpqu66
61	David	Ewing	50	Male	taylormichael@example.com	+1-552-746-5175x637	$2b$12$Ft05/5FjL5JeZGBbPMb4yOWzHdFhBAJTcOKLudjd/mjej7m79TWIO
62	Rebecca	Mills	81	Female	cheryl96@example.com	+1-686-445-1865x8293	$2b$12$h7Hcgn3HzFfu6CRw0WYFZuVSSukm9/IipdjKBk.Ybfaw6DldsenyC
63	Shelia	Watkins	32	Other	fmiller@example.com	(434)597-6275x5653	$2b$12$IITWDgefP7fzThWpjlEW/Og32V0Iqxnhh6VB8Nadakadai8ia19iu
64	Jose	Carter	82	Other	krusso@example.net	4673084229	$2b$12$Wnju3HRp77u07KS5jVJZmOFbzyrSJ9vMIJu8zh3KTsEwaXhQRuQyi
65	Alicia	Harrington	87	Other	samuelrodriguez@example.com	9278030317	$2b$12$JgM9hndnlOEm5ANRQViR2ucCfoLUytbsEXIn9WHVosoRp5vf77dDm
66	Robert	Vasquez	85	Male	hunterjared@example.org	(664)327-5522x2593	$2b$12$GNclxlDIPZweViWC3Z5MZO8SElG7EIHgb./xOKJN2VUb46iB/rG5C
67	Kristin	White	87	Male	joe61@example.org	+1-989-231-7497x99673	$2b$12$Q.Jx/xLghAkxdCwOjSv6/O84W961zWTPzsFhctcCEjEwt9snAyc8S
68	Jonathan	Graham	62	Other	amandajames@example.net	(315)635-9895	$2b$12$BewkFmdie6iXab3ltVik9Op4o1yatQHR9U5shVfTTEgQ//oaDKesS
69	Kevin	Morales	18	Other	chavezspencer@example.com	+1-937-729-3135x97516	$2b$12$wLhQtdMx3QpUJcJWJk0uQutGXYwUP.dgvEKKYVh.vBUo7pRz0mBzi
70	Jason	Martinez	95	Other	donna90@example.com	(400)477-6544x8605	$2b$12$lu5TmHZtESD6cnok..Kar.7v3XMUxia43n27WFWmkJYkSRPI7QHN6
71	Brian	Nichols	23	Female	john14@example.net	(800)319-8052	$2b$12$.wbuyYwj3LY.zhE0FJg.BueujATHdLUwcyB3GJOBXOrTVNtcNZ4fm
72	Emily	Young	91	Other	jeffrey29@example.net	001-491-818-4878x2203	$2b$12$FS6f7TL5rvAfReV7.Bcbz.XE84Ayw./2fXFW.R0w/DrJMdGVfsuyS
73	Patty	Wright	47	Male	jocelynmathis@example.com	001-804-482-1596x52016	$2b$12$FzMqIMZqFWGr0OsEjIuP3.P4K9J/yy3Xt21N/zwkOJMzS.kW1lRaq
74	Shawn	Martinez	83	Male	deannawalker@example.org	+1-402-859-7337x2910	$2b$12$4FX2mMOtgw9oyqEhuNnN8.YLfhDk0n5draw0rnr7pkSBb0gK2qjq2
75	Ralph	Reyes	79	Other	sheryl43@example.org	735.282.5370	$2b$12$J5LibBnUOS4h77Xj5GmgoORo1gDWBrhL4mT12PwoLJsgWV3V9.DEe
76	Karen	Alexander	40	Male	uholland@example.org	391.327.1269	$2b$12$3tZSFvUSm2dlK4XDh/GZ0O1AJX/byS.g1Br7zo/4R6glwC5/vbnHm
77	Jennifer	Kennedy	66	Female	richardwilkins@example.com	485.819.9842	$2b$12$trigXEyzb5sbzcacjyIWOu/DGQErU.nDBB09qKS3cVxqj.WZ/9xia
78	Steven	Jenkins	99	Male	oklein@example.net	(901)903-7979x311	$2b$12$0T0vWGS3sfNEYxeMlpclbulGl4KDr4vZ106mKzd4D7KnQ/GPDWBS6
79	William	Allen	91	Female	gmorris@example.org	504.962.6077	$2b$12$m6iEhV/26Bb6iqyYPoilGuaY9Xzlb9GDKUZM8Gqg8sWZva/QeT1.O
80	David	Livingston	80	Other	kevinjackson@example.net	001-942-633-9265x520	$2b$12$mnz8pP0p9kDfK2sxSjzlwuU/Sa.ao6B.28msvUqdMitcZOOWz69cu
81	Amy	Sanchez	75	Other	jason93@example.org	798-962-1227x554	$2b$12$NUG76jmv6Hyt5y5Bir0QO.iQo44ezsGgvFdYXAMIwRonHC7SggdlC
82	Jesus	Jones	51	Male	annecarrillo@example.com	(414)525-7870x4687	$2b$12$NN4cVSqKg7OgoLeicvbK2OZTQ685oXqUXk8GxP3BvC7UiwWxonL9q
83	Theresa	Johnson	33	Male	frankibarra@example.net	+1-386-698-5253x258	$2b$12$SuK.jOS/MJeMktt0B45y6OrppgCdamyxVY34C5tRyZqUNWaH1uwNy
84	Mallory	Young	94	Other	michaelroth@example.net	001-515-589-9516x499	$2b$12$96m.rUj8shruqW0Z..UPA.VlRpAMuEjzYcDkovnqWWhDOye.5Y2vC
85	Andrew	Oliver	33	Other	dcoleman@example.org	807-727-7468x93058	$2b$12$cvgPU52Abgxm6nBU32n0N.QPZ29SGD.CcTsod2IUBtee3YR/G55jG
86	Latasha	Bradshaw	24	Female	reginaldpratt@example.org	936.216.9417	$2b$12$Vqx6lejEOKylL6ZBlu/QXOPpEoJUpXlJNxwrWKdtlwoTfk4Fbpvg6
87	Brianna	Walker	62	Other	joshua17@example.com	9519075803	$2b$12$drClfHAltpHCJUIaoNZc9uONJUH9XMNUm4RWxhoxymYmHnf1X6ajy
88	Johnny	Cummings	74	Female	garciamark@example.com	001-702-850-9339x01264	$2b$12$k31Skm5.kEwhlSmO8kEBau9uphQJrm.D/HzBxVM3aBYhnxDU4rsn6
89	Timothy	Kaiser	43	Female	brandonanderson@example.com	620-410-2907	$2b$12$hPRnIQBUysoBGwelF9c0GexkXc3VoMVegIaIeLQB00bbdJGFw1k.O
90	Scott	Wallace	71	Male	brittanywilliams@example.com	5434216113	$2b$12$cv06B75d/1SB4WQlxDpgLu4yGb58HGGh0qNJevgTHIbIriOMN99OW
91	Jason	Jones	95	Female	jillkennedy@example.com	744.787.0340	$2b$12$ytXV0nfXMv67JKM/cKFaoe91qXMWeOKHBWDJ6mY0tdRmpccemzQM2
92	Jennifer	Moody	69	Other	patelvictor@example.org	637-512-8794	$2b$12$EyZ4YSsz8NIjV9.EfbuNhuqHHp8qqbEIV6lNjRILdGwRPLUo9dQDy
93	Robert	Ramos	46	Male	bking@example.net	639-399-5931x49004	$2b$12$tu5Rd158srrdf70qUHEodutugWfH3K497KgIBKS3W1/BpMBXgTziu
94	Michael	Martin	98	Other	anthonymurray@example.org	(993)612-1782	$2b$12$xA4X.LbNvuJr.1iUGn3TZ./yOFfTMUexQzltzbR230XSde2c2uSA.
95	Kent	Johnson	51	Other	johnsonroy@example.net	001-429-584-1306	$2b$12$TA5gfRbKdr3NDHNWC1njj.qMrsnzQSAtGubTrdS5TuE/ryC1lcRXK
96	Christopher	Miller	37	Female	ronaldrodriguez@example.com	001-809-591-6152x160	$2b$12$EabfDUp/FoBUFFWFLPHDGeZVmbiEIF/Qf2..nNh.YGAVFfge8ms.2
97	Scott	Tapia	44	Female	wnorris@example.com	001-519-970-1954x117	$2b$12$.qTuL7kooHPP3W6era5.2e.AYfsMP8QA2NdV9eUNCWvpLJgkRPFSm
98	Jamie	Martin	52	Other	zsavage@example.org	997.699.4729	$2b$12$PRrQOsHX72Nv10MxXACtReTb.a3nQ.p9iEoX1iCabgC45r02G6cY2
99	Amy	Davis	41	Other	robertsonrandy@example.net	001-574-399-9414x0090	$2b$12$gwUlQJtVp9X6EvUMz7V8Wej7Uzh8zcNUf3exfdg/4zYPvO5fEFdeS
100	Michael	Livingston	21	Other	mevans@example.org	234.628.5297x38703	$2b$12$dk/HvgRql/9Wcwi5oDMduOK.xlomaAWBKbjqOjDM/I6evTH/U8lMS
101	Gadyson	omolo	24	Male	kipkiruidennis25@gmail.com	1223455667	$2b$12$ckPnWJ6Af2a2Abc9UWnmaOs3XiSF0DKUxVOOHe8SDylodCv/iMrhi
102	Mark	kip	24	Male	kipkiruidennis225@gmail.com	1223455667	$2b$12$MTW1Zd1L33z6.4bSW1xyiOqEOq.lcrcAZmfrhsbGrVAcvMK0MhRQm
106	Mark	kip	24	Male	kipkiruiden25@gmail.com	1223455667	$2b$12$BEN5HWX2pbF5lbfERzMXh.OWsb0ujH/hKbMh2uSGg8EeUV2lzNY/q
\.


--
-- Name: appointments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hospital_mngt_database_user
--

SELECT pg_catalog.setval('public.appointments_id_seq', 108, true);


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hospital_mngt_database_user
--

SELECT pg_catalog.setval('public.departments_id_seq', 16, true);


--
-- Name: doctors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hospital_mngt_database_user
--

SELECT pg_catalog.setval('public.doctors_id_seq', 50, true);


--
-- Name: patients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hospital_mngt_database_user
--

SELECT pg_catalog.setval('public.patients_id_seq', 106, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: doctors doctors_email_key; Type: CONSTRAINT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_email_key UNIQUE (email);


--
-- Name: doctors doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (id);


--
-- Name: patients patients_email_key; Type: CONSTRAINT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_email_key UNIQUE (email);


--
-- Name: patients patients_pkey; Type: CONSTRAINT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (id);


--
-- Name: appointments appointments_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id);


--
-- Name: appointments appointments_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id);


--
-- Name: doctors doctors_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hospital_mngt_database_user
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(id);


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO hospital_mngt_database_user;


--
-- Name: DEFAULT PRIVILEGES FOR TYPES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO hospital_mngt_database_user;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO hospital_mngt_database_user;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES TO hospital_mngt_database_user;


--
-- PostgreSQL database dump complete
--

\unrestrict dr8Shj80uw7SpzAUAK51NvYq4vRudivPWcjMTVeYSxbBEMFgVTIXdIHqKDQta5y

