------------------------------------------------------------------------------------------------------------------------------------------------

La mejor práctica cuando se trata de grandes cantidades de datos es crear vistas en la base de datos que contengan los resultados de las consultas.

------------------------------------------------------------------------------------------------------------------------------------------------

Sonia Celis IT Grupo Moldtrans Tel. 916696996 - Ext. 4609 Móvil: 663112532 sonia.celis@moldtrans.com www.moldtrans.com


db2 - SQL: https://www.ibm.com/docs/en/db2-for-zos/11?topic=db2-sql

-- cwbundbs.exe 
"----------------------------------------"
-- Cloud Be(1)ne - Moldtrans
"----------------------------------------"

TABLAS BEONE
TABLE_OWNER: QPGMR
TABLE_TYPE: P

"----------------------------------------"

		TABLE_NAME	TABLE_NAME			COLUMN_COUNT	ROW_LENGTH	TABLE_TEXT																		TABLE_DEFINER	DESC_ESP	
"---------------------------------------------------------------------------------------------------------------------------						------------------------------------------------------------------"
1  .	AAAEREP		AA	AE	REP			4				12			Anag Clienti Contatti Dett CC.                          						NSSMARCO		
2  .	AAAFREP		AA	AF	REP			6				183			Documenti Richiesti CC.                                 						NSSMARCO        Con Copia mensajeria
3  .	AABYCPP		AA	BY	CPP			18				163			Sped Orari.                                             						NSSMARCO        
4  .	AABZCPP		AA	BZ	CPP			18				163			Sped Ritiri Orari.                                      						NSSMARCO        
5  .	ABAYREP		AB	AY	REP			11				42			Sped/Ritiri Log PAD                                     						MARCO           
6  .	ABBFREP		AB	BF	REP			6				46			Anag Clienti Assic Credit                               						MARCO           
7  .	ACAACPP		AC	AA	CPP			13				50			Transit Time Expected.                                  						MARCO           
8  .	ANAECPP		AN	AE	CPP			7				76			Movimenti Analitici Note.                               						NSSMARCO        
9  .	ANALITICA	ANALITICA			16				87			Estrazione Movimenti Analitici per DSS                  						NSSMARCO        
10 .	ARCHFM0F	AR	CH	FM	0F		9				76			configurazione printer                                  						NSSMARCO        
11 .	ARCHWS0F	AR	CH	WS	0F		2				50			configurazione terminali                                						NSSMARCO        ??????
12 .	CABDY00F	CA	BD	Y0	0F		3				108			Calendario.NSC CalendarEventsBody.                      						NSSMARCO        
13 .	CADOC00F	CA	DO	C0	0F		4				1033		Calendario.NSC CalendarEventsDocuments. ta              						NSSMARCO        
14 .	CAEVN00F	CA	EV	N0	0F		25				516			Calendario.NSC CalendarEvents.                          						NSSMARCO        
15 .	CAEVT00F	CA	EV	T0	0F		5				63			Calendario.NSC CalendarEventType.                       						NSSMARCO        
16 .	CALNK00F	CA	LN	K0	0F		6				54			Calendario.NSC CalendarEventsLinks.                     						NSSMARCO        Parametrizacion de algo raro
17 .	CAPRT00F	CA	PR	T0	0F		11				303			Calendario.NSC CalendarEventsPartecipants.              						NSSMARCO        
18 .	CAUSR00F	CA	US	R0	0F		14				32			Profili Utenti Controllati.                             						NSSMARCO        
19 .	CGAWREP		CG	AW	REP			5				12			Modalità di Pagam. Rate                                 						NSSMARCO        
20 .	CGAXREP		CG	AX	REP			10				127			Banche ABI. t (S8 S1577286979 S1577446583)              						NSSMARCO        Maestro bancos
21 .	CGAYREP		CG	AY	REP			12				155			Banche Agenzie CAB.Ph (S8 S1577286971 S1577446583)      						NSSMARCO        Maestro bancos
22 .	CGBRREP		CG	BR	REP			3				39			Pagamenti in Lingua.P (S8 S1577286859 S1577446583)      						NSSMARCO        
23 .	DESTMF0F	DE	ST	MF	0F		1				500			Data Exchange Stream .                                  						NSSMARCO        
24 .	FORM1R		FO	RM	1R			1				2000		Messaggio Receive Formulari                             						MARCO           
25 .	IFTMAN5R	IF	TM	AN5R		2				350			Messaggio Send Esiti Spedizioni                         						NSSMARCO        Mensajeria operativa
26 .	IFTMIN5		IF	TM	IN5			1				180			Messaggio Send/Receive Spedizioni                       						NSSMARCO        
27 .	INCOREP		IN	CO	REP			2				41			Menù Programma Attenz.                                  						NSSMARCO        Parametrización menus
28 .	INCPREP		IN	CP	REP			5				130			Menù Programma Attenz. Dt                               						NSSMARCO        
29 .	INCQREP		IN	CQ	REP			2				16			Menù Programma Attenz. Ut                               						NSSMARCO        
30 .	LDISS00F	LD	IS	S0	0F		3				13			Liste di Distribuzione Soggetti.                        						NSSMARCO        
31 .	LDIST00F	LD	IS	T0	0F		8				83			Liste di Distribuzione.                                 						NSSMARCO        Listas de Distribucion - No importante
32 .	MGA1REP		MG	A1	REP			35				217			Movim Magazzino Testa (S8 S1577290939 S1578096965)      						NSSMARCO        
33 .	MGA7REP		MG	A7	REP			16				50			Causali magazzino.                                      						NSSMARCO        
34 .	MGB2REP		MG	B2	REP			8				31			Tipi - Tipo Allocazione Prop (S8 S1577834346 S1578096965)      					NSSMARCO        
35 .	MGBJREP		MG	BJ	REP			14				109			Aree di Magazzino.                                      						NSSMARCO        
36 .	MGBKREP		MG	BK	REP			3				1061		Aree di Magazzino Icone.                                						NSSMARCO        Parametrizacion programa
37 .	UAJZREP		UA	JZ	REP			2				6			Sequenza Linee.Physic (S8 S1577289278 S1577446583)      						NSSMARCO        
38 .	UAKEREP		UA	KE	REP			6				44			Tipi - Tipo assicurazione.Ph (S8 S1577289197 S1577446583)      					NSSMARCO        
39 .	UAKFREP		UA	KF	REP			27				214			Polizze assicurazione (S8 S1577289189 S1577446583)      						NSSMARCO        
40 .	UAKHREP		UA	KH	REP			6				22			Nazioni Iso.  (S8 S1577289174 S1577446583)              						NSSMARCO        Maestro paises ISO
41 .	UAKLREP		UA	KL	REP			7				21			Cond Cons Intrastat.P (S8 S1577289130 S1577446583)      						NSSMARCO        
42 .	UAKOREP		UA	KO	REP			6				77			Articoli Doganali Des (S8 S1577289101 S1577446583)      						NSSMARCO        
43 .	UBKPREP		UB	KP	REP			3				7			Voci Fattura Assoggett.                                 						NSSMARCO        Parametrización ivas por tipos de facturas
44 .	UBKQREP		UB	KQ	REP			10				57			Testo per Documenti T (S8 S1577289085 S1577446583)      						NSSMARCO        
45 .	UBKWREP		UB	KW	REP			36				150			Conti Sociali.                                          						NSSMARCO        Cabeceras cuentas a mitas
46 .	UBKXREP		UB	KX	REP			24				106			Conti Sociali Dettagl (S8 S1577289047 S1577446583)      						NSSMARCO        Facturacion Ametas  - Detalle por Expedicion
47 .	UBKYREP		UB	KY	REP			9				39			Conti Sociali Voci.Ph (S8 S1577289039 S1577446583)      						NSSMARCO        Facturacion Ametas - Detalle facturacion lineas
48 .	UBKZREP		UB	KZ	REP			7				24			Conti Sociali Voci Fa (S8 S1577289031 S1577446583)      						NSSMARCO        Comentarios facturas ametas
49 .	UBL3REP		UB	L3	REP			7				37			Suddivisione Conti Co (S8 S1577288662 S1577446583)      						NSSMARCO        Parametrizacion Servicios/cuentas/tipo de control
50 .	UBL6REP		UB	L6	REP			17				79			Linee per Filiale                                       						MARCO           Parametrizacion de Lineas de expedicion por filiales y rutas
51 .	UBL7REP		UB	L7	REP			46				196			Tassazione -zdettaglio-2.                               						NSSMARCO        Tasables por tasacion y concepto
52 .	UBL8REP		UB	L8	REP			16				113			Tassazione -zdettaglio-3.                               						NSSMARCO        
53 .	UBLLREP		UB	LL	REP			127				757			Storico Spedizioni-Posiz.                               						NSSMARCO        Maestro Expediciones 2 - Maestro en UUB1REP
54 .	UBLMREP		UB	LM	REP			84				401			Storico Liste di Carico.Phy (S8 S1577288798 S_235)      						MARCO           
55 .	UBLNREP		UB	LN	REP			95				365			Movimenti Analitici                                     						MARCO           Movimiento Analitico - Importada OK	- Ligera divergencia con analitica				
56 .	UBLPREP		UB	LP	REP			13				57			Conti Sociali Concari (S8 S1577288752 S1577446583)      						NSSMARCO        Ametas???????
57 .	UBLRREP		UB	LR	REP			13				66			Config Distrib Fornit (S8 S1577288737 S1577446583)      						NSSMARCO        Parametrización de distribución según rutas y filiales
58 .	UBLTREP		UB	LT	REP			7				75			Borderò x Corr Note.P (S8 S1577288722 S1577446583)      						NSSMARCO        Notas por manifiesto
59 .	UBLUREP		UB	LU	REP			23				286			Vincoli Dettaglio.                                      						MARCO           
60 .	UBLVREP		UB	LV	REP			5				62			Tipi - Tipo Ricev-Restit Vin (S8 S1577288708 S1577446583)      					NSSMARCO        Parte de parametrización de las Formas de pago
61 .	UBLWREP		UB	LW	REP			2				2			Trascod Ricev-Restitu (S8 S1577288700 S1577446583)      						NSSMARCO        
62 .	UBMAREP		UB	MA	REP			5				35			Tipi - Tipo Azioni Commerciali                                 					NSSMARCO        Acciones comerciales - No se utiliza
63 .	UBMBREP		UB	MB	REP			22				348			Impegni commerciali                                     						NSSMARCO        
64 .	UCM1REP		UC	M1	REP			3				165			Compagnie Aeree Loghi (S8 S1577288431 S1577446583)      						NSSMARCO        
65 .	UCMCREP		UC	MC	REP			24				394			Ubicazioni Operative. (S8 S1577288587 S1577446583)      						NSSMARCO        Ubicaciones terminales carga, no se debe utilizar demasiado
66 .	UCMFREP		UC	MF	REP			32				357			Vettori Ulteriori Dat (S8 S1577288578 S1577446583)      						NSSMARCO        
67 .	UCMKREP		UC	MK	REP			11				63			Tipi - Tipo Evento Abbinamen (S8 S1577288539 S1577446583)      					NSSMARCO        Italiano
68 .	UCMMREP		UC	MM	REP			10				146			Caratteristiche-Attrezz.                                						NSSMARCO        
69 .	UCMWREP		UC	MW	REP			15				69			Tipi - Tipo Container.                                         					NSSMARCO        Tipo contenedor
70 .	UCMZREP		UC	MZ	REP			46				796			Compagnie Aeree.                                        						NSSMARCO        Maestro de compañias aereas
71 .	UCN3REP		UC	N3	REP			5				56			Mercati. tabl (S8 S1577288309 S1577446583)              						NSSMARCO        Zonas por paises
72 .	UCN4REP		UC	N4	REP			5				52			Aree Iata. ta (S8 S1577288301 S1577446583)              						NSSMARCO        
73 .	UCN5REP		UC	N5	REP			12				117			Aereoporti                                              						MARCO           
74 .	UCN8REP		UC	N8	REP			5				62			Commodity. ta (S8 S1577288255 S1577446583)              						NSSMARCO        Tipos de comodities
75 .	UCN9REP		UC	N9	REP			11				57			Rapporti - Reporte - Informe. tab (S8 S1577288247 S1577446583)              	NSSMARCO        
76 .	UCNGREP		UC	NG	REP			14				76			Borderò x Conducente  (S8 S1577288396 S1577446583)      						NSSMARCO        
77 .	UCNIREP		UC	NI	REP			10				76			Anagrafico Navi.Physi (S8 S1577288389 S1577446583)      						NSSMARCO        
78 .	UCNJREP		UC	NJ	REP			12				73			Viaggi Nave.  (S8 S1577288381 S1577446583)              						NSSMARCO        
79 .	UCNKREP		UC	NK	REP			12				108			Anag Porti. t (S8 S1577288370 S1577446583)              						NSSMARCO        
80 .	UCNNREP		UC	NN	REP			38				768			FCR Testata.  (S8 S1577288362 S1577446583)              						NSSMARCO        
81 .	UCNOREP		UC	NO	REP			9				97			FCR Dettaglio.Physica (S8 S1577288355 S1577446583)      						NSSMARCO        Detalle de bultos por expedicion, no se utiliza
82 .	UCNPREP		UC	NP	REP			11				96			Anag Clienti Note                                       						MARCO           
83 .	UCNVREP		UC	NV	REP			5				72			Conti Sociali note.Ph (S8 S1577288341 S1577446583)      						NSSMARCO        Comentarios en Ametas
84 .	UCNWREP		UC	NW	REP			6				18			Numerazioni LDC.Physi (S8 S1577288334 S1577446583)      						NSSMARCO        Numeracion para manifiestos
85 .	UCNXREP		UC	NX	REP			9				37			Stock AWB Testata.                                      						NSSMARCO        
86 .	UCNYREP		UC	NY	REP			9				36			Stock AWB Dettaglio.                                    						NSSMARCO        
87 .	UCO0REP		UC	O0	REP			8				77			Offerte Spot Voci Note.                                 						NSSMARCO        
88 .	UCO2REP		UC	O2	REP			77				637			Anag Clienti Contabili.                                 						NSSMARCO        
89 .	UCO3REP		UC	O3	REP			3				38			Status Cliente.Physic (S8 S1577288079 S1577446583)      						NSSMARCO        Estado del cliente
90 .	UCO4REP		UC	O4	REP			34				436			Anag Clienti Indirizzi.                                 						NSSMARCO        
91 .	UCO8REP		UC	O8	REP			11				51			Tariffe -imp- mk10.                                     						NSSMARCO        
92 .	UCOGREP		UC	OG	REP			6				53			Commerciali.  (S8 S1577288214 S1577446583)              						NSSMARCO        
93 .	UCOJREP		UC	OJ	REP			20				206			Compagnie di Navigazi (S8 S1577288204 S1577446583)      						NSSMARCO        
94 .	UCOPREP		UC	OP	REP			8				85			Difformità. t (S8 S1577288188 S1577446583)              						NSSMARCO        Italiano
95 .	UCOQREP		UC	OQ	REP			8				79			Tipi - Tipo di Documento.Phy (S8 S1577288180 S1577494800)      					NSSMARCO        Tipos de documento, de momento no se como relacionarla
96 .	UCOSREP		UC	OS	REP			24				812			Sped Handling Informa (S8 S1577288163 S1577446583)      						NSSMARCO        Informacion de mercancias de aereo
97 .	UCOTREP		UC	OT	REP			34				306			Rimessa Documenti.Phy (S8 S1577288156 S1577446583)      						NSSMARCO        
98 .	UCOWREP		UC	OW	REP			98				486			Offerte Spot                                            						MARCO           
99 .	UCOXREP		UC	OX	REP			12				48			Offerte Spot Container.                                 						NSSMARCO        
100.	UCOYREP		UC	OY	REP			38				248			Offerte Spot Voci.                                      						NSSMARCO        
101.	UCOZREP		UC	OZ	REP			6				73			Offerte Spot Descrizi (S8 S1577288108 S1577446583)      						NSSMARCO        
102.	UCQ0REP		UC	Q0	REP			7				76			Tassazione -zdettagli (S8 S1577287900 S1577446583)      						NSSMARCO        
103.	UCQ2REP		UC	Q2	REP			3				38			Tipi - Tipo Vincolo in Lingu (S8 S1577287885 S1577446583)      					NSSMARCO        
104.	UCQ3REP		UC	Q3	REP			3				20			Compagnie Aeree Accou (S8 S1577287878 S1577446583)      						NSSMARCO        
105.	UCQ4REP		UC	Q4	REP			3				38			Tipi - Tipo di Visita.Physic (S8 S1577287871 S1577446583)      					NSSMARCO        
106.	UCQ6REP		UC	Q6	REP			17				551			Intestazioni Polizza                                    						MARCO           Informacion por filial
107.	UCQ7REP		UC	Q7	REP			50				495			Dispos Operaz Dog.                                      						NSSMARCO        
108.	UCQBREP		UC	QB	REP			9				23			Profili Utenti Abilit (S8 S1577288016 S1577446583)      						NSSMARCO        
109.	UCQEREP		UC	QE	REP			8				76			Tariffe -testata- not (S8 S1577287999 S1577446583)      						NSSMARCO        
110.	UCQKREP		UC	QK	REP			10				80			Tariffe -sez- note.Ph (S8 S1577287984 S1577446583)      						NSSMARCO        
111.	UCQLREP		UC	QL	REP			5				54			Tipo Operazioni Dogan (S8 S1577287976 S1577446583)      						NSSMARCO        Tipos de Operaciones, pendiente de identificar
112.	UCQMREP		UC	QM	REP			60				210			Sped Aereo                                              						MARCO           
113.	UCQOREP		UC	QO	REP			19				116			Sped Mare Container.                                    						MARCO           
114.	UCQPREP		UC	QP	REP			19				247			Prenotaz-Consol Schedule.                               						NSSMARCO        Parece diario de vuelos
115.	UCQQREP		UC	QQ	REP			12				61			Tariffe -imp- mk11.                                     						NSSMARCO        
116.	UCQRREP		UC	QR	REP			53				251			Valoriz Aereo Noli.                                     						NSSMARCO        
117.	UCQYREP		UC	QY	REP			5				14			Numeraz Sped x Serviz (S8 S1577287914 S1577446583)      						NSSMARCO        
118.	UCRAREP		UC	RA	REP			11				37			Offerte Spot Merce Dimensioni.                          						NSSMARCO        
119.	UDRGREP		UD	RG	REP			68				357			Sped Mare.                                              						NSSMARCO        
120.	UDRIREP		UD	RI	REP			39				309			Sped Mare Container Punti.                              						NSSMARCO        
121.	UDRJREP		UD	RJ	REP			23				223			Posizionamenti Contai (S8 S1577287752 S1577446583)      						NSSMARCO        
122.	UDRLREP		UD	RL	REP			9				26			Polizze di Carico CNT (S8 S1577287734 S1577446583)      						NSSMARCO        Relaciona BLs con otras cosas
123.	UDRNREP		UD	RN	REP			18				186			Sped Merce Dettaglio.Physica (S8 S1577287718 S_46)      						MARCO           OJO,ES FULL
124.	UDROREP		UD	RO	REP			4				123			Motivi anomalie in Li (S8 S1577287712 S1577446583)      						NSSMARCO        
125.	UDRPREP		UD	RP	REP			116				1947		Polizze di Carico Testata.                              						MARCO           Maestro BLs de expediciones maritimas
126.	UDRQREP		UD	RQ	REP			6				134			Polizze di Carico Rig (S8 S1577287689 S1577446583)      						NSSMARCO        Textos de los BLs
127.	UDRSREP		UD	RS	REP			20				124			Borderò x Corr CNTR.                                    						MARCO           
128.	UDRVREP		UD	RV	REP			7				226			 x stampa generic (S8 S1577287664 S1577446583)          						NSSMARCO        ETIQUETAJE genericas??????
129.	UDRXREP		UD	RX	REP			23				71			Aut Ric Sped da Cli-C (S8 S1577287650 S1577446583)      						NSSMARCO        Parametrización de distribución según rutas y filiales
130.	UDRYREP		UD	RY	REP			4				38			Trasc Codif Tab Cli-Nostr                               						MARCO           
131.	UDS0REP		UD	S0	REP			9				11			Mov Anal Tab Creaz Co (S8 S1577287355 S1577446583)      						NSSMARCO        
132.	UDS2REP		UD	S2	REP			3				47			Funzioni STS per Driv (S8 S1577287340 S1577446583)      						NSSMARCO        Italiano
133.	UDS4REP		UD	S4	REP			15				54			Viaggi Nave Senserie. (S8 S1577287322 S1577446583)      						NSSMARCO        Informacion de buques
134.	UDS5REP		UD	S5	REP			29				116			Anag Clienti Dati Commerciali.                          						NSSMARCO        
135.	UDS6REP		UD	S6	REP			16				88			Anag Clienti Concorrenti.                               						NSSMARCO        
136.	UDS7REP		UD	S7	REP			4				65			Tipi - Tipo Allocazione.                                       					NSSMARCO        No tiene datos relativos
137.	UDSFREP		UD	SF	REP			6				44			Esiti a cliente.Physi (S8 S1577287516 S1577446583)      						NSSMARCO        
138.	UDSGREP		UD	SG	REP			7				27			Esiti a Cliente Detta (S8 S1577287508 S1577446583)      						NSSMARCO        ????, para que la quiero?
139.	UDSHREP		UD	SH	REP			3				38			Responsabilità anomal (S8 S1577287500 S1577446583)      						NSSMARCO        
140.	UDTBREP		UD	TB	REP			46				711			Documenti Richiesti                                     						MARCO           Mensajeria del programa
141.	UDTJREP		UD	TJ	REP			7				45			Tipi - Tipo Evento Spedizion (S8 S1577287199 S1577446583)      					NSSMARCO        Eventos de expedicion, no traducida
142.	UEAACPP		UE	AA	CPP			14				107			Log Cancellazioni.                                      						NSSMARCO        
143.	UEACCPP		UE	AC	CPP			16				96			Offerte Spot Merce.  (S8 S1577754121 S_10)              						NSSMARCO        
144.	UEAVCPP		UE	AV	CPP			26				709			Anag Specificità Funzion                                						NSSMARCO        ???
145.	UEAWCPP		UE	AW	CPP			28				190			Viaggi Vettore Testata                                  						MARCO           
146.	UEAXCPP		UE	AX	CPP			10				39			Viaggi Vettore Dettaglio.                               						NSSMARCO        
147.	UEBJREP		UE	BJ	REP			65				1353		Sped Scheda Trasporto.                                  						NSSMARCO        
148.	UET0REP		UE	T0	REP			4				133			Polizze di Carico Tipo N.                               						NSSMARCO        
149.	UET1REP		UE	T1	REP			7				136			Polizze di Carico Not (S8 S1577287071 S1577446583)      						NSSMARCO        Descripciones 
150.	UET3REP		UE	T3	REP			23				81			Documenti Operativi.                                    						NSSMARCO        
151.	UET4REP		UE	T4	REP			8				17			Docum Operativi Subse (S8 S1577287047 S1577446583)      						NSSMARCO        
152.	UETPREP		UE	TP	REP			6				55			Codici Merceologici I (S8 S1577287148 S1577446583)								NSSMARCO   	
153.	UETZREP		UE	TZ	REP			72				1743		Polizze di Carico Tipo.                                 						MARCO           ??????
154.	UFA0REP		UF	A0	REP			2				45			Stampanti. ta (S8 S1577286827 S1577446583)              						NSSMARCO        Tipologias de etiquetas
155.	UFAEREP		UF	AE	REP			4				146			Documenti Richiesti Testo.                              						NSSMARCO        
156.	UFAGREP		UF	AG	REP			5				88			Documenti Richiesti Allegati.                           						NSSMARCO        
157.	UFBFREP		UF	BF	REP			6				73			Sped Ritiri Note.                                       						NSSMARCO        
158.	UFBIREP		UF	BI	REP			3				38			Aspetto dei beni in L (S8 S1577286773 S1577446583)      						NSSMARCO        Aspecto del bulto de carga
159.	UFBPREP		UF	BP	REP			9				143			Tipi - Tipo addebito - débito - adeudo in Lingua.                               NSSMARCO        
160.	UFBQREP		UF	BQ	REP			10				34			Anag Clienti Contatti Dettaglio.                        						NSSMARCO        ????, para que la quiero? No se utiliza en porting cliente/proveedores
161.	UFDAREP		UF	DA	REP			9				26			Sped Merce x Borderò-CNTR                               						MARCO           Registro manifiestos - Expediciones Maritimo?????
162.	UGB2REP		UG	B2	REP			9				61			Arrotondamenti.Physic (S8 S1577286708 S1577446583)      						NSSMARCO        Redondeos 
163.	UGB3REP		UG	B3	REP			2				41			Tipi - Tipo Elemento Tariffe (S8 S1577286652 S1577446583)      					NSSMARCO        
164.	UGB4REP		UG	B4	REP			8				27			Tariffe -testata- Rap (S8 S1577286693 S1577446583)      						NSSMARCO        
165.	UGBJREP		UG	BJ	REP			4				20			Arrotondamenti Valori (S8 S1577286700 S1577446583)      						NSSMARCO        
166.	UGBSREP		UG	BS	REP			6				65			Suddivisione Nazioni  (S8 S1577286733 S1577446583)      						NSSMARCO        
167.	UGBVREP		UG	BV	REP			7				35			Suddivisione Nazioni  (S8 S1577286725 S1577446583)      						NSSMARCO        
168.	UGBWREP		UG	BW	REP			39				281			Anticipi Testata.                                       						NSSMARCO        
169.	UGC3REP		UG	C3	REP			22				120			Sped Segnacolli                                         						MARCO           INCREMENTAL?
170.	UGC7REP		UG	C7	REP			13				111			Tariffe -elem - elementos- note.P (S8 S1577286528 S1577446583)      			NSSMARCO        
171.	UGC9REP		UG	C9	REP			20				106			WorkFlow - Tipi - Tipo Event (S8 S1577286521 S1577494800)      					NSSMARCO        
172.	UGCJREP		UG	CJ	REP			8				31			Anticipi Dettaglio. t (S8 S1577286659 S_1)              						NSSMARCO        
173.	UGCQREP		UG	CQ	REP			13				87			Elementi Sezione Tentat                                 						MARCO           
174.	UGCYREP		UG	CY	REP			5				53			Tipi - Tipo di Imballaggio.P (S8 S1577286574 S1577446583)      					NSSMARCO        Tipos de embalajes
175.	UGD7REP		UG	D7	REP			3				18			Compagnie di Navig Ag (S8 S1577286471 S1577446583)      						NSSMARCO        De momento nada
176.	UGD9REP		UG	D9	REP			14				127			Valoriz Aereo Noli LT (S8 S1577286403 S1577446583)      						NSSMARCO        De momento nada
177.	UGDBREP		UG	DB	REP			11				30			Anag Clienti Eventi.                                    						NSSMARCO        
178.	UGFHREP		UG	FH	REP			3				65			Difformità in Lingua. (S8 S1577286375 S1577446583)      						NSSMARCO        
179.	UGFLREP		UG	FL	REP			59				475			Entrata Magaz Testata (S8 S1577286346 S1577446583)      						NSSMARCO        
180.	UGFMREP		UG	FM	REP			7				75			Entrata Magaz Note. (S8 S1577286334 S_385)              						NSSMARCO        
181.	UGFNREP		UG	FN	REP			11				37			Entrata Magaz Merce Dimensioni.                         						NSSMARCO        
182.	UGFOREP		UG	FO	REP			23				155			Entrata Magaz Segnacolli                                						MARCO           Intentar seguir desde aquí maritimo
183.	UGFQREP		UG	FQ	REP			24				120			Entrata Magaz New Sped.Physi (S8 S1577286304 S_22)      						MARCO           
184.	UHEBCPP		UH	EB	CPP			8				60			Location Code.                                          						NSSMARCO        
185.	UHF8REP		UH	F8	REP			3				10			Tipi - Tipo numerazione Data Limite.                           					NSSMARCO        
186.	UHFRREP		UH	FR	REP			15				67			Viaggi Nave Porti.Phy (S8 S1577286297 S1577446583)      						NSSMARCO        
187.	UHFTREP		UH	FT	REP			20				344			Viaggi Nave Compagnie (S8 S1577286289 S1577446583)      						NSSMARCO        
188.	UHFUREP		UH	FU	REP			19				202			Dispos Operaz Dog Merce.                                						NSSMARCO        
189.	UHFZCPP		UH	FZ	CPP			3				21			Anagrafico Navi EDI.P (S8 S1577286276 S1577446583)      						NSSMARCO        
190.	UHMDREP		UH	MD	REP			31				182			Sped Ritiri Merce                                       						MARCO           
191.	UHMEREP		UH	ME	REP			12				38			Sped Ritiri Merce Dimens                                						MARCO           
192.	UHMXREP		UH	MX	REP			21				119			Sped Ritiri Segnacolli                                  						MARCO           Modulo recogidas/entregas
193.	UIA3CPP		UI	A3	CPP			4				79			TRF Tipi - Tipo Anomalia Lingua.                               					NSSMARCO        
194.	UIA5CPP		UI	A5	CPP			26				667			Sped Aereo LTA                                          						MARCO           
195.	UIACCPP		UI	AC	CPP			4				41			Documento-Condizione.                                   						NSSMARCO        
196.	UIAECPP		UI	AE	CPP			3				54			Regimi Nazionali.                                       						NSSMARCO        
197.	UIAHCPP		UI	AH	CPP			15				46			Spedizione Costi Singoli.                               						NSSMARCO        
198.	UIASCPP		UI	AS	CPP			5				80			TRF Tipi - Tipo Anomalia.                                      					NSSMARCO        Tipos de anomalias en la mercancia
199.	UIF9REP		UI	F9	REP			120				625			Tariffe -Matrice Stampa.                                						MARCO           
200.	UPA1REP		UP	A1	REP			5				1090		Tipo Statistiche Dati Utente.                           						NSSMARCO        Estadisticas parametrizables - No importante
201.	UPA2REP		UP	A2	REP			33				287			Tipi - Tipo Attivita. tabl (S8 S1577671832 S_831)              					MARCO           
202.	UPA3REP		UP	A3	REP			41				190			Attivita.                                               						NSSMARCO        
203.	UPA4REP		UP	A4	REP			36				113			Attivita Utenti Assegnati.                              						NSSMARCO        
204.	UPA5REP		UP	A5	REP			7				129			Attività Eventi.                                        						NSSMARCO        
205.	UPAAREP		UP	AA	REP			5				75			WorkGroup.                                              						NSSMARCO        
206.	UPABREP		UP	AB	REP			4				59			Gruppi Autorizzazione.                                  						NSSMARCO        Grupos de autorización
207.	UPACREP		UP	AC	REP			23				336			Profili Utenti.                                         						NSSMARCO        
208.	UPADREP		UP	AD	REP			9				23			Autorizzazioni Utenti.                                  						NSSMARCO        
209.	UPAEREP		UP	AE	REP			17				111			WorkFlow - Tipologie.                                   						NSSMARCO        Tipologias de workflow - Posible importacion
210.	UPAFREP		UP	AF	REP			6				72			WorkFlow - Tipi - Tipo Status.                                 					NSSMARCO        Tipo de estado de workflow, a importar cuando entre
211.	UPAGREP		UP	AG	REP			3				57			WorkFlow - Tipi - Tipo Status in Lingua.                       					NSSMARCO        
212.	UPAHREP		UP	AH	REP			3				57			WorkFlow - Tipi - Tipo Evento in Lingua.                       					NSSMARCO        Descripciones worklflow multilenguaje
213.	UPAIREP		UP	AI	REP			12				53			WorkFlow.                                               						NSSMARCO        Parametrizacion del workflow
214.	UPAJREP		UP	AJ	REP			4				22			Tariffe -listini- Rap-Arr.                              						NSSMARCO        Codigos de redondeo para tarifas
215.	UPAKREP		UP	AK	REP			68				224			WorkFlow - Eventi Sta (S8 S1577469697 S1578118769)      						MARCO           Parametrización del workflow
216.	UPALREP		UP	AL	REP			17				65			WorkFlow - Soggetti Invio Eventi.                       						MARCO           
217.	UPAMREP		UP	AM	REP			13				46			WorkFlow - Sped                                         						MARCO           
218.	UPANREP		UP	AN	REP			28				91			WorkFlow - Sped Status.Phys (S8 S1577477726 S_202)      						MARCO           EDIs???
219.	UPAOREP		UP	AO	REP			66				281			WorkFlow - Sped Eventi                                  						MARCO           
220.	UPAPREP		UP	AP	REP			7				136			WorkFlow - Sped Note.                                   						NSSMARCO        
221.	UPAQREP		UP	AQ	REP			13				47			WorkFlow - Sped Invio Eventi.                           						MARCO           
222.	UPARREP		UP	AR	REP			4				49			Progressivi Alfanumerici.                               						NSSMARCO        
223.	UPASREP		UP	AS	REP			4				59			Gruppi Funzione.                                        						NSSMARCO        
224.	UPATREP		UP	AT	REP			10				39			Funzioni Utenti.                                        						NSSMARCO        
225.	UPAUREP		UP	AU	REP			2				4			Forms Etichette Testata.                                						NSSMARCO        
226.	UPAVREP		UP	AV	REP			6				111			Forms Etichette Dettaglio.                              						NSSMARCO        
227.	UPAYREP		UP	AY	REP			6				316			Tipi - Tipo Statistiche.                                       					NSSMARCO        
228.	UPAZREP		UP	AZ	REP			4				51			Progressivi Numerici.                                   						NSSMARCO        
229.	UPB3REP		UP	B3	REP			7				85			Testi Messaggi.Index.                                   						NSSMARCO        
230.	UPB4REP		UP	B4	REP			4				118			Testi Messaggi.Content.                                 						NSSMARCO        Parametrizacion
231.	UPB6REP		UP	B6	REP			2				41			Categorie Messaggi.                                     						NSSMARCO        Categorias mensajerias - No importante
232.	UPBAREP		UP	BA	REP			5				9			Elementi Sezione Controlli.                             						NSSMARCO        
233.	UPBBREP		UP	BB	REP			13				66			Anag Clienti Commerciali.                               						NSSMARCO        
234.	UPBHREP		UP	BH	REP			8				133			Corpo Polizza.                                          						NSSMARCO        
235.	UPBRREP		UP	BR	REP			8				144			Documenti Elettronici.                                  						NSSMARCO        EDI
236.	UPBWREP		UP	BW	REP			17				58			EDI Send-Receive Session.                               						NSSMARCO        
237.	UPBZREP		UP	BZ	REP			39				69			Anag Clienti Dati Depositan (S8 S1577813968 S_572)      						MARCO           
238.	UPC0REP		UP	C0	REP			26				408			Invio Messaggi.MailQueue DB (S8 S1577852368 S_388)      						MARCO           Cola de mensajes pendientes de enviar (OPERATIVA)
239.	UPC1REP		UP	C1	REP			4				74			Invio Messaggi.MailQueueTags DBB.                       						NSSMARCO        
240.	UPC5REP		UP	C5	REP			12				66			Frequenze Trasporto.                                    						NSSMARCO        Frecuencias de transporte
241.	UPC6REP		UP	C6	REP			6				61			Transit Time.                                           						NSSMARCO        
242.	UPC7REP		UP	C7	REP			3				63			Categorie Classificazioni.                              						NSSMARCO        Categorias de clasificación para CRM/Cliente
243.	UPC8REP		UP	C8	REP			3				70			Caratteristiche Classificazioni.                        						NSSMARCO        
244.	UPC9REP		UP	C9	REP			4				80			Attributi Classificazioni.                              						NSSMARCO        Atributos clasificacion cliente
245.	UPCAREP		UP	CA	REP			10				61			Anag Clienti Classificazioni.                           						NSSMARCO        
246.	UPCTREP		UP	CT	REP			35				1214		EDI Message Definition.                                 						MARCO           
247.	UPCWREP		UP	CW	REP			5				18			Rapporti - Reporte - Informe di Visita Contatti.        						NSSMARCO        
248.	UPCXREP		UP	CX	REP			5				1041		Attivita Preferenze Utenti.                             						NSSMARCO        
249.	UPCYREP		UP	CY	REP			2				13			Attivita Preferenze LinkType.                           						NSSMARCO        
250.	UPCZREP		UP	CZ	REP			8				26			WorkGroup Profili Utenti.                               						NSSMARCO        
251.	UPD0REP		UP	D0	REP			8				33			Attivita Promemoria.                                    						NSSMARCO        
252.	UPD1REP		UP	D1	REP			10				13			Controlli Codici Postali Nazioni.                       						NSSMARCO        
253.	UPD2REP		UP	D2	REP			10				50			Assegnazione Zone.                                      						NSSMARCO        
254.	UPD5REP		UP	D5	REP			8				33			Tariffe -imp- mk14.                                     						NSSMARCO        Tarifas especiales, detalle no importante
255.	UPD6REP		UP	D6	REP			6				293			Reindirizzamento Stampe.                                						NSSMARCO        
256.	UPD7REP		UP	D7	REP			8				46			Esiti Attivita.                                         						NSSMARCO        Estado Actividad CRM
257.	UPD8REP		UP	D8	REP			4				65			Tipi - Tipo Nolo Aereo.                                        					NSSMARCO        
258.	UPD9REP		UP	D9	REP			5				53			EDI Send-Receive Session Link.                          						MARCO           
259.	UPDAREP		UP	DA	REP			2				12			Anag Porti Destinazioni.                                						NSSMARCO        ???
260.	UPDBREP		UP	DB	REP			24				26			Rese x Trasporto e Se (S8 S1578109960 S1578110154)      						MARCO           
261.	UPDCREP		UP	DC	REP			33				121			BeOne Air Sync.                                         						MARCO           
262.	UPDDREP		UP	DD	REP			14				60			BeOne Sync Log.                                         						MARCO           
263.	UPDEREP		UP	DE	REP			7				221			BeOne Air Sync Transcoding.                             						MARCO           
264.	UPDFREP		UP	DF	REP			20				465			Sped Merce ADR.                                         						MARCO           
265.	UPDGREP		UP	DG	REP			5				19			Linee Tipi - Tipo Segnacollo. tab (S8 S_33 S_344)              					MARCO           
266.	UPDHREP		UP	DH	REP			29				133			Verifica Fatture Testata.                               						MARCO           Facturas de Compra
267.	UPDIREP		UP	DI	REP			10				56			Verifica Fatture Utenti.                                						MARCO           Verificacion de facturas - ultimo registro?????
268.	UPDJREP		UP	DJ	REP			5				23			Verifica Fatture Aliquote.                              						MARCO           Facturas de Compra - Importes IVA
269.	UPDKREP		UP	DK	REP			17				127			Verifica Fatture Dettaglio EDI.                         						MARCO           ????, para que la quiero?
270.	UPDLREP		UP	DL	REP			7				226			Anag Clienti Storico  (S8 S1578138487 S1578137691)      						MARCO           
271.	UPDMREP		UP	DM	REP			7				24			Anag Clienti Fidi.Phy (S8 S1578138405 S1578137691)      						MARCO           
272.	UPDNREP		UP	DN	REP			4				34			Anag Clienti Fido da Esterno.                           						NSSMARCO        
273.	UPDOREP		UP	DO	REP			15				88			Anag Clienti Storico Fuori  (S8 S1578138281 S_114)      						MARCO           
274.	UPEAREP		UP	EA	REP			10				70			PLEX Aree Cross Docking                                 						MARCO           
275.	UPEBREP		UP	EB	REP			14				98			Linee Cross Docking.                                    						MARCO           
276.	UPECREP		UP	EC	REP			6				58			PLEX Porte Cross Docking                                						MARCO           
277.	UPEDREP		UP	ED	REP			18				80			PLEX Missioni CD Testata                                						MARCO           Misiones - filiales 11,13, 15, 20, 22
278.	UPEEREP		UP	EE	REP			34				180			Missioni Cross Docking Dettaglio.                       						MARCO           
279.	UPEFREP		UP	EF	REP			10				59			PLEX Missioni CD Anomalie                               						MARCO           
280.	UPEGREP		UP	EG	REP			9				26			Missioni Cross Docking Elementi.                        						MARCO           Detalles misiones cross Docking
281.	UPEHREP		UP	EH	REP			41				429			Leads.                                                  						MARCO           
282.	UPEIREP		UP	EI	REP			12				264			Leads Contacts. tabl (S8 S1578160972 S_59)              						MARCO           
283.	UPEJREP		UP	EJ	REP			43				425			Documenti Commerciali.                                  						MARCO           
284.	UPEKREP		UP	EK	REP			14				269			Documenti Commerciali Contatti.                         						MARCO           Contactos para documentos comerciales, 
285.	UPELREP		UP	EL	REP			6				73			Documenti Commerciali Note.                             						MARCO           
286.	UPEMREP		UP	EM	REP			28				110			Documenti Commerciali Traffico.                         						MARCO           
287.	UPEOREP		UP	EO	REP			7				50			Leads Classificazioni.                                  						MARCO           
288.	UPEVREP		UP	EV	REP			28				278			Sped Contatti.                                          						MARCO           Contactos especificos expedicion
289.	UPEXREP		UP	EX	REP			4				10			Tipi - Tipo di Documento - Soggetti.                           					MARCO           ???
290.	UPEZREP		UP	EZ	REP			5				65			WorkFlow - Eventi Status Descr.                         						MARCO           Descripciones eventos workflow
291.	URB7REP		UR	B7	REP			21				308			Anag Clienti Persone.                                   						NSSMARCO        
292.	URB8REP		UR	B8	REP			2				39			Qualifiche Persone.                                     						NSSMARCO        Tipo de contacto cliente
293.	URB9CPP		UR	B9	CPP			6				25			Offerte Spot Eventi.                                    						NSSMARCO        ?????
294.	URCFREP		UR	CF	REP			13				67			Unit Load Device.                                       						NSSMARCO        
295.	URCGREP		UR	CG	REP			36				249			Offerte Spot Opzioni.                                   						NSSMARCO        
296.	UUA2REP		UU	A2	REP			11				79			Nazioni. tabl (S8 S1577290927 S1577446583)              						NSSMARCO        Maestro paises
297.	UUA3REP		UU	A3	REP			6				28			Trattamenti preferenz (S8 S1577290919 S1577446583)      						NSSMARCO        
298.	UUA4REP		UU	A4	REP			16				101			Pagamenti. ta (S8 S1577290911 S1577446583)              						NSSMARCO        
299.	UUA5REP		UU	A5	REP			9				54			Divise. (S8 S1577290902 S1577446583)                    						NSSMARCO        
300.	UUA6REP		UU	A6	REP			9				43			Cambi. (S8 S1577290894 S1577446583)                     						NSSMARCO        
301.	UUAFREP		UU	AF	REP			14				138			Magazzini. ta (S8 S1577291046 S1577446583)              						NSSMARCO        Maestro de almacenes definidos en el sistema
302.	UUAKREP		UU	AK	REP			14				90			Classi Merceologiche. (S8 S1577291037 S1577446583)      						NSSMARCO        Clases de mercancias
303.	UUALREP		UU	AL	REP			6				52			Filiali. tabl (S8 S1577291028 S1577446583)              						NSSMARCO        Filiales - Importar
304.	UUAMREP		UU	AM	REP			12				56			Categorie clienti.Phy (S8 S1577291020 S1577446583)      						NSSMARCO        Categorias de cliente según cuenta contable
305.	UUANREP		UU	AN	REP			6				53			Lingue. (S8 S1577291012 S1577446583)                    						NSSMARCO        Idiomas
306.	UUAOREP		UU	AO	REP			6				44			Categorie articoli.Ph (S8 S1577291004 S1577446583)      						NSSMARCO        De momento nada
307.	UUAPREP		UU	AP	REP			6				44			Unità di misura.Physi (S8 S1577290996 S1577446583)      						NSSMARCO        
308.	UUAQREP		UU	AQ	REP			7				55			Piano dei conti.Physi (S8 S1577290988 S1577446583)      						NSSMARCO        
309.	UUARREP		UU	AR	REP			19				85			Assoggettamenti fisca (S8 S1577290980 S1577446583)      						NSSMARCO        Categorias fiscales / Tipos de IVA
310.	UUB0REP		UU	B0	REP			33				636			Vettori. tabl (S8 S1577290776 S1577446583)              						NSSMARCO        
311.	UUB1REP		UU	B1	REP			100				1006		Sped. (S8 S1577290761 S1577446583)                      						NSSMARCO        Maestro Expediciones 1
312.	UUB5REP		UU	B5	REP			12				62			Articoli Doganali.Phy (S8 S1577290730 S1577446583)      						NSSMARCO        CODIGOS ADUANAS (INTRASTAT????)
313.	UUB6REP		UU	B6	REP			7				141			Regolamenti-Leggi.Phy (S8 S1577290721 S1577446583)      						NSSMARCO        
314.	UUB9REP		UU	B9	REP			26				147			Voci fattura.                                           						NSSMARCO        Conceptos de factura/Coste, con su parametrización
315.	UUBAREP		UU	BA	REP			35				441			Fornitori. ta (S8 S1577290876 S1577446583)              						NSSMARCO        
316.	UUBLREP		UU	BL	REP			6				54			Aspetto dei beni.Phys (S8 S1577290807 S1577446583)      						NSSMARCO        Aspecto del bulto de carga
317.	UUBMREP		UU	BM	REP			8				31			Progressivi documenti (S8 S1577290799 S1577446583)      						NSSMARCO        
318.	UUBOREP		UU	BO	REP			6				44			Categorie fornitori.P (S8 S1577290784 S1577446583)      						NSSMARCO        
319.	UUC0REP		UU	C0	REP			16				99			Allocazioni.  (S8 S1577290566 S1577783541)              						NSSMARCO        
320.	UUC8CPP		UU	C8	CPP			217				1068		Sts parametri.Physica (S8 S1577290545 S1577446583)      						NSSMARCO        
321.	UUCDREP		UU	CD	REP			7				61			Tipi - Tipo mezzo. t (S8 S1577290681 S1577446583)              					NSSMARCO        
322.	UUCHREP		UU	CH	REP			4				64			Voci fattura in lingu (S8 S1577290673 S1577446583)      						NSSMARCO        Descripciones de conceptos de factura en idiomas
323.	UUCIREP		UU	CI	REP			12				74			Tipi - Tipo Vincolo. (S8 S1577290666 S1577446583)              					NSSMARCO        Formas de pago del documento
324.	UUCKREP		UU	CK	REP			46				270			Sped Merce                                              						MARCO           Bultos por expedicion
325.	UUCLREP		UU	CL	REP			20				307			Sped Mitt-Dest Ulteri (S8 S1577290650 S1577446583)      						NSSMARCO        
326.	UUCMREP		UU	CM	REP			86				518			Borderò x Conducente.Physic (S8 S1577290636 S_235)      						MARCO           
327.	UUCNREP		UU	CN	REP			9				70			Linee. (S8 S1577290623 S_10)                            						MARCO           Maestro de rutas de expedicion
328.	UUCSREP		UU	CS	REP			6				73			Sped Note. ta (S8 S1577290614 S1577446583)              						NSSMARCO        Comentarios de las expediciones
329.	UUCVREP		UU	CV	REP			11				52			Tipi - Tipo servizio.Physica (S8 S1577290582 S1577446583)      					NSSMARCO        Importada, tipos de servicio
330.	UUCZREP		UU	CZ	REP			7				40			Causali di trasporto. (S8 S1577290574 S1577446583)      						NSSMARCO        Italiano
331.	UUD0REP		UU	D0	REP			11				48			Tariffe -imp- mk02.                                     						NSSMARCO        
332.	UUD4REP		UU	D4	REP			7				27			Tariffe -imp- mk06.                                     						NSSMARCO        
333.	UUD6REP		UU	D6	REP			11				91			Tipi - Tipo addebito - débito - adeudo.                                         NSSMARCO        Tipo de calculo o tipo de tarifa
334.	UUD8REP		UU	D8	REP			41				248			Tariffe -testata-                                       						MARCO           Cabecera Tarifas
335.	UUDDREP		UU	DD	REP			78				513			Anag Clienti. (S8 S1577290537 S1577446583)              						NSSMARCO        
336.	UUDEREP		UU	DE	REP			9				39			Tipi - Tipo entità.  (S8 S1577290519 S1577446583)              					NSSMARCO        
337.	UUDFREP		UU	DF	REP			5				46			Tipi - Tipo numerazione.Phys (S8 S1577290512 S1577446583)      					NSSMARCO        
338.	UUDOREP		UU	DO	REP			6				44			Categorie merce.Physi (S8 S1577290427 S1577446583)      						NSSMARCO        
339.	UUDPREP		UU	DP	REP			6				44			Categorie tariffa.Phy (S8 S1577290419 S1577446583)      						NSSMARCO        
340.	UUDQREP		UU	DQ	REP			17				111			Elementi sezione                                        						MARCO           
341.	UUDRREP		UU	DR	REP			16				235			Sezioni tariffa.Physi (S8 S1577290403 S1577446583)      						NSSMARCO        
342.	UUDSREP		UU	DS	REP			16				62			Sped Riferimenti.Phys (S8 S1577290394 S1577494800)      						NSSMARCO        Documentos asociados a expedicion - OJO, ES FULL
343.	UUDUREP		UU	DU	REP			57				196			Sped Movim. t (S8 S1577290379 S1577446583)              						NSSMARCO        Tabla con los movimientos de expediente asociados a movimientos de manifiesto
344.	UUDWREP		UU	DW	REP			34				175			Tariffe -elem - elementos-.                                         			NSSMARCO        
345.	UUDXREP		UU	DX	REP			43				185			Tariffe -sez-                                           						MARCO           Tarifas
346.	UUDYREP		UU	DY	REP			13				106			Tariffe -listini-.Phy (S8 S1577290320 S1577446583)      						NSSMARCO        Parametrizacion de tarifas
347.	UUDZREP		UU	DZ	REP			11				50			Tariffe -imp- mk01.                                     						NSSMARCO        
348.	UUE1REP		UU	E1	REP			10				107			Uffici Dogan-Valichi. (S8 S1577290032 S1577446583)      						NSSMARCO        ?????
349.	UUEAREP		UU	EA	REP			6				43			Tipi - Tipo tariffa. (S8 S1577290245 S1577446583)              					NSSMARCO        
350.	UUEBREP		UU	EB	REP			13				74			Cond Cons                                               						MARCO           Incoterms, IMPORTAR
351.	UUECREP		UU	EC	REP			8				60			Cond Cons in Lingua.P (S8 S1577290229 S1577446583)      						NSSMARCO        Codiciones por idioma
352.	UUEEREP		UU	EE	REP			109				402			Tassazione -testata-.                                   						MARCO           Cabecera Tasaciones
353.	UUEGREP		UU	EG	REP			17				111			Tassazione -zdettaglio-                                 						MARCO           Detalle Tasaciones
354.	UUEKREP		UU	EK	REP			2				4			Magazzini della filia (S8 S1577290182 S1577446583)      						NSSMARCO        Almacenes por filial
355.	UUELREP		UU	EL	REP			4				15			Profili Utenti.Physic (S8 S1577290175 S1577446583)      						NSSMARCO        
356.	UUERREP		UU	ER	REP			16				86			Partenze Arrivi.Physi (S8 S1577290109 S1577446583)      						NSSMARCO        
357.	UUETREP		UU	ET	REP			6				44			Classi di Distanza.Ph (S8 S1577290092 S1577446583)      						NSSMARCO        
358.	UUEYREP		UU	EY	REP			10				90			Tar Agg a Cliente Tes (S8 S1577290058 S1577446583)      						NSSMARCO        
359.	UUEZREP		UU	EZ	REP			16				63			Tar Agg a Cliente Dett                                  						MARCO           
360.	UUF2REP		UU	F2	REP			5				72			Tassazione -note-.Phy (S8 S1577289876 S1577446583)      						NSSMARCO        
361.	UUF4REP		UU	F4	REP			85				1581		CMR testata.                                            						NSSMARCO        
362.	UUF5CPP		UU	F5	CPP			5				83			CMR dettaglio.                                          						NSSMARCO        
363.	UUFAREP		UU	FA	REP			15				55			Tar Agg a Fornitore Dett                                						MARCO           
364.	UUFBREP		UU	FB	REP			6				50			Raggr Fatture Traspor (S8 S1577289976 S1577446583)      						NSSMARCO        Tipo de facturacion, no utilizada
365.	UUFFREP		UU	FF	REP			19				341			Azienda. tabl (S8 S1577289933 S1577446583)              						NSSMARCO        Datos de Filiales y empresas grupo????
366.	UUFSREP		UU	FS	REP			8				23			Parametri x Mov Conta (S8 S1577289919 S1577446583)      						NSSMARCO        Importada, marca la parametrización por filial y concepto factura debe/haber
367.	UUFVREP		UU	FV	REP			18				79			Piano dei conti anali (S8 S1577289912 S1577446583)      						NSSMARCO        
368.	UUFYREP		UU	FY	REP			3				42			Raggruppamento Analit (S8 S1577289894 S1577446583)      						NSSMARCO        Parametrización de agrupaciones cuentas de resultados (No se usa)
369.	UUG0REP		UU	G0	REP			7				20			Testo Commerc Testata (S8 S1577289767 S1577446583)      						NSSMARCO        
370.	UUG1CPP		UU	G1	CPP			7				87			Testo Commerc Dettagl (S8 S1577289760 S1577446583)      						NSSMARCO        
371.	UUGNREP		UU	GN	REP			9				63			Province.                                               						NSSMARCO        
372.	UUGPREP		UU	GP	REP			6				53			Modo di trasporto.Phy (S8 S1577289791 S1577446583)      						NSSMARCO        
373.	UUGQREP		UU	GQ	REP			6				54			Natura transazioni.Ph (S8 S1577289783 S1577446583)      						NSSMARCO        
374.	UUGVREP		UU	GV	REP			16				72			Tributi. tabl (S8 S1577289775 S1577446583)              						NSSMARCO        Italiano
375.	UUHCREP		UU	HC	REP			7				140			Rese Istat. t (S8 S1577289729 S1577446583)              						NSSMARCO        Incoterms para estadisticas
376.	UUHGREP		UU	HG	REP			18				117			Rapporti - Reporte - Informe di Visita                  						MARCO           
377.	UUHHREP		UU	HH	REP			9				88			Rapporti - Reporte - Informe di Visita Traff            						MARCO           
378.	UUHQREP		UU	HQ	REP			6				58			Centri di Attività.Ph (S8 S1577289660 S1577446583)      						NSSMARCO        Centro de actividad, no se utiliza
379.	UUHRREP		UU	HR	REP			30				168			Documenti Elettronici (STS).                            						NSSMARCO        
380.	UUI4REP		UU	I4	REP			40				214			Entrata Magaz Merce                                     						MARCO           
381.	UUI8REP		UU	I8	REP			51				181			Vincoli.                                                						NSSMARCO        ???????, como si fueran facturas no casadas????
382.	UUIAREP		UU	IA	REP			39				57			Contr Resa-Ottenim Valori.                              						NSSMARCO        Parametrizacion, de momento no analizar
383.	UUIHREP		UU	IH	REP			7				55			Regimi Doganali e Amm (S8 S1577289564 S1577446583)      						NSSMARCO        Estados de mercancia / en italiano
384.	UUILREP		UU	IL	REP			2				3			Motivi anomalie.Physi (S8 S1577289549 S1577446583)      						NSSMARCO        
385.	UUIMREP		UU	IM	REP			6				56			Regioni - Regiones.                                                				NSSMARCO        
386.	UUINREP		UU	IN	REP			7				34			Tipi - Tipo paletta. (S8 S1577289531 S1577446583)              					NSSMARCO        Tipos de materiales de soporte (palets/etc)
387.	UUIOREP		UU	IO	REP			39				231			Borderò x Corr.                                         						MARCO           Informacion Manifiestos, pdte analizar
388.	UUIPREP		UU	IP	REP			12				38			Sped Merce Dimensioni                                   						MARCO           
389.	UUIQREP		UU	IQ	REP			10				83			Esiti. (S8 S1577289508 S1577446583)                     						NSSMARCO        Codigos de Resultado Expedicion - Marcan flags calculo coste, etc
390.	UUIVREP		UU	IV	REP			29				59			Anag Clienti Dati Partic                                						MARCO           
391.	UUJAREP		UU	JA	REP			7				28			Raggruppamenti rese.P (S8 S1577289395 S1577446583)      						NSSMARCO        ????
392.	UUJCREP		UU	JC	REP			7				80			Dispos Anomalie.Physi (S8 S1577289379 S1577446583)      						NSSMARCO        ?????
393.	UUJDREP		UU	JD	REP			106				1068		Sped Ritiri.                                            						NSSMARCO        Retiradas de Mercancias
394.	UUJEREP		UU	JE	REP			34				84			Sped Ritiri Movim.                                      						MARCO           Movimientos de las retiradas de mercancias, enlace con manifiesto y expedicion
395.	UUJOREP		UU	JO	REP			3				40			Classi Merceol in Lin (S8 S1577289346 S1577446583)      						NSSMARCO        Tipos de mercancias en idiomas
396.	UUJPREP		UU	JP	REP			4				65			Tipi - Tipo Vincolo Dettagli (S8 S1577289339 S1577446583)      					NSSMARCO        Textos de formas de pago por lenguaje
397.	UUJQREP		UU	JQ	REP			7				121			Testo per documenti.P (S8 S1577289332 S1577446583)      						NSSMARCO        Textos para documentos
398.	UUJSREP		UU	JS	REP			17				116			Fatture                                                 						MARCO           Facturas de Venta
399.	UUJUREP		UU	JU	REP			7				27			Fatture Totali Aliquo (S8 S1577289293 S1577446583)      						NSSMARCO        Facturas de venta - Importes IVA

"----------------------------------------"

Tables de Base >> 

- Fichas cliente
- Filiales pert. Clientes
- Clientes Externos Variados de WEB
- Vista Clientes Operativos
- Vista Contactos Operativos
- Listas de Distribución
- Tipos de Unidad
- Transportistas
- Choferes
- Fichas Unidades
- Regiones/Estados
- Provincias/Municipios
- Zonas (Partidas/Arribos/Fronteras)
- Clases de Distancia
- Rutas
- Agrupación Localidad
- Asignación Zonas
- Modifica Agrupación Sobre Localidad
- Localidades Agotadas por Cliente
- Aspecto de los Bienes
- Tipos Vínculo
- Tipologías Mercancía Transporte
- Clases de Mercancías
- Unidades de Medida
- Tipos Pallet
- Resultados/Motivos
- Tipos Evento Expedición
- Tipos de Documentos
- Zonas de Distribución
- Tipo Operaciones Aduanales
- Sujetos Restitución Documentos
- Tipos de Seguro
- Polizas de Seguro
- TRF Tipos Anomalías
- Documentos/Condi... Transportistas
- Sellos Manifiesto
- Controles Códigos Postares Paises
- Clasificaciones
- Transit Time Expected

"----------------------------------------"
Campos de Texto / Descripciones etc.
terminan en TX,  
Contienen Desc

AAAFREP		AFWZTX		AF	WZ	TX		AA	AF	REP		Attenzione Di	
AABYCPP		BYW2TX		BY	W2	TX		AA	BY	CPP		Note Indirizzi 2	
AABZCPP		BZW2TX		BZ	W2	TX		AA	BZ	CPP		Note Indirizzi 2	
ANALITICA	LNB0TX		LN	B0	TX		AN	AL	ITICA	Cd Fornitore - Proveedor	
CAEVT00F	NCMXA		NC	MX	A		CA	EV	T00F	NSC CalendarEventDescription
CGAYREP		AYALUX		AY	AL	UX		CG	AY	REP		Descrizione Agenzia	
CGBRREP		BRB4TX		BR	B4	TX		CG	BR	REP		Descr Pagamento	
CGBRREP		BRB4TX		BR	B4	TX		CG	BR	REP		Descr Pagamento	
INCOREP		COC9TX		CO	C9	TX		IN	CO	REP		Descrizione Menú	
INCOREP		COC9TX		CO	C9	TX		IN	CO	REP		Descrizione Menú	
INCPREP		CPDATX		CP	DA	TX		IN	CP	REP		Comando	
INCPREP		CPDBTX		CP	DB	TX		IN	CP	REP		Descrizione Comando	
INCPREP		CPDBTX		CP	DB	TX		IN	CP	REP		Descrizione Comando	
LDIST00F	DLISTA		DL	IS	TA		LD	IS	T00F	Descrizione Lista
MGA1REP		A1BWTX		A1	BW	TX		MG	A1	REP		Note	
MGA7REP		A7B6TX		A7	B6	TX		MG	A7	REP		Descr Causale	
MGA7REP		A7B6TX		A7	B6	TX		MG	A7	REP		Descr Causale	
MGBJREP		OP9A1A		OP	9A	1A		MG	BJ	REP		Descrizione Area Magazzino	
UPC0REP 	OPMLTPTX	OP	ML	TPTX	UP	C0	REP 	Tipo Testo SMS		
UAKEREP		KEQQA9		KE	QQ	A9		UA	KE	REP		Descr Tp Assicurazione	
UAKFREP		KFB0TX		KF	B0	TX		UA	KF	REP		Cd Fornitore - Proveedor	
UAKFREP		KFBWTX		KF	BW	TX		UA	KF	REP		Note	
UAKFREP		KFL5TX		KF	L5	TX		UA	KF	REP		Descr Polizza Assicuraz	
UAKFREP		KFL5TX		KF	L5	TX		UA	KF	REP		Descr Polizza Assicuraz	
UAKOREP		KOCIPG		KO	CI	PG		UA	KO	REP		Progr Descr Articoli	
UAKOREP		KOGQTX		KO	GQ	TX		UA	KO	REP		Descr Merce 1	
UAKOREP		KOGQTX		KO	GQ	TX		UA	KO	REP		Descr Merce 1	
UBKQREP		KQMBTX		KQ	MB	TX		UB	KQ	REP		Descr Tp Testo x Document	
UBKQREP		KQMBTX		KQ	MB	TX		UB	KQ	REP		Descr Tp Testo x Document	
UBKWREP		KWB0TX		KW	B0	TX		UB	KW	REP		Cd Corrispondente	
UBKZREP		KZB0TX		KZ	B0	TX		UB	KZ	REP		Cd Fornitore - Proveedor	
UBL6REP		L6B0TX		L6	B0	TX		UB	L6	REP		Cd Fornitore - Proveedor	
UBL8REP		L8CTTX		L8	CT	TX		UB	L8	REP		Descr Voce Fattura	
UBL8REP		L8CTTX		L8	CT	TX		UB	L8	REP		Descr Voce Fattura	
UBLLREP		LLHBTX		LL	HB	TX		UB	LL	REP		Nr Rifer Mittente	
UBLLREP		LLWTTX		LL	WT	TX		UB	LL	REP		Nr Volo Ultimo Routing	
UBLMREP		LMB0TX		LM	B0	TX		UB	LM	REP		Cd Fornitore - Proveedor	
UBLMREP		LME3TX		LM	E3	TX		UB	LM	REP		Nr Volo 2° Routing	
UBLMREP		LMRATX		LM	RA	TX		UB	LM	REP		Nr Volo 1° Routing	
UBLMREP		LMXRTX		LM	XR	TX		UB	LM	REP		Numero Volo	
UBLMREP		LMY9TX		LM	Y9	TX		UB	LM	REP		Nr Volo 3° Routing	
UBLNREP		LNB0TX		LN	B0	TX		UB	LN	REP		Cd Fornitore - Proveedor	
UBLRREP		LRB0TX		LR	B0	TX		UB	LR	REP		Cd Fornitore - Proveedor	
UBLTREP		LTPCTX		LT	PC	TX		UB	LT	REP		Note Borderò - Manifiesto
UBLUREP		LUBWTX		LU	BW	TX		UB	LU	REP		Note	
UBLUREP		LUW1TX		LU	W1	TX		UB	LU	REP		Note 1	
UBLUREP		LUW2TX		LU	W2	TX		UB	LU	REP		Note 2	
UBLVREP		LVPDTX		LV	PD	TX		UB	LV	REP		Descr Ricevimento Vincolo	
UBLVREP		LVPDTX		LV	PD	TX		UB	LV	REP		Descr Ricevimento Vincolo	
UBMAREP		MAPVTX		MA	PV	TX		UB	MA	REP		Descr Azione Commerciale	
UBMBREP		MBNDTX		MB	ND	TX		UB	MB	REP		Note 4	
UBMBREP		MBW1TX		MB	W1	TX		UB	MB	REP		Note 1	
UBMBREP		MBW2TX		MB	W2	TX		UB	MB	REP		Note 2	
UBMBREP		MBW3TX		MB	W3	TX		UB	MB	REP		Note 3	
UCM1REP		M1FFTX		M1	FF	TX		UC	M1	REP		Testo Logo	
UCMCREP		MCA2TX		MC	A2	TX		UC	MC	REP		Codice ricerca	
UCMCREP		MCA5TX		MC	A5	TX		UC	MC	REP		Casella postale EDI	
UCMCREP		MCA6TX		MC	A6	TX		UC	MC	REP		Telex	
UCMCREP		MCBWTX		MC	BW	TX		UC	MC	REP		Note	
UCMCREP		MCCHTX		MC	CH	TX		UC	MC	REP		Persona da contattare	
UCMFREP		MFP4TX		MF	P4	TX		UC	MF	REP		Annotazioni	
UCMFREP		MFP5TX		MF	P5	TX		UC	MF	REP		Annotazioni 2	
UCMFREP		MFPXTX		MF	PX	TX		UC	MF	REP		Prefettura Rilascio Patente	
UCMFREP		MFPYTX		MF	PY	TX		UC	MF	REP		Passaporto rilascito da	
UCMFREP		MFQ5TX		MF	Q5	TX		UC	MF	REP		Annotazioni 3	
UCMKREP		MKP2TX		MK	P2	TX		UC	MK	REP		Descrizione Evento	
UCMKREP		MKP2TX		MK	P2	TX		UC	MK	REP		Descrizione Evento	
UCMMREP		MMI8UX		MM	I8	UX		UC	MM	REP		Descrizione Caratt-Attrez 2	
UCMMREP		MMP3TX		MM	P3	TX		UC	MM	REP		Descrizione Caratt-Attrez	
UCMMREP		MMP3TX		MM	P3	TX		UC	MM	REP		Descrizione Caratt-Attrez	
UCMWREP		MWP8TX		MW	P8	TX		UC	MW	REP		Descrizione Container	
UCMWREP		MWP8TX		MW	P8	TX		UC	MW	REP		Descrizione Container	
UCMZREP		MZB0TX		MZ	B0	TX		UC	MZ	REP		Cd Fornitore - Proveedor	
UCMZREP		MZCHTX		MZ	CH	TX		UC	MZ	REP		Persona da contattare	
UCMZREP		MZQATX		MZ	QA	TX		UC	MZ	REP		Testata AWB 1	
UCMZREP		MZQBTX		MZ	QB	TX		UC	MZ	REP		Testata AWB 2	
UCMZREP		MZQFTX		MZ	QF	TX		UC	MZ	REP		Testata AWB 3	
UCMZREP		MZQGTX		MZ	QG	TX		UC	MZ	REP		Testata AWB 4	
UCMZREP		MZQHTX		MZ	QH	TX		UC	MZ	REP		Testata AWB 5	
UCMZREP		MZQJTX		MZ	QJ	TX		UC	MZ	REP		Intestazione Compagnia 1	
UCMZREP		MZQKTX		MZ	QK	TX		UC	MZ	REP		Intestazione Compagnia 2	
UCMZREP		MZQLTX		MZ	QL	TX		UC	MZ	REP		Intestazione Compagnia 3	
UCMZREP		MZQMTX		MZ	QM	TX		UC	MZ	REP		Intestazione Compagnia 4	
UCMZREP		MZQNTX		MZ	QN	TX		UC	MZ	REP		Intestazione Compagnia 5	
UCMZREP		MZQPTX		MZ	QP	TX		UC	MZ	REP		Intestazione Compagnia 6	
UCMZREP		MZU0TX		MZ	U0	TX		UC	MZ	REP		Int Fattura Commiss 2	
UCMZREP		MZU1TX		MZ	U1	TX		UC	MZ	REP		Int Fattura Commiss 3	
UCMZREP		MZU2TX		MZ	U2	TX		UC	MZ	REP		Int Fattura Over Commis 1	
UCMZREP		MZU3TX		MZ	U3	TX		UC	MZ	REP		Int Fattura Over Commis 2	
UCMZREP		MZU4TX		MZ	U4	TX		UC	MZ	REP		Int Fattura Over Commis 3	
UCMZREP		MZUZTX		MZ	UZ	TX		UC	MZ	REP		Int Fattura Commiss 1	
UCN3REP		N3RZTX		N3	RZ	TX		UC	N3	REP		Descrizione Mercato	
UCN3REP		N3RZTX		N3	RZ	TX		UC	N3	REP		Descrizione Mercato	
UCN4REP		N4R0TX		N4	R0	TX		UC	N4	REP		Descrizione Area Iata	
UCN4REP		N4R0TX		N4	R0	TX		UC	N4	REP		Descrizione Area Iata	
UCN5REP		N5B0TX		N5	B0	TX		UC	N5	REP		Cd Fornitore - Proveedor	
UCN5REP		N5R1TX		N5	R1	TX		UC	N5	REP		Descrizione Aereoporto	
UCN5REP		N5R1TX		N5	R1	TX		UC	N5	REP		Descrizione Aereoporto	
UCN8REP		N8R2TX		N8	R2	TX		UC	N8	REP		Descrizione Commodity/CD	
UCN8REP		N8R2TX		N8	R2	TX		UC	N8	REP		Descrizione         Commodity	
UCN9REP		N9R6TX		N9	R6	TX		UC	N9	REP		Descr Rapp - reporteorto	
UCN9REP		N9R6TX		N9	R6	TX		UC	N9	REP		Descr Rapp - reporteorto	
UCNIREP		NIRFTX		NI	RF	TX		UC	NI	REP		Descrizione Nave	
UCNIREP		NIRFTX		NI	RF	TX		UC	NI	REP		Descrizione Nave	
UCNJREP		NJRFTX		NJ	RF	TX		UC	NJ	REP		Descrizione Nave	
UCNJREP		NJRFTX		NJ	RF	TX		UC	NJ	REP		Descrizione Nave	
UCNKREP		NKB0TX		NK	B0	TX		UC	NK	REP		Cd Fornitore - Proveedor	
UCNKREP		NKSHTX		NK	SH	TX		UC	NK	REP		Descrizione Porto	
UCNKREP		NKSHTX		NK	SH	TX		UC	NK	REP		Descrizione Porto	
UCNNREP		NNB7TX		NN	B7	TX		UC	NN	REP		Descr Resa	
UCNNREP		NNB7TX		NN	B7	TX		UC	NN	REP		Descr Resa	
UCNNREP		NNROTX		NN	RO	TX		UC	NN	REP		Intestazione FCR 1	
UCNNREP		NNRPTX		NN	RP	TX		UC	NN	REP		Intestazione FCR 2	
UCNNREP		NNRQTX		NN	RQ	TX		UC	NN	REP		Istruzioni Particolar FCR	
UCNNREP		NNY8TX		NN	Y8	TX		UC	NN	REP		Nr Documento di Credito	
UCNOREP		NORVTX		NO	RV	TX		UC	NO	REP		Contenuto FCR	
UCNPREP		NPRXTX		NP	RX	TX		UC	NP	REP		Nota su Cliente	
UCNVREP		NVBWTX		NV	BW	TX		UC	NV	REP		Note	
UCO0REP		O0BWTX		O0	BW	TX		UC	O0	REP		Note	
UCO2REP		O2A6TX		O2	A6	TX		UC	O2	REP		Telex	
UCO2REP		O2BATX		O2	BA	TX		UC	O2	REP		Cd status cliente	
UCO2REP		O2BHTX		O2	BH	TX		UC	O2	REP		Contrassegno	
UCO2REP		O2CHTX		O2	CH	TX		UC	O2	REP		Persona da contattare	
UCO3REP		O3BATX		O3	BA	TX		UC	O3	REP		Cd status cliente	
UCO3REP		O3TUTX		O3	TU	TX		UC	O3	REP		Descr Status Cliente	
UCO3REP		O3TUTX		O3	TU	TX		UC	O3	REP		Descr Status Cliente	
UCO4REP		O4A6TX		O4	A6	TX		UC	O4	REP		Telex	
UCO4REP		O4CHTX		O4	CH	TX		UC	O4	REP		Persona da contattare	
UCO4REP		O4W2TX		O4	W2	TX		UC	O4	REP		Note Indirizzi 2	
UCOGREP		OGSFTX		OG	SF	TX		UC	OG	REP		Nominativo	
UCOJREP		OJB0TX		OJ	B0	TX		UC	OJ	REP		Cd Fornitore - Proveedor	
UCOJREP		OJCNTX		OJ	CN	TX		UC	OJ	REP		Descr Dett Polizza 1	
UCOJREP		OJCNTX		OJ	CN	TX		UC	OJ	REP		Descr Dett Polizza 1	
UCOJREP		OJCOTX		OJ	CO	TX		UC	OJ	REP		Descr Dett Polizza 2	
UCOJREP		OJCOTX		OJ	CO	TX		UC	OJ	REP		Descr Dett Polizza 2	
UCOJREP		OJSGTX		OJ	SG	TX		UC	OJ	REP		Descrizione Compagnia	
UCOJREP		OJSGTX		OJ	SG	TX		UC	OJ	REP		Descrizione Compagnia	
UCOPREP		OPSTTX		OP	ST	TX		UC	OP	REP		Descrizione Difformità 	
UCOPREP		OPSTTX		OP	ST	TX		UC	OP	REP		Descrizione Difformità 	
UCOQREP		OQSVTX		OQ	SV	TX		UC	OQ	REP		Descrizione Documento	
UCOQREP		OQSVTX		OQ	SV	TX		UC	OQ	REP		Descrizione Documento	
UCOSREP		OSS0TX		OS	S0	TX		UC	OS	REP		Accounting Information 2	
UCOSREP		OSS1TX		OS	S1	TX		UC	OS	REP		Accounting Information 3	
UCOSREP		OSS2TX		OS	S2	TX		UC	OS	REP		Accounting Information 4	
UCOSREP		OSS3TX		OS	S3	TX		UC	OS	REP		Accounting Information 5	
UCOSREP		OSS4TX		OS	S4	TX		UC	OS	REP		Handling Information 1	
UCOSREP		OSS5TX		OS	S5	TX		UC	OS	REP		Handling Information 2	
UCOSREP		OSS6TX		OS	S6	TX		UC	OS	REP		Handling Information 3	
UCOSREP		OSS7TX		OS	S7	TX		UC	OS	REP		Handling Information 4	
UCOSREP		OSS8TX		OS	S8	TX		UC	OS	REP		Descrizione Merce 1	
UCOSREP		OSS8TX		OS	S8	TX		UC	OS	REP		Descrizione Merce 1	
UCOSREP		OSS9TX		OS	S9	TX		UC	OS	REP		Descrizione Merce 2	
UCOSREP		OSS9TX		OS	S9	TX		UC	OS	REP		Descrizione Merce 2	
UCOSREP		OSSXTX		OS	SX	TX		UC	OS	REP		Accounting Information 1	
UCOSREP		OSTBTX		OS	TB	TX		UC	OS	REP		Descrizione Merce 3	
UCOSREP		OSTBTX		OS	TB	TX		UC	OS	REP		Descrizione Merce 3	
UCOSREP		OSTCTX		OS	TC	TX		UC	OS	REP		Descrizione Merce 4	
UCOSREP		OSTCTX		OS	TC	TX		UC	OS	REP		Descrizione Merce 4	
UCOSREP		OSTDTX		OS	TD	TX		UC	OS	REP		Descrizione Merce 5	
UCOSREP		OSTDTX		OS	TD	TX		UC	OS	REP		Descrizione Merce 5	
UCOSREP		OSTHTX		OS	TH	TX		UC	OS	REP		Descrizione Merce 6	
UCOSREP		OSTHTX		OS	TH	TX		UC	OS	REP		Descrizione Merce 6	
UCOSREP		OSTITX		OS	TI	TX		UC	OS	REP		Descrizione Merce 7	
UCOSREP		OSTITX		OS	TI	TX		UC	OS	REP		Descrizione Merce 7	
UCOSREP		OSTJTX		OS	TJ	TX		UC	OS	REP		Descrizione Merce 8	
UCOSREP		OSTJTX		OS	TJ	TX		UC	OS	REP		Descrizione Merce 8	
UCOSREP		OSTKTX		OS	TK	TX		UC	OS	REP		Descrizione Merce 9	
UCOSREP		OSTKTX		OS	TK	TX		UC	OS	REP		Descrizione Merce 9	
UCOSREP		OSTLTX		OS	TL	TX		UC	OS	REP		Descrizione Merce 10	
UCOSREP		OSTLTX		OS	TL	TX		UC	OS	REP		Descrizione Merce 10	
UCOSREP		OSTNTX		OS	TN	TX		UC	OS	REP		Descrizione Merce 11	
UCOSREP		OSTNTX		OS	TN	TX		UC	OS	REP		Descrizione Merce 11	
UCOSREP		OSTOTX		OS	TO	TX		UC	OS	REP		Descrizione Merce 12	
UCOSREP		OSTOTX		OS	TO	TX		UC	OS	REP		Descrizione Merce 12	
UCOTREP		OTF9TX		OT	F9	TX		UC	OT	REP		Rag Soc Committ RimDoc	
UCOTREP		OTGATX		OT	GA	TX		UC	OT	REP		Rag Soc UltRag 1 RimDoc	
UCOTREP		OTJUTX		OT	JU	TX		UC	OT	REP		Rag Soc Mittente RimDoc	
UCOTREP		OTRETX		OT	RE	TX		UC	OT	REP		Rag Soc UltRag 2 RimDoc	
UCOTREP		OTRTTX		OT	RT	TX		UC	OT	REP		Rag Soc Dest RimDoc	
UCOWREP		OWB0TX		OW	B0	TX		UC	OW	REP		Cd Fornitore - Proveedor	
UCOWREP		OWJJTX		OW	JJ	TX		UC	OW	REP		Nr riferimenti	
UCOWREP		OWTRTX		OW	TR	TX		UC	OW	REP		Tempo di Resa	
UCOYREP		OYACUY		OY	AC	UY		UC	OY	REP		Descr Voce Costo	
UCOYREP		OYB0TX		OY	B0	TX		UC	OY	REP		Cd Fornitore - Proveedor	
UCOYREP		OYCTTX		OY	CT	TX		UC	OY	REP		Descr Voce Ricavo	
UCOYREP		OYCTTX		OY	CT	TX		UC	OY	REP		Descr Voce Ricavo	
UCOZREP		OZC3SS		OZ	C3	SS		UC	OZ	REP		Tipo descrizione offerta	
UCOZREP		OZT7TX		OZ	T7	TX		UC	OZ	REP		Note Offerta	
UCQ0REP		Q0BWTX		Q0	BW	TX		UC	Q0	REP		Note	
UCQ2REP		Q2LNTX		Q2	LN	TX		UC	Q2	REP		Descrizione Vincolo	
UCQ2REP		Q2LNTX		Q2	LN	TX		UC	Q2	REP		Descrizione Vincolo	
UCQ3REP		Q3U5TX		Q3	U5	TX		UC	Q3	REP		Numero Account	
UCQ4REP		Q4U6TX		Q4	U6	TX		UC	Q4	REP		Descrizione Tipo Visita	
UCQ4REP		Q4U6TX		Q4	U6	TX		UC	Q4	REP		Descrizione Tipo Visita	
UCQ6REP		Q6U7TX		Q6	U7	TX		UC	Q6	REP		Issued By 1	
UCQ6REP		Q6U8TX		Q6	U8	TX		UC	Q6	REP		Issued By 2	
UCQ6REP		Q6U9TX		Q6	U9	TX		UC	Q6	REP		Issued By 3	
UCQ6REP		Q6VITX		Q6	VI	TX		UC	Q6	REP		Issued By 5	
UCQ6REP		Q6VJTX		Q6	VJ	TX		UC	Q6	REP		Account Information 45 1	
UCQ6REP		Q6VKTX		Q6	VK	TX		UC	Q6	REP		Account Information 45 2	
UCQ6REP		Q6VLTX		Q6	VL	TX		UC	Q6	REP		Account Information 45 3	
UCQ6REP		Q6VMTX		Q6	VM	TX		UC	Q6	REP		Issuing Carrier 1	
UCQ6REP		Q6VOTX		Q6	VO	TX		UC	Q6	REP		Issuing Carrier 2	
UCQ6REP		Q6VPTX		Q6	VP	TX		UC	Q6	REP		Issuing Carrier 3	
UCQ6REP		Q6VQTX		Q6	VQ	TX		UC	Q6	REP		Signature of Shipper	
UCQ6REP		Q6VWTX		Q6	VW	TX		UC	Q6	REP		Executed On 2	
UCQ7REP		Q7B0TX		Q7	B0	TX		UC	Q7	REP		Cd Cliente Spedizioniere	
UCQ7REP		Q7V6TX		Q7	V6	TX		UC	Q7	REP		Modo di spedizione	
UCQEREP		QEVNTX		QE	VN	TX		UC	QE	REP		Note tariffa	
UCQKREP		QKBWTX		QK	BW	TX		UC	QK	REP		Note	
UCQLREP		QLT5TX		QL	T5	TX		UC	QL	REP		Descr Operazione	
UCQLREP		QLT5TX		QL	T5	TX		UC	QL	REP		Descr Operazione	
UCQMREP		QME3TX		QM	E3	TX		UC	QM	REP		Nr Volo 2° Routing	
UCQMREP		QMRATX		QM	RA	TX		UC	QM	REP		Nr Volo 1° Routing	
UCQMREP		QMY9TX		QM	Y9	TX		UC	QM	REP		Nr Volo 3° Routing	
UCQMREP		QMZCTX		QM	ZC	TX		UC	QM	REP		Rifer Cessionario	
UCQOREP		QOKDTX		QO	KD	TX		UC	QO	REP		Booking	
UCQOREP		QOQ2TX		QO	Q2	TX		UC	QO	REP		Sigla Contenitore	
UCQOREP		QOXBTX		QO	XB	TX		UC	QO	REP		Buono di Imbarco	
UCQPREP		QPBWTX		QP	BW	TX		UC	QP	REP		Note	
UCQPREP		QPE9TX		QP	E9	TX		UC	QP	REP		Nota compagnia 2	
UCQPREP		QPWWTX		QP	WW	TX		UC	QP	REP		Nota compagnia 1	
UCQPREP		QPXRTX		QP	XR	TX		UC	QP	REP		Numero Volo	
UDRGREP		RGB0TX		RG	B0	TX		UD	RG	REP		Cd Cliente Transitario	
UDRGREP		RGW7TX		RG	W7	TX		UD	RG	REP		Luogo di Presa	
UDRGREP		RGW8TX		RG	W8	TX		UD	RG	REP		Luogo di Consegna Merce	
UDRGREP		RGZCTX		RG	ZC	TX		UD	RG	REP		Rifer Cessionario	
UDRIREP		RICHTX		RI	CH	TX		UD	RI	REP		Persona da contattare	
UDRJREP		RJB0TX		RJ	B0	TX		UD	RJ	REP		Cd Fornitore - Proveedor	
UDRJREP		RJSWTX		RJ	SW	TX		UD	RJ	REP		Rifer	
UDRNREP		RND4UX		RN	D4	UX		UD	RN	REP		Descrizione Merce - Mercancia Dett 2	
UDRNREP		RNSDTX		RN	SD	TX		UD	RN	REP		Aspetto dei beni Polizza	
UDRNREP		RNXFTX		RN	XF	TX		UD	RN	REP		Marche e Numeri Merce - Mercancia	
UDRNREP		RNXHTX		RN	XH	TX		UD	RN	REP		Descrizione Merce - Mercancia	
UDRNREP		RNXHTX		RN	XH	TX		UD	RN	REP		Descrizione Merce - Mercancia	
UDROREP		ROK0TX		RO	K0	TX		UD	RO	REP		Descr Motivo Anomalia 1	
UDROREP		ROK0TX		RO	K0	TX		UD	RO	REP		Descr Motivo Anomalia 1	
UDROREP		ROZZTX		RO	ZZ	TX		UD	RO	REP		Descr Motivo Anomalia 2	
UDROREP		ROZZTX		RO	ZZ	TX		UD	RO	REP		Descr Motivo Anomalia 2	
UDRPREP		RPABTX		RP	AB	TX		UD	RP	REP		CAP-Loc-Prov-Naz Mittente	
UDRPREP		RPADTX		RP	AD	TX		UD	RP	REP		CAP-Loc-Prov-Naz Destinat	
UDRPREP		RPGQUX		RP	GQ	UX		UD	RP	REP		Descrizione Polizza	
UDRPREP		RPGUUX		RP	GU	UX		UD	RP	REP		Descr Porto Transhipment	
UDRPREP		RPH9TX		RP	H9	TX		UD	RP	REP		CAP-Loc-Prov-Naz 1° Notify	
UDRPREP		RPJ9TX		RP	J9	TX		UD	RP	REP		CAP-Loc-Prov-Naz Delivery	
UDRPREP		RPKDTX		RP	KD	TX		UD	RP	REP		Booking	
UDRPREP		RPQ4TX		RP	Q4	TX		UD	RP	REP		Total Number of Unit or P	
UDRPREP		RPRFTX		RP	RF	TX		UD	RP	REP		Descrizione Nave	
UDRPREP		RPRFTX		RP	RF	TX		UD	RP	REP		Descrizione Nave	
UDRPREP		RPW7TX		RP	W7	TX		UD	RP	REP		Luogo di Presa	
UDRPREP		RPW8TX		RP	W8	TX		UD	RP	REP		Luogo di Consegna Merce - Mercancia	
UDRPREP		RPW9TX		RP	W9	TX		UD	RP	REP		Numero Origine FBL	
UDRPREP		RPXETX		RP	XE	TX		UD	RP	REP		Numero Polizza	
UDRPREP		RPXNTX		RP	XN	TX		UD	RP	REP		Descr Porto Imbarco	
UDRPREP		RPXNTX		RP	XN	TX		UD	RP	REP		Descr Porto Imbarco	
UDRPREP		RPXOTX		RP	XO	TX		UD	RP	REP		Descr Porto Sbarco	
UDRPREP		RPXOTX		RP	XO	TX		UD	RP	REP		Descr Porto Sbarco	
UDRPREP		RPXPTX		RP	XP	TX		UD	RP	REP		Ammontare del Nolo	
UDRPREP		RPXQTX		RP	XQ	TX		UD	RP	REP		Resa del Nolo	
UDRPREP		RPXSTX		RP	XS	TX		UD	RP	REP		Luogo e Data Emmissione	
UDRPREP		RPXTTX		RP	XT	TX		UD	RP	REP		Firma	
UDRQREP		RQACNA		RQ	AC	NA		UD	RQ	REP		Descrizione Riga Polizza	
UDRSREP		RSKDTX		RS	KD	TX		UD	RS	REP		Booking	
UDRSREP		RSQ2TX		RS	Q2	TX		UD	RS	REP		Sigla Contenitore	
UDRSREP		RSXBTX		RS	XB	TX		UD	RS	REP		Buono di Imbarco	
UDRVREP		RVZWTX		RV	ZW	TX		UD	RV	REP		Testo	
UDS2REP		S2VGTX		S2	VG	TX		UD	S2	REP		Descrizione Funzione	
UDS2REP		S2VGTX		S2	VG	TX		UD	S2	REP		Descrizione Funzione	
UDS7REP		S7DOTX		S7	DO	TX		UD	S7	REP		Descr Tipo Allocazione	
UDS7REP		S7DOTX		S7	DO	TX		UD	S7	REP		Descr Tipo Allocazione	
UDSHREP		SHUUTY		SH	UU	TY		UD	SH	REP		Descr Responsabilità - Responsabilidad  Anom	
UDTBREP		TBE7TX		TB	E7	TX		UD	TB	REP		Nominativo CC2	
UDTBREP		TBEXTX		TB	EX	TX		UD	TB	REP		Nominativo CC1	
UDTBREP		TBFBTX		TB	FB	TX		UD	TB	REP		Nominativo CC3	
UDTBREP		TBTFTX		TB	TF	TX		UD	TB	REP		Nominativo CC4	
UDTBREP		TBV9TX		TB	V9	TX		UD	TB	REP		Rifer Documento	
UDTBREP		TBWZTX		TB	WZ	TX		UD	TB	REP		Attenzione Di	
UDTJREP		TJQTTX		TJ	QT	TX		UD	TJ	REP		Descr Evento Spedizione	
UDTJREP		TJQTTX		TJ	QT	TX		UD	TJ	REP		Descr Evento Spedizione	
UEACCPP		ACATTX		AC	AT	TX		UE	AC	CPP		Descr Merce - Mercancia	
UEACCPP		ACATTX		AC	AT	TX		UE	AC	CPP		Descr Merce - Mercancia	
UEAVCPP		AVERV1		AV	ER	V1		UE	AV	CPP		Descr Specificità 128 1	
UEAVCPP		AVESV1		AV	ES	V1		UE	AV	CPP		Descr Specificità 128 2	
UEAVCPP		AVETV1		AV	ET	V1		UE	AV	CPP		Descr Specificità 128 3	
UEAVCPP		AVEUV1		AV	EU	V1		UE	AV	CPP		Descr Specificità 128 4	
UEAVCPP		AVVEUX		AV	VE	UX		UE	AV	CPP		Descr Specificità 20	
UEAVCPP		AVVFUX		AV	VF	UX		UE	AV	CPP		Descr Specificità 100	
UEAWCPP		AWBWTX		AW	BW	TX		UE	AW	CPP		Note 
UEBJREP		BJATTX		BJ	AT	TX		UE	BJ	REP		Descr Merce - Mercancia	
UEBJREP		BJATTX		BJ	AT	TX		UE	BJ	REP		Descr Merce - Mercancia	
UEBJREP		BJCITX		BJ	CI	TX		UE	BJ	REP		Descr Aspetto dei Beni	
UEBJREP		BJCITX		BJ	CI	TX		UE	BJ	REP		Descr Aspetto dei Beni	
UEBJREP		BJK6TX		BJ	K6	TX		UE	BJ	REP		Nr Iscrizione Albo  Trasp	
UEBJREP		BJXTTX		BJ	XT	TX		UE	BJ	REP		Firma	
UET0REP		T0Q6TX		T0	Q6	TX		UE	T0	REP		Note Polizze di Carico	
UET0REP		T0SQTX		T0	SQ	TX		UE	T0	REP		Cd Polizza di Carico Tipo	
UET1REP		T1Q6TX		T1	Q6	TX		UE	T1	REP		Note Polizze di Carico	
UET3REP		T3Y6TX		T3	Y6	TX		UE	T3	REP		Descr Documento	
UET3REP		T3Y6TX		T3	Y6	TX		UE	T3	REP		Descr Documento	
UETPREP		TPVBTX		TP	VB	TX		UE	TP	REP		Descrizione Merce - Mercancia ISTAT	
UETPREP		TPVBTX		TP	VB	TX		UE	TP	REP		Descrizione Merce - Mercancia   ISTAT	
UETZREP		TZABTX		TZ	AB	TX		UE	TZ	REP		CAP-Loc-Prov-Naz Mittente	
UETZREP		TZADTX		TZ	AD	TX		UE	TZ	REP		CAP-Loc-Prov-Naz Destinat	
UETZREP		TZAQAQ		TZ	AQ	AQ		UE	TZ	REP		Descr Polizze di Carico	
UETZREP		TZGQUX		TZ	GQ	UX		UE	TZ	REP		Descrizione Polizza	
UETZREP		TZH9TX		TZ	H9	TX		UE	TZ	REP		CAP-Loc-Prov-Naz 1Â° Notify	
UETZREP		TZJ9TX		TZ	J9	TX		UE	TZ	REP		CAP-Loc-Prov-Naz Delivery	
UETZREP		TZQ4TX		TZ	Q4	TX		UE	TZ	REP		Total Number of Unit or P	
UETZREP		TZRFTX		TZ	RF	TX		UE	TZ	REP		Descrizione Nave	
UETZREP		TZRFTX		TZ	RF	TX		UE	TZ	REP		Descrizione Nave	
UETZREP		TZSQTX		TZ	SQ	TX		UE	TZ	REP		Cd Polizza di Carico Tipo	
UETZREP		TZW7TX		TZ	W7	TX		UE	TZ	REP		Luogo di Presa	
UETZREP		TZW8TX		TZ	W8	TX		UE	TZ	REP		Luogo di Consegna   Merce - Mercancia	
UETZREP		TZW9TX		TZ	W9	TX		UE	TZ	REP		Numero Origine FBL	
UETZREP		TZXNTX		TZ	XN	TX		UE	TZ	REP		Descr Porto Imbarco	
UETZREP		TZXNTX		TZ	XN	TX		UE	TZ	REP		Descr Porto Imbarco	
UETZREP		TZXOTX		TZ	XO	TX		UE	TZ	REP		Descr Porto Sbarco	
UETZREP		TZXOTX		TZ	XO	TX		UE	TZ	REP		Descr Porto Sbarco	
UETZREP		TZXPTX		TZ	XP	TX		UE	TZ	REP		Ammontare del Nolo	
UETZREP		TZXQTX		TZ	XQ	TX		UE	TZ	REP		Resa del Nolo	
UETZREP		TZXSTX		TZ	XS	TX		UE	TZ	REP		Luogo e Data Emmissione	
UETZREP		TZXTTX		TZ	XT	TX		UE	TZ	REP		Firma	
UFA0REP		A0B7UX		A0	B7	UX		UF	A0	REP		Descr Stampante	
UFAGREP		AGHVTX		AG	HV	TX		UF	AG	REP		Descrizione Documento Allegato	
UFAGREP		AGHVTX		AG	HV	TX		UF	AG	REP		Descrizione Documento Allegato	
UFBFREP		BFBWTX		BF	BW	TX		UF	BF	REP		Note	
UFBIREP		BICITX		BI	CI	TX		UF	BI	REP		Descr Aspetto dei Beni	
UFBIREP		BICITX		BI	CI	TX		UF	BI	REP		Descr Aspetto dei   Beni	
UFBPREP		BPCMUX		BP	CM	UX		UF	BP	REP		Descr Addebito	
UGB2REP		B2DAUX		B2	DA	UX		UG	B2	REP		Descr Arrotondamento	
UGB3REP		B3DUUX		B3	DU	UX		UG	B3	REP		Descrizione Tipo Elemento	
UGBSREP		BSC3UX		BS	C3	UX		UG	BS	REP		Descrizione         Suddivisione	
UGC3REP		C3HUTX		C3	HU	TX		UG	C3	REP		Numero Segnacollo	
UGC7REP		C7BWTX		C7	BW	TX		UG	C7	REP		Note	
UGC9REP		C9ESUX		C9	ES	UX		UG	C9	REP		Descr Evento	
UGCYREP		CYEHUX		CY	EH	UX		UG	CY	REP		Descrizione Imballo	
UGFHREP		FHSTTX		FH	ST	TX		UG	FH	REP		Descrizione Difformità 	
UGFHREP		FHSTTX		FH	ST	TX		UG	FH	REP		Descrizione         Difformità 	
UGFOREP		FOHUTX		FO	HU	TX		UG	FO	REP		Numero Segnacollo	
UGFQREP		FQV9TX		FQ	V9	TX		UG	FQ	REP		Rifer Documento	
UHEBCPP		EBKYUX		EB	KY	UX		UH	EB	CPP		Descrizione Locode	
UHFUREP		FUV7TX		FU	V7	TX		UH	FU	REP		Descr Merce - Mercancia Doganale 1	
UHFUREP		FUV7TX		FU	V7	TX		UH	FU	REP		Descr Merce - Mercancia         Doganale 1	
UHFUREP		FUV8TX		FU	V8	TX		UH	FU	REP		Descr Merce - Mercancia Doganale 2	
UHFUREP		FUV8TX		FU	V8	TX		UH	FU	REP		Descr Merce - Mercancia         Doganale 2	
UHMDREP		MDATTX		MD	AT	TX		UH	MD	REP		Descr Merce - Mercancia	
UHMDREP		MDATTX		MD	AT	TX		UH	MD	REP		Descr Merce - Mercancia	
UHMXREP		MXHUTX		MX	HU	TX		UH	MX	REP		Numero Segnacollo	
UIA3CPP		A3O0UX		A3	O0	UX		UI	A3	CPP		Descr Anomalia Rid  TRF	
UIA3CPP		A3OZUX		A3	OZ	UX		UI	A3	CPP		Descr Anomalia TRF	
UIA5CPP		A5SAV1		A5	SA	V1		UI	A5	CPP		Descr APT           Destino LTA	
UIA5CPP		A5SJV1		A5	SJ	V1		UI	A5	CPP		Descr APT Partenza	
UIA5CPP		A5U5TX		A5	U5	TX		UI	A5	CPP		Numero Account	
UIA5CPP		A5VMTX		A5	VM	TX		UI	A5	CPP		Issuing Carrier 1	
UIA5CPP		A5VOTX		A5	VO	TX		UI	A5	CPP		Issuing Carrier 2	
UIA5CPP		A5VPTX		A5	VP	TX		UI	A5	CPP		Issuing Carrier 3	
UIA5CPP		A5VQTX		A5	VQ	TX		UI	A5	CPP		Signature of Shipper	
UIA5CPP		A5VWTX		A5	VW	TX		UI	A5	CPP		Executed On 2	
UIACCPP		ACMKUX		AC	MK	UX		UI	AC	CPP		Descr Documento-Condizio	
UIAECPP		AEMNUX		AE	MN	UX		UI	AE	CPP		Descr Regime Nazionale	
UIASCPP		ASO0UX		AS	O0	UX		UI	AS	CPP		Descr Anomalia Rid  TRF	
UIASCPP		ASOZUX		AS	OZ	UX		UI	AS	CPP		Descr Anomalia TRF	
UIF9REP		F9BVTX		F9	BV	TX		UI	F9	REP		Descr Linea Tariffa	
UPA1REP		OP7Y5A		OP	7Y	5A		UP	A1	REP		Descrizione Tipo Statistica	
UPAAREP		OP4TGA		OP	4T	GA		UP	AA	REP		Descrizione WorkGroup	
UPABREP		OP4TPA		OP	4T	PA		UP	AB	REP		Descr Gruppo Autorizzazione	
UPAEREP		OP4U4A		OP	4U	4A		UP	AE	REP		Descrizione WorkFlow	
UPAFREP		OP4WBA		OP	4W	BA		UP	AF	REP		Descrizione Status	
UPAGREP		OP4WBA		OP	4W	BA		UP	AG	REP		Descrizione Status	
UPAHREP		ESUX		ES	UX			UP	AH	REP		Descr Evento	
UPASREP		OP6FSA		OP	6F	SA		UP	AS	REP		Descr Gruppo Funzione	
UPAYREP		OP7VNA		OP	7V	NA		UP	AY	REP		Descrizione Statistica	
UPBHREP		ACNA		AC	NA			UP	BH	REP		Descrizione Riga Polizza	
UPBRREP		IJV1		IJ	V1			UP	BR	REP		Descrizione Documento Elettronic	
UPBZREP		BZCDTX		BZ	CD	TX		UP	BZ	REP		Gestione Packing List	
UPBZREP		BZCSTX		BZ	CS	TX		UP	BZ	REP		Tipo Carico da Ordine Fornitore - Proveedor	
UPBZREP		BZG9TX		BZ	G9	TX		UP	BZ	REP		Livello Assegn Riga Scarico TRF	
UPC5REP		ECV1		EC	V1			UP	C5	REP		Descrizione Frequenza Trasporto	
UPC6REP		EDV1		ED	V1			UP	C6	REP		Descrizione Transit Time	
UPC7REP		OPAX4A		OP	AX	4A		UP	C7	REP		Descr Categoria Classificazione	
UPC8REP		OPAX6A		OP	AX	6A		UP	C8	REP		Descr Caratteristica Classif	
UPC9REP		OPAXBA		OP	AX	BA		UP	C9	REP		Descr Attributo Caratteristica	
UPCTREP		OPCM6A		OP	CM	6A		UP	CT	REP		Descrizione Messaggio EDI	
UPD7REP		OPCO8A		OP	CO	8A		UP	D7	REP		Descrizione Esito Attivita	
UPD8REP		OPCNMA		OP	CN	MA		UP	D8	REP		Descr Tipo Nolo Aereo	
UPDHREP		DHB0TX		DH	B0	TX		UP	DH	REP		Cd Fornitore - Proveedor	
UPDIREP		DIB0TX		DI	B0	TX		UP	DI	REP		Cd Fornitore - Proveedor	
UPDKREP		DKCTTX		DK	CT	TX		UP	DK	REP		Descr Voce Fattura	
UPDKREP		DKCTTX		DK	CT	TX		UP	DK	REP		Descr Voce Fattura	
UPDLREP		DLBATX		DL	BA	TX		UP	DL	REP		Cd Status Cliente	
UPDMREP		DMBATX		DM	BA	TX		UP	DM	REP		Cd Status Cliente	
UPEAREP		EASMV1		EA	SM	V1		UP	EA	REP		PLEX Descr Area Cross Doc	
UPECREP		ECSPV1		EC	SP	V1		UP	EC	REP		PLEX Descr Porta Cross D	
UPEIREP		L6TX		L6	TX			UP	EI	REP		Cognome	
UPEIREP		L7TX		L7	TX			UP	EI	REP		Nome	
UPEKREP		L6TX		L6	TX			UP	EK	REP		Cognome	
UPEKREP		L7TX		L7	TX			UP	EK	REP		Nome	
UPELREP		BWTX		BW	TX			UP	EL	REP		Note	
UPEVREP		EVL6TX		EV	L6	TX		UP	EV	REP		Cognome	
UPEVREP		EVL7TX		EV	L7	TX		UP	EV	REP		Nome	
UPEZREP		ESUX		ES	UX			UP	EZ	REP		Descr Evento	
URB7REP		B7L6TX		B7	L6	TX		UR	B7	REP		Cognome	
URB7REP		B7L7TX		B7	L7	TX		UR	B7	REP		Nome	
URB8REP		B8ABV1		B8	AB	V1		UR	B8	REP		Descrizione Qualifica	
URCFREP		CFP8TX		CF	P8	TX		UR	CF	REP		Descrizione Container	
URCFREP		CFP8TX		CF	P8	TX		UR	CF	REP		Descrizione Container	
URCGREP		CGE1V1		CG	E1	V1		UR	CG	REP		Descrizione Offerta Spot	
UUA2REP		A2B3TX		A2	B3	TX		UU	A2	REP		Descr Nazione	
UUA2REP		A2B3TX		A2	B3	TX		UU	A2	REP		Descr Nazione	
UUA2REP		A2X3TX		A2	X3	TX		UU	A2	REP		Tp scambio preferenziale	
UUA3REP		A3AATX		A3	AA	TX		UU	A3	REP		Descr Trattam Prefererenz	
UUA3REP		A3AATX		A3	AA	TX		UU	A3	REP		Descr Trattam Prefererenz	
UUA4REP		A4A9TX		A4	A9	TX		UU	A4	REP		Descr Abbr Pagamento	
UUA4REP		A4A9TX		A4	A9	TX		UU	A4	REP		Descr Abbr Pagamento	
UUA4REP		A4B4TX		A4	B4	TX		UU	A4	REP		Descr Pagamento	
UUA4REP		A4B4TX		A4	B4	TX		UU	A4	REP		Descr Pagamento	
UUA5REP		A5B5TX		A5	B5	TX		UU	A5	REP		Descr Divisa	
UUA5REP		A5B5TX		A5	B5	TX		UU	A5	REP		Descr Divisa	
UUAFREP		AFAOTX		AF	AO	TX		UU	AF	REP		Descr Magazzino	
UUAFREP		AFAOTX		AF	AO	TX		UU	AF	REP		Descr Magazzino	
UUAKREP		AKATTX		AK	AT	TX		UU	AK	REP		Descr Merce - Mercancia	
UUAKREP		AKATTX		AK	AT	TX		UU	AK	REP		Descr Merce - Mercancia	
UUAKREP		AKWPTX		AK	WP	TX		UU	AK	REP		Classe di pericolositÃ 	
UUALREP		ALAUTX		AL	AU	TX		UU	AL	REP		Descr Filiale	
UUALREP		ALAUTX		AL	AU	TX		UU	AL	REP		Descr Filiale	
UUALREP		ALB0TX		AL	B0	TX		UU	AL	REP		Cd Fornitore - Proveedor	
UUAMREP		AMAVTX		AM	AV	TX		UU	AM	REP		Descr Categoria Cliente	
UUAMREP		AMAVTX		AM	AV	TX		UU	AM	REP		Descr Categoria Cliente	
UUANREP		ANAWTX		AN	AW	TX		UU	AN	REP		Descr Lingua	
UUANREP		ANAWTX		AN	AW	TX		UU	AN	REP		Descr Lingua	
UUAOREP		AOAXTX		AO	AX	TX		UU	AO	REP		Descr Categoria Articolo	
UUAOREP		AOAXTX		AO	AX	TX		UU	AO	REP		Descr Categoria Articolo	
UUAPREP		APAYTX		AP	AY	TX		UU	AP	REP		Descr UM	
UUAPREP		APAYTX		AP	AY	TX		UU	AP	REP		Descr UM	
UUAQREP		AQAZTX		AQ	AZ	TX		UU	AQ	REP		Descr Conto Contabile	
UUAQREP		AQAZTX		AQ	AZ	TX		UU	AQ	REP		Descr Conto Contabile	
UUARREP		ARA0TX		AR	A0	TX		UU	AR	REP		Descr Assoggettamento	
UUARREP		ARA0TX		AR	A0	TX		UU	AR	REP		Descr Assoggettamento	
UUARREP		ARAFUX		AR	AF	UX		UU	AR	REP		Descr Abbr Assoggettament	
UUB0REP		B0A2TX		B0	A2	TX		UU	B0	REP		Codice ricerca	
UUB0REP		B0A5TX		B0	A5	TX		UU	B0	REP		Casella postale EDI	
UUB0REP		B0A6TX		B0	A6	TX		UU	B0	REP		Telex	
UUB0REP		B0B0TX		B0	B0	TX		UU	B0	REP		Cd Fornitore - Proveedor	
UUB0REP		B0BWTX		B0	BW	TX		UU	B0	REP		Note	
UUB0REP		B0K6TX		B0	K6	TX		UU	B0	REP		Nr Iscrizione Albo  Trasp	
UUB0REP		B0W1TX		B0	W1	TX		UU	B0	REP		Note 1	
UUB0REP		B0W2TX		B0	W2	TX		UU	B0	REP		Note 2	
UUB0REP		B0W3TX		B0	W3	TX		UU	B0	REP		Note 3	
UUB0REP		B0WNTX		B0	WN	TX		UU	B0	REP		Note vettori	
UUB1REP		B1BGTX		B1	BG	TX		UU	B1	REP		Priorità  Evasione   Consegn	
UUB1REP		B1BWTX		B1	BW	TX		UU	B1	REP		Note	
UUB1REP		B1FSTX		B1	FS	TX		UU	B1	REP		Telefono mittente	
UUB1REP		B1FTTX		B1	FT	TX		UU	B1	REP		Telex mittente	
UUB1REP		B1GJTX		B1	GJ	TX		UU	B1	REP		Telefono destinatario	
UUB1REP		B1GKTX		B1	GK	TX		UU	B1	REP		Telex destinatario	
UUB1REP		B1GLTX		B1	GL	TX		UU	B1	REP		Telefax destinatario	
UUB1REP		B1HATX		B1	HA	TX		UU	B1	REP		Telefax Mittente	
UUB1REP		B1HGTX		B1	HG	TX		UU	B1	REP		Note dogana italiana	
UUB1REP		B1IFTX		B1	IF	TX		UU	B1	REP		Note dogana estera	
UUB1REP		B1YDTX		B1	YD	TX		UU	B1	REP		Nr tagliando abbonamento	
UUB5REP		B5DADA		B5	DA	DA		UU	B5	REP		Descr Merce - Mercancia Generica	
UUB6REP		B6DER1		B6	DE	R1		UU	B6	REP		Descr Regolamento 1	
UUB6REP		B6DER2		B6	DE	R2		UU	B6	REP		Descr Regolamento 2	
UUB9REP		B9CATX		B9	CA	TX		UU	B9	REP		Descr Abbr Voce Fattura	
UUB9REP		B9CATX		B9	CA	TX		UU	B9	REP		Descr Abbr Voce Fattura	
UUB9REP		B9CTTX		B9	CT	TX		UU	B9	REP		Descr Voce Fattura	
UUB9REP		B9CTTX		B9	CT	TX		UU	B9	REP		Descr Voce Fattura	
UUBAREP		BAA2TX		BA	A2	TX		UU	BA	REP		Codice ricerca	
UUBAREP		BAA5TX		BA	A5	TX		UU	BA	REP		Casella postale EDI	
UUBAREP		BAA6TX		BA	A6	TX		UU	BA	REP		Telex	
UUBAREP		BAB0TX		BA	B0	TX		UU	BA	REP		Cd Fornitore - Proveedor	
UUBAREP		BABETX		BA	BE	TX		UU	BA	REP		Tp IVA	
UUBAREP		BABWTX		BA	BW	TX		UU	BA	REP		Note	
UUBAREP		BACHTX		BA	CH	TX		UU	BA	REP		Persona da contattare	
UUBLREP		BLCITX		BL	CI	TX		UU	BL	REP		Descr Aspetto dei Beni	
UUBLREP		BLCITX		BL	CI	TX		UU	BL	REP		Descr Aspetto dei Beni	
UUBOREP		BOCJTX		BO	CJ	TX		UU	BO	REP		Descr Categoria Fornitore - Proveedor	
UUBOREP		BOCJTX		BO	CJ	TX		UU	BO	REP		Descr Categoria Fornitore - Proveedor	
UUC0REP		C0ALLO		C0	AL	LO		UU	C0	REP		Descr Allocazione	
UUC8CPP		C8C2TX		C8	C2	TX		UU	C8	CPP		Des 2	
UUC8CPP		C8C3TX		C8	C3	TX		UU	C8	CPP		Des 3	
UUC8CPP		C8C7TX		C8	C7	TX		UU	C8	CPP		Des 4	
UUC8CPP		C8CXTX		C8	CX	TX		UU	C8	CPP		Des 1	
UUC8CPP		C8DATX		C8	DA	TX		UU	C8	CPP		Des 5	
UUC8CPP		C8DBTX		C8	DB	TX		UU	C8	CPP		Des 6	
UUC8CPP		C8DCTX		C8	DC	TX		UU	C8	CPP		Des 7	
UUC8CPP		C8DDTX		C8	DD	TX		UU	C8	CPP		Des 8	
UUC8CPP		C8DETX		C8	DE	TX		UU	C8	CPP		Des 9	
UUC8CPP		C8DFTX		C8	DF	TX		UU	C8	CPP		Des 10	
UUCDREP		CDBCTX		CD	BC	TX		UU	CD	REP		Descr Tp Mezzo	
UUCDREP		CDBCTX		CD	BC	TX		UU	CD	REP		Descr Tp Mezzo	
UUCDREP		CDCFTX		CD	CF	TX		UU	CD	REP		Tp Mezzo Descrizione Abbr	
UUCDREP		CDCFTX		CD	CF	TX		UU	CD	REP		Tp Mezzo Descrizione Abbr	
UUCHREP		CHCATX		CH	CA	TX		UU	CH	REP		Descr Abbr Voce Fattura	
UUCHREP		CHCATX		CH	CA	TX		UU	CH	REP		Descr Abbr Voce Fattura	
UUCHREP		CHCTTX		CH	CT	TX		UU	CH	REP		Descr Voce Fattura	
UUCHREP		CHCTTX		CH	CT	TX		UU	CH	REP		Descr Voce Fattura	
UUCIREP		CILNTX		CI	LN	TX		UU	CI	REP		Descrizione Vincolo	
UUCIREP		CILNTX		CI	LN	TX		UU	CI	REP		Descrizione Vincolo	
UUCIREP		CIPQTW		CI	PQ	TW		UU	CI	REP		Descr Abbr Vincolo	
UUCKREP		CKATTX		CK	AT	TX		UU	CK	REP		Descr Merce - Mercancia	
UUCKREP		CKATTX		CK	AT	TX		UU	CK	REP		Descr Merce - Mercancia	
UUCKREP		CKV3TX		CK	V3	TX		UU	CK	REP		Numero Allibramento	
UUCKREP		CKV4TX		CK	V4	TX		UU	CK	REP		Ubicazione Magaz Doganale	
UUCLREP		CLA6TX		CL	A6	TX		UU	CL	REP		Telex	
UUCLREP		CLJJTX		CL	JJ	TX		UU	CL	REP		Nr riferimenti	
UUCMREP		CMBWTX		CM	BW	TX		UU	CM	REP		Note	
UUCMREP		CME3TX		CM	E3	TX		UU	CM	REP		Nr Volo 2° Routing	
UUCMREP		CMRATX		CM	RA	TX		UU	CM	REP		Nr Volo 1° Routing	
UUCMREP		CMXRTX		CM	XR	TX		UU	CM	REP		Numero Volo	
UUCMREP		CMY9TX		CM	Y9	TX		UU	CM	REP		Nr Volo 3° Routing	
UUCNREP		CNB0TX		CN	B0	TX		UU	CN	REP		Cd Fornitore - Proveedor	
UUCNREP		CND0TX		CN	D0	TX		UU	CN	REP		Descr Linea	
UUCNREP		CND0TX		CN	D0	TX		UU	CN	REP		Descr Linea	
UUCVREP		CVA8TX		CV	A8	TX		UU	CV	REP		Descr Servizio	
UUCVREP		CVA8TX		CV	A8	TX		UU	CV	REP		Descr Servizio	
UUCZREP		CZB6TX		CZ	B6	TX		UU	CZ	REP		Descr Causale	
UUCZREP		CZB6TX		CZ	B6	TX		UU	CZ	REP		Descr Causale	
UUD6REP		D6BXTX		D6	BX	TX		UU	D6	REP		Descr Addebito	
UUD6REP		D6BXTX		D6	BX	TX		UU	D6	REP		Descr Addebito	
UUD6REP		D6CKTX		D6	CK	TX		UU	D6	REP		Descr Abbr Addebito	
UUD6REP		D6CKTX		D6	CK	TX		UU	D6	REP		Descr Abbr Addebito	
UUD8REP		D8AAAL		D8	AA	AL		UU	D8	REP		Descr Abbr Tariffa	
UUD8REP		D8BWTX		D8	BW	TX		UU	D8	REP		Note	
UUD8REP		D8BZTX		D8	BZ	TX		UU	D8	REP		Descr Tariffa	
UUD8REP		D8BZTX		D8	BZ	TX		UU	D8	REP		Descr Tariffa	
UUD8REP		D8SWTX		D8	SW	TX		UU	D8	REP		Rifer	
UUDDREP		DDA2TX		DD	A2	TX		UU	DD	REP		Codice ricerca	
UUDDREP		DDA5TX		DD	A5	TX		UU	DD	REP		Casella postale EDI	
UUDDREP		DDA6TX		DD	A6	TX		UU	DD	REP		Telex	
UUDDREP		DDB0TX		DD	B0	TX		UU	DD	REP		Cd Fornitore - Proveedor	
UUDDREP		DDBATX		DD	BA	TX		UU	DD	REP		Cd status cliente	
UUDDREP		DDBGTX		DD	BG	TX		UU	DD	REP		Priorità  Evasione Consegn	
UUDDREP		DDBWTX		DD	BW	TX		UU	DD	REP		Note	
UUDDREP		DDCHTX		DD	CH	TX		UU	DD	REP		Persona da contattare	
UUDEREP		DEBBTX		DE	BB	TX		UU	DE	REP		Descr Tp Entità 	
UUDEREP		DEBBTX		DE	BB	TX		UU	DE	REP		Descr Tp Entità 	
UUDFREP		DFC0TX		DF	C0	TX		UU	DF	REP		Descr Tp Numerazione	
UUDFREP		DFC0TX		DF	C0	TX		UU	DF	REP		Descr Tp Numerazione	
UUDOREP		DOAAAA		DO	AA	AA		UU	DO	REP		Descr Categoria Merce - Mercancia	
UUDPREP		DPBTTX		DP	BT	TX		UU	DP	REP		Descr Categoria Tariffa	
UUDPREP		DPBTTX		DP	BT	TX		UU	DP	REP		Descr Categoria Tariffa	
UUDQREP		DQAAAD		DQ	AA	AD		UU	DQ	REP		Descr 4 Elemento	
UUDQREP		DQAQTX		DQ	AQ	TX		UU	DQ	REP		Descr 1 elemento	
UUDQREP		DQAQTX		DQ	AQ	TX		UU	DQ	REP		Descr 1 elemento	
UUDQREP		DQARTX		DQ	AR	TX		UU	DQ	REP		Descr 2 Elemento	
UUDQREP		DQARTX		DQ	AR	TX		UU	DQ	REP		Descr 2 Elemento	
UUDQREP		DQASTX		DQ	AS	TX		UU	DQ	REP		Descr 3 Elemento	
UUDQREP		DQASTX		DQ	AS	TX		UU	DQ	REP		Descr 3 Elemento	
UUDRREP		DRBUTX		DR	BU	TX		UU	DR	REP		Descr Sezione	
UUDRREP		DRBUTX		DR	BU	TX		UU	DR	REP		Descr Sezione	
UUDRREP		DRCLTX		DR	CL	TX		UU	DR	REP		Descr Abbr Sezione	
UUDRREP		DRCLTX		DR	CL	TX		UU	DR	REP		Descr Abbr Sezione	
UUDRREP		DRIBTX		DR	IB	TX		UU	DR	REP		Descr Sez x Stp Off 2	
UUDRREP		DRIBTX		DR	IB	TX		UU	DR	REP		Descr Sez x Stp Off 2	
UUDRREP		DRZZDI		DR	ZZ	DI		UU	DR	REP		Descr Sez x Stp Off 1	
UUDUREP		DUB0TX		DU	B0	TX		UU	DU	REP		Cd Fornitore - Proveedor	
UUDUREP		DUBGTX		DU	BG	TX		UU	DU	REP		Priorità  Evasione Consegn	
UUDUREP		DUE3TX		DU	E3	TX		UU	DU	REP		Nr Volo 2° Routing	
UUDUREP		DURATX		DU	RA	TX		UU	DU	REP		Nr Volo 1° Routing	
UUDUREP		DUY9TX		DU	Y9	TX		UU	DU	REP		Nr Volo 3° Routing	
UUDWREP		DWBVTX		DW	BV	TX		UU	DW	REP		Descr Linea Tariffa	
UUDXREP		DXRTRX		DX	RT	RX		UU	DX	REP		Descrizione sezione	
UUDYREP		DYA3TX		DY	A3	TX		UU	DY	REP		Descr Listino Tariffa	
UUDYREP		DYA3TX		DY	A3	TX		UU	DY	REP		Descr Listino Tariffa	
UUE1REP		E1D1TX		E1	D1	TX		UU	E1	REP		Descr Dogana-Valico	
UUE1REP		E1D1TX		E1	D1	TX		UU	E1	REP		Descr Dogana-Valico	
UUE1REP		E1ZZAR		E1	ZZ	AR		UU	E1	REP		Descr Abbr Dogana-Valico	
UUEAREP		EAAAAI		EA	AA	AI		UU	EA	REP		Descr Tp Tariffa	
UUEBREP		EBAAAC		EB	AA	AC		UU	EB	REP		Descr Abbr Resa	
UUEBREP		EBB7TX		EB	B7	TX		UU	EB	REP		Descr Resa	
UUEBREP		EBB7TX		EB	B7	TX		UU	EB	REP		Descr Resa	
UUECREP		ECAAAC		EC	AA	AC		UU	EC	REP		Descr Abbr Resa	
UUECREP		ECB7TX		EC	B7	TX		UU	EC	REP		Descr Resa	
UUECREP		ECB7TX		EC	B7	TX		UU	EC	REP		Descr Resa	
UUEEREP		EEV1TX		EE	V1	TX		UU	EE	REP		Raggruppamento	
UUEEREP		EEV2TX		EE	V2	TX		UU	EE	REP		Ordine di Stampa	
UUEGREP		EGZZAS		EG	ZZ	AS		UU	EG	REP		Descr Voce Fattura 2	
UUERREP		ERDPTX		ER	DP	TX		UU	ER	REP		Descr Luogo	
UUERREP		ERDPTX		ER	DP	TX		UU	ER	REP		Descr Luogo	
UUETREP		ETDSTX		ET	DS	TX		UU	ET	REP		Descr Classe	
UUETREP		ETDSTX		ET	DS	TX		UU	ET	REP		Descr Classe	
UUEYREP		EYBWTX		EY	BW	TX		UU	EY	REP		Note	
UUF2REP		F2BWTX		F2	BW	TX		UU	F2	REP		Note	
UUF4REP		F4B3TX		F4	B3	TX		UU	F4	REP		Descr Nazione	
UUF4REP		F4B3TX		F4	B3	TX		UU	F4	REP		Descr Nazione	
UUF4REP		F4GBTX		F4	GB	TX		UU	F4	REP		Convenzione Partic 1 CMR	
UUF4REP		F4GCTX		F4	GC	TX		UU	F4	REP		Convenzione Partic 2 CMR	
UUF4REP		F4GDTX		F4	GD	TX		UU	F4	REP		Convenzione Partic 3 CMR	
UUF4REP		F4OATX		F4	OA	TX		UU	F4	REP		Documenti allegati 1	
UUF4REP		F4OBTX		F4	OB	TX		UU	F4	REP		Documenti allegati 2	
UUF4REP		F4OOTX		F4	OO	TX		UU	F4	REP		Convenzione Partic 4 CMR	
UUF4REP		F4Q8TX		F4	Q8	TX		UU	F4	REP		Targa 1 CMR	
UUF4REP		F4ZZDR		F4	ZZ	DR		UU	F4	REP		Descr Nazione Destinatario	
UUFAREP		FAB0TX		FA	B0	TX		UU	FA	REP		Cd Fornitore - Proveedor	
UUFBREP		FBD6TX		FB	D6	TX		UU	FB	REP		Descr Raggruppam Fatture	
UUFBREP		FBD6TX		FB	D6	TX		UU	FB	REP		Descr Raggruppam Fatture	
UUFFREP		FFA2TX		FF	A2	TX		UU	FF	REP		Codice ricerca	
UUFFREP		FFA5TX		FF	A5	TX		UU	FF	REP		Casella postale EDI	
UUFFREP		FFA6TX		FF	A6	TX		UU	FF	REP		Telex	
UUFFREP		FFBWTX		FF	BW	TX		UU	FF	REP		Note	
UUFVREP		FVEYTX		FV	EY	TX		UU	FV	REP		Descr Conto Analitica	
UUFVREP		FVEYTX		FV	EY	TX		UU	FV	REP		Descr Conto Analitica	
UUFYREP		FYE1TX		FY	E1	TX		UU	FY	REP		Descr Raggruppamento	
UUFYREP		FYE1TX		FY	E1	TX		UU	FY	REP		Descr Raggruppamento	
UUGNREP		GNEWTX		GN	EW	TX		UU	GN	REP		Descr Provincia	
UUGNREP		GNEWTX		GN	EW	TX		UU	GN	REP		Descr Provincia	
UUGPREP		GPGETX		GP	GE	TX		UU	GP	REP		Descr Modo di Trasporto	
UUGPREP		GPGETX		GP	GE	TX		UU	GP	REP		Descr Modo di Trasporto	
UUGQREP		GQGHTX		GQ	GH	TX		UU	GQ	REP		Descr Natura Transazioni	
UUGQREP		GQGHTX		GQ	GH	TX		UU	GQ	REP		Descr Natura Transazioni	
UUGVREP		GVGMTX		GV	GM	TX		UU	GV	REP		Descr Tributo	
UUGVREP		GVGMTX		GV	GM	TX		UU	GV	REP		Descr Tributo	
UUHCREP		HCXGTX		HC	XG	TX		UU	HC	REP		Descr Resa Istat 2	
UUHCREP		HCXGTX		HC	XG	TX		UU	HC	REP		Descr Resa Istat 2	
UUHCREP		HCXITX		HC	XI	TX		UU	HC	REP		Descr Resa Istat 1	
UUHCREP		HCXITX		HC	XI	TX		UU	HC	REP		Descr Resa Istat 1	
UUHHREP		HHH3TX		HH	H3	TX		UU	HH	REP		Descr Traffico	
UUHHREP		HHH3TX		HH	H3	TX		UU	HH	REP		Descr Traffico	
UUHQREP		HQH8TX		HQ	H8	TX		UU	HQ	REP		Descr Centro di actividad 	
UUHQREP		HQH8TX		HQ	H8	TX		UU	HQ	REP		Descr Centro di actividad 	
UUI4REP		I4ATTX		I4	AT	TX		UU	I4	REP		Descr Merce - Mercancia	
UUI4REP		I4ATTX		I4	AT	TX		UU	I4	REP		Descr Merce - Mercancia	
UUI4REP		I4BITX		I4	BI	TX		UU	I4	REP		Cd Articolo	
UUI4REP		I4Q2TX		I4	Q2	TX		UU	I4	REP		Sigla Contenitore	
UUI8REP		I8B0TX		I8	B0	TX		UU	I8	REP		Cd Fornitore - Proveedor	
UUI8REP		I8JJTX		I8	JJ	TX		UU	I8	REP		Nr riferimenti	
UUIHREP		IHJ1TX		IH	J1	TX		UU	IH	REP		Descr Regime Dog e  Am	
UUIHREP		IHJ1TX		IH	J1	TX		UU	IH	REP		Descr Regime Dog e  Am	
UUIMREP		IMAFTX		IM	AF	TX		UU	IM	REP		Descr Regione	
UUIMREP		IMAFTX		IM	AF	TX		UU	IM	REP		Descr Regione	
UUINREP		INLLTX		IN	LL	TX		UU	IN	REP		Descr Tp Paletta	
UUINREP		INLLTX		IN	LL	TX		UU	IN	REP		Descr Tp Paletta	
UUIOREP		IOB0TX		IO	B0	TX		UU	IO	REP		Cd Corrispondente	
UUIOREP		IOBWTX		IO	BW	TX		UU	IO	REP		Note	
UUIOREP		IOYETX		IO	YE	TX		UU	IO	REP		Sigla 1° Cassa Mobile	
UUIOREP		IOYFTX		IO	YF	TX		UU	IO	REP		Sigla 2° Cassa Mobile	
UUIQREP		IQTATX		IQ	TA	TX		UU	IQ	REP		Descr Esito	
UUIQREP		IQTATX		IQ	TA	TX		UU	IQ	REP		Descr Esito	
UUJCREP		JCACTX		JC	AC	TX		UU	JC	REP		Descr Disposizione	
UUJCREP		JCACTX		JC	AC	TX		UU	JC	REP		Descr Disposizione	
UUJDREP		JDBWTX		JD	BW	TX		UU	JD	REP		Note	
UUJDREP		JDCHTX		JD	CH	TX		UU	JD	REP		Persona da contattare	
UUJDREP		JDFSTX		JD	FS	TX		UU	JD	REP		Telefono mittente	
UUJDREP		JDGJTX		JD	GJ	TX		UU	JD	REP		Telefono destinatario	
UUJDREP		JDHBTX		JD	HB	TX		UU	JD	REP		Nr Rifer Mittente	
UUJDREP		JDI0TX		JD	I0	TX		UU	JD	REP		Gg chiusura mittente	
UUJDREP		JDJATX		JD	JA	TX		UU	JD	REP		Telefono Ritirare a	
UUJDREP		JDJDTX		JD	JD	TX		UU	JD	REP		Telefono Consegnare a	
UUJOREP		JOATTX		JO	AT	TX		UU	JO	REP		Descr Merce - Mercancia	
UUJOREP		JOATTX		JO	AT	TX		UU	JO	REP		Descr Merce - Mercancia	
UUJPREP		JPLSTX		JP	LS	TX		UU	JP	REP		Dett Descrizione Vincolo	
UUJPREP		JPLSTX		JP	LS	TX		UU	JP	REP		Dett Descrizione Vincolo	
UUJQREP		JQLUTX		JQ	LU	TX		UU	JQ	REP		Note testo	
UUJSREP		JSA4TX		JS	A4	TX		UU	JS	REP		Banca appoggio	
UUJSREP		JSV2TX		JS	V2	TX		UU	JS	REP		Ordine di Stampa	
UPB6REP	 	OPMLCDES	OP	ML	CDES	UP	B6	REP	 	Descrizione Categoria Mail List
UPB3REP		OPMTXDES	OP	MT	XDES	UP	B3	REP		Text Description Message

"----------------------------------------"

- Zonas (Partidas/Arribos/Fronteras)

-- Selección Líneas
-- Maestro de rutas de expedicion Linee. - Selección Líneas

SELECT * 
FROM MLD_BE101X.UUCNREP	
WHERE CNAABD IN ('B1A', 'IT16', 'ITTO')


CNAABD	Cd Linea						B1A					ITTO		IT16			AD01
CND0TX	Descr Linea                     DISTRIBUCION B1A    *TOSCANA    BIANCHI MODENA  ANDORRA
CNB0TX	Cd Fornitore                    001011                          167303          010724
CNHUNB	Contatore                       0                   0           0               0
CNAFCD	Cd nazione                      ES                              IT              AD
CNDGCD	Tipo Linea                      D                   I           I               N
CNABVN	Utente                          MLDRODRIGU          MLDRODRIGU  MLDFARRE        MLDFONTANE
CNA5DT	Data Ultimo Aggiornamento       1161111             1161111     1190530         1180920
CNBQST	Stato record



"----------------------------------------"
-- Provincias/Municipios

SELECT *
FROM MLD_BE101X.UUGNREP

UUGNREP

GNLUCD CHAR	2			Cd provincia				28
GNEWTX CHAR	35			Descr Provincia             
GNL2CD CHAR	4			Cd regione                  MADRID
GNLVCD CHAR	2			Cd provincia Istat          ESMD
GNKWCQ CHAR	3			Cd Provincia Alternativo    
GNDGCD CHAR	2			Cd Filiale Ult Aggiornam    
GNABVN CHAR	10			Utente                      MLDRODRIGU
GNA5DT DECIMAL	7	0	Dt Ultimo Aggiornamento 	1150325        
GNBQST CHAR	1			Stato record                
                                                    
-- Incoterms

UUEBREP	Cond Cons Incoterms, IMPORTAR

SELECT *
FROM 
MLD_BE101X.UUEBREP

EBEDCD	CHAR	2		Cd resa						DA
EBB7TX	CHAR	25		Descr Resa                  DAP
EBAAAC	CHAR	15		Descr Abbr Resa             DAP
EBK3ST	CHAR	1		Tp raggruppamento           5
EBGMCA	CHAR	8		Cd Partenza Valico          
EBPUST	CHAR	1		Ottenimento Val Statistic   
EBWSCC	CHAR	1		Codice Gruppo Resa Intras   
EBGYST	CHAR	1		Tp fatturare a              M
EBL9CD	CHAR	3		Cd resa Istat               DAP
EBDGCD	CHAR	2		Cd Filiale Ult Aggiornam+   
EBABVN	CHAR	10		Utente                      SS  SS
EBA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento     1161018
EBBQST	CHAR	1		Stato record                



"----------------------------------------"


"----------------------------------------"


-- Maestro Expediciones UBLLREP
-- expedición: LLBQAN, LLBPAN, LLC4PG

-- Maestro Expediciones 2 - Maestro en UUB1REP

SELECT *
FROM MLD_BE101.UBLLREP
WHERE LLBQAN = 13 
AND LLBPAN = 2021 
AND LLC4PG = 200005

LLBQAN Cd Filiale Spediz-Posiz							CHAR	2			13
LLBPAN Anno Spedizione-Posizione                     	NUMERIC	4			2021
LLC4PG Progr Spediz-Posizione                        	DECIMAL	6			200005
LLBGDT Dt spedizione                                 	DECIMAL	7			1210104
LLCIDT Dt Competenza Spedizione                      	DECIMAL	7			1210104
LLCWCD Cd servizio                                   	CHAR	2			TI			, AE, AI, BA, CE, CI, CJ, CM, CN, DE, DI, DS, D1, E1, E2, FE, FI, FL, FN, FS, FX, FY, GL, HI, IN, IQ, I1, I2, JE, J1, J2, J3, LG, MA, MB, MC, MD, ME, MF, MG, MH, MI, ML, MM, MN, MO, MS, MX, M1, M2, M3, M4, NL, NN, NS, N1, N2, QI, TB, TC, TE, TI, TM, TS, T1, T2, T3, T4, T6, T8, UR, U1, U2, U3, XE, XI, XN, 
LLEDCD Cd resa                                       	CHAR	2			DA
LLOCCD Cd Cliente Mittente (Remitente)                   CHAR	6			157525
LLCJRA Rag Soc Mittente (Remitente)                      CHAR	35			TI AUTOMOTIVE TANGER
LLALIN Ind Mittente Remitente                       	CHAR	35			TANGER ZONE FREE
LLAQLO Loc Mittente Remitente                       	CHAR	25			Tanger
LLAICA CAP Mittente Remitente                       	CHAR	8			90002
LLAMPR Provincia Mittente Remitente                 	CHAR	2			
LLM6CE ID Codice Postale Mittente Remitente         	CHAR	8			MA0004Q3
LLNECE Cd Regione Iso Mittente Remitente            	CHAR	3			TNG
LLNICE Cd Regional Div Mittente Remitente           	CHAR	3			01
LLD9QR Latitude (WGS84) Mittente Remitente          	DECIMAL	11			35.790540
LLEAQR Longitude (WGS84) Mittente Remitente         	DECIMAL	11			-5.743270
LLNNCE Cd Nazione Iso Mittente Remitente            	CHAR	2			MA
LLLXCD Cd Nazione Mittente Remitente                	CHAR	3			MA
LLHBTX Nr Rifer Mittente Remitente                  	CHAR	20			
LLGSCD Cd Cliente Destinatario                       	CHAR	6			042595
LLDRRA Rag Soc Destinatario                          	CHAR	35			TI AUTOMOTIVE MARTORELL
LLA1IN Ind Destinatario                              	CHAR	35			C/ TREBALL 13-15
LLA6LO Loc Destinatario                              	CHAR	25			SANT ESTEVE SESROVIRES
LLBGCA CAP Destinatario                              	CHAR	8			08635
LLA3PR Provincia Destinatario                        	CHAR	2			
LLM7CE ID Codice Postale Destinatario                	CHAR	8			ES000BML
LLNFCE Cd Regione Iso Destinatario                   	CHAR	3			B
LLNJCE Cd Regional Div Destinatario                  	CHAR	3			CT
LLEBQR Latitude (WGS84) Destinatario                 	DECIMAL	11			41.494550
LLECQR Longitude (WGS84) Destinatario                	DECIMAL	11			1.872800
LLNMCE Cd Nazione Iso Destinatario                   	CHAR	2			ES
LLLNCD Cd Nazione Destinatario                       	CHAR	3			ES
LLIBCD Cd Cliente ComMittente Remitente             		CHAR	6			217457
LLHMCE Cd Cliente Corrispondente                     	CHAR	6			217457
LLATCC Codice Commerciale                            	CHAR	4			
LLDECA Terminal di partenza                          	CHAR	8			MA90
LLDDCA Terminal di Arrivo                            	CHAR	8			ES08635
LLBECD Cd Merceologica                               	CHAR	4			100
LLAQQT Qta colli                                     	DECIMAL	7			9
LLBBNB Peso Lordo                                    	DECIMAL	10			550.000
LLPYNB Peso Tassabile                                	DECIMAL	10			550.000
LLARQT Metri cubi                                    	DECIMAL	8			0
LLASNB Peso Netto                                    	DECIMAL	12			0
LLAKCD Cd UM                                         	CHAR	2			
LLAJQT Qta UM                                        	DECIMAL	8			0
LLKTVA Totale Ricavi Nolo                            	DECIMAL	11			0
LLSBVA Totale Ricavi Rit-Con-Pos                     	DECIMAL	11			0
LLSCVA Totale Ricavi Operaz Dog                      	DECIMAL	11			0
LLSDVA Totale Ricavi Magazzino                       	DECIMAL	11			0
LLSEVA Totale Ricavi Varie                           	DECIMAL	11			0
LLV5VO Totale Ricavi Chiusura Preced                 	DECIMAL	11			0
LLV6VO Totale Ricavi Chiusura Attuale                	DECIMAL	11			0
LLKUVA Totale Costi Nolo                             	DECIMAL	11			0
LLSFVA Totale Costi Rit-Con-Pos                      	DECIMAL	11			0
LLSGVA Totale Costi Op Doganale                      	DECIMAL	11			0
LLSHVA Totale Costi Magazzino                        	DECIMAL	11			0
LLSIVA Totale Costi Varie                            	DECIMAL	11			0
LLV7VO Totale Costi Chiusura Precedente              	DECIMAL	11			0
LLV8VO Totale Costi Chiusura Attuale                 	DECIMAL	11			0
LLM1ST Flag Inoltro                                  	CHAR	1			
LLWQST Flag Spediz-Posiz                             	CHAR	1			S
LLBPST Settore di traffico                           	CHAR	1			I
LLD8SS Tipo Trasporto                                	CHAR	2			ST
LLDBSS Tipo pratica                                  	CHAR	2			WB, HB, IS
LLUDCD Codice Compagnia                              	CHAR	3			
LLQXNB Nr AWB                                        	DECIMAL	8			0
LLDICC APT Partenza                                  	CHAR	3			
LLDHCC APT Destino                                   	CHAR	3			
LLVJCD Codice Mercato                                	CHAR	6			
LLVKCD Codice Area Iata                              	CHAR	2			
LLSAVA Costo Nolo Compagnia                          	DECIMAL	11			0
LLG0CC Ultimo Routing Codice Aer                     	CHAR	3			
LLG1CC Ultimo Routing Codice Com                     	CHAR	3			
LLWTTX Nr Volo Ultimo Routing                        	CHAR	10			
LLQYNB Numero Teus                                   	DECIMAL	3			0
LLU4CD Codice Porto Imbarco                          	CHAR	6			
LLG2CC Codice Porto Sbarco                           	CHAR	6			
LLA0CC Codice Compagnia Navig                        	CHAR	6			
LLU2CD Codice Nave                                   	CHAR	6			
LLGCCC Cd Linea Arrivo Dest Finale                   	CHAR	4			AFR1
LLEFSS Flag Inoltro Partenza                         	CHAR	1			
LLBNDT Dt consegna                                   	DECIMAL	7			1210107
LLK7CC Cd Filiale di Ricavo                          	CHAR	2			13
LLK6CC Cd Filiale Partenza                           	CHAR	2			13
LLOKCD Cd filiale posizione                          	CHAR	2			
LLAZAN Anno Posizione                                	NUMERIC	4			0
LLBEPG Progr Posizione                               	DECIMAL	6			0
LLGSTY Flag Pratica Chiusa                           	CHAR	1			
LLGTTY Flag Tipo Chiusura                            	CHAR	1			
LLBXVN Utente Chiusura Pratica                       	CHAR	10			
LLN5DT Data Chiusura Pratica                         	DECIMAL	7			0
LLA1TM Ora Chiusura Pratica                          	DECIMAL	6			0
LLBYVN Utente Riapertura Pratica                     	CHAR	10			
LLN6DT Data Riapertura Pratica                       	DECIMAL	7			0
LLA2TM Ora Riapertura Pratica                        	DECIMAL	6			0
LLI7CR Cd Provincia Analisi                          	CHAR	2			
LLI8CR Cd Regione Analisi                            	CHAR	4			
LLG2CA CAP Analisi                                   	CHAR	8			90002
LLNQCE ID Codice Postale Analisi                     	CHAR	8			MA0004Q3
LLNRCE Cd Regione Iso Analisi                        	CHAR	3			TNG
LLNTCE Cd Regional Div Analisi                       	CHAR	3			01
LLEDQR Latitude (WGS84) Analisi                      	DECIMAL	11			35.790540
LLEEQR Longitude (WGS84) Analisi                     	DECIMAL	11			-5.743270
LLNSCE Cd Nazione Iso Analisi                        	CHAR	2			
LLKTCQ Cd Nazione Analisi                            	CHAR	3			MA
LLG3CA Cd Zona Analisi                               	CHAR	8			MA90
LLKVCQ Cd Linea Analisi                              	CHAR	4			
LLKUCQ Cd Aeroporto Analisi                          	CHAR	3			
LLKSCQ Cd Porto Analisi                              	CHAR	6			
LLI9CR Cd Filiale borderò - (manifiesto) Analisi     	CHAR	2			13
LLFMAN Anno borderò - (manifiesto) Analisi           	NUMERIC	4			2021
LLK8PG Progr borderò - (manifiesto) Analisi          	DECIMAL	6			10001
LLOFBR Progr Concarico Analisi                       	DECIMAL	3			1
LLGUTY Tp Movim Sped Analisi                         	CHAR	1			A
LLN7DT Data borderò - (manifiesto) Analisi           	DECIMAL	7			1210104
LLJECR Cd Linea borderò - (manifiesto) Analisi       	CHAR	4			MA03
LLNZCE ID Categoria Classificazione                  	CHAR	10			
LLN0CE ID Caratteristica Classif                     	CHAR	10			
LLN1CE ID Attributo Caratteristica                   	CHAR	10			
LLKKCD Cd Raggruppamento                             	CHAR	6			
LLG1SS Spediz Nata da Raggruppam                     	CHAR	1			
LLN8DT Data Richiesta Consegna                       	DECIMAL	7			0
LLN9DT Data Arrivo Merce                             	DECIMAL	7			1210104
LLPMCD Cd esito                                      	CHAR	2			C0
LLOADT Data Ultimo Esito Spedizione                  	DECIMAL	7			1210107
	

CREATE TABLE edis_desarrollo.edicli_nss_ubllrep (
    llbqan character varying(7) NOT NULL,
    llbpan integer NOT NULL,
    llc4pg integer,
    llbgdt integer,
    llcidt integer,
    llcwcd character varying(7),
    lledcd character varying(7),
    lloccd character varying(11),
    llcjra character varying(40),
    llalin character varying(40),
    llaqlo character varying(30),
    llaica character varying(13),
    llampr character varying(7),
    llm6ce character varying(13),
    llnece character varying(8),
    llnice character varying(8),
    lld9qr numeric(11,6),
    lleaqr numeric(11,6),
    llnnce character varying(7),
    lllxcd character varying(8),
    llhbtx character varying(25),
    llgscd character varying(11),
    lldrra character varying(40),
    lla1in character varying(40),
    lla6lo character varying(30),
    llbgca character varying(13),
    lla3pr character varying(7),
    llm7ce character varying(13),
    llnfce character varying(8),
    llnjce character varying(8),
    llebqr numeric(11,6),
    llecqr numeric(11,6),
    llnmce character varying(7),
    lllncd character varying(8),
    llibcd character varying(11),
    llhmce character varying(11),
    llatcc character varying(9),
    lldeca character varying(13),
    llddca character varying(13),
    llbecd character varying(9),
    llaqqt integer,
    llbbnb numeric(10,3),
    llpynb numeric(10,3),
    llarqt numeric(8,3),
    llasnb numeric(12,5),
    llakcd character varying(7),
    llajqt numeric(8,3),
    llktva numeric(11,2),
    llsbva numeric(11,2),
    llscva numeric(11,2),
    llsdva numeric(11,2),
    llseva numeric(11,2),
    llv5vo numeric(11,2),
    llv6vo numeric(11,2),
    llkuva numeric(11,2),
    llsfva numeric(11,2),
    llsgva numeric(11,2),
    llshva numeric(11,2),
    llsiva numeric(11,2),
    llv7vo numeric(11,2),
    llv8vo numeric(11,2),
    llm1st character varying(6),
    llwqst character varying(6),
    llbpst character varying(6),
    lld8ss character varying(7),
    lldbss character varying(7),
    lludcd character varying(8),
    llqxnb integer,
    lldicc character varying(8),
    lldhcc character varying(8),
    llvjcd character varying(11),
    llvkcd character varying(7),
    llsava numeric(11,2),
    llg0cc character varying(8),
    llg1cc character varying(8),
    llwttx character varying(15),
    llqynb integer,
    llu4cd character varying(11),
    llg2cc character varying(11),
    lla0cc character varying(11),
    llu2cd character varying(11),
    llgccc character varying(9),
    llefss character varying(6),
    llbndt integer,
    llk7cc character varying(7),
    llk6cc character varying(7),
    llokcd character varying(7),
    llazan integer,
    llbepg integer,
    llgsty character varying(6),
    llgtty character varying(6),
    llbxvn character varying(15),
    lln5dt integer,
    lla1tm integer,
    llbyvn character varying(15),
    lln6dt integer,
    lla2tm integer,
    lli7cr character varying(7),
    lli8cr character varying(9),
    llg2ca character varying(13),
    llnqce character varying(13),
    llnrce character varying(8),
    llntce character varying(8),
    lledqr numeric(11,6),
    lleeqr numeric(11,6),
    llnsce character varying(7),
    llktcq character varying(8),
    llg3ca character varying(13),
    llkvcq character varying(9),
    llkucq character varying(8),
    llkscq character varying(11),
    lli9cr character varying(7),
    llfman integer,
    llk8pg integer,
    llofbr integer,
    llguty character varying(6),
    lln7dt integer,
    lljecr character varying(9),
    llnzce character varying(15),
    lln0ce character varying(15),
    lln1ce character varying(15),
    llkkcd character varying(11),
    llg1ss character varying(6),
    lln8dt integer,
    lln9dt integer,
    llpmcd character varying(7),
    lloadt integer,
    codigo_intercambio_edi character varying(100) NOT NULL,
    file_origen character varying(100) NOT NULL,
    nro_expedicion_incremental integer NOT NULL
);

	
"----------------------------------------"

-- Maestro Expediciones Sped
-- Sped. (S8 S1577290761 S1577446583)	

SELECT *
FROM MLD_BE101.UUB1REP
WHERE B1IBCD = '006159'
AND B1AHCD = 20
AND B1AAAN = 2017
AND B1AAPG = 103251

-- B1AHCD	Cd filiale												CHAR	2							20					
-- B1AAAN	Anno Spedizione                                     	NUMERIC	4							2017
-- B1AAPG	Progr Spedizione                                    	DECIMAL	6							103251
-- B1BGDT	Dt spedizione                                       	DECIMAL	7							1170411
-- B1CWCD	Cd servizio                                         	CHAR	2							TE
-- B1EDCD	Cd resa                                             	CHAR	2							DA
-- B1IBCD	Cd Cliente          ComMittente Remitente          	CHAR	6							006159
-- B1EWRA	Pers Contat         ComMittente Remitente          	CHAR	35							
-- B1Z3CD	Cd Divisa Pzo Patt  Commit                          	CHAR	4							
-- B1A6VA	Prezzo Patt con     Committ                         	DECIMAL	11							0
-- B1I5CD	Cd Tipo Un Viagg                                    	CHAR	6							
-- B1OCCD	Cd Cliente Mittente Remitente                      	CHAR	6							006159
-- B1CJRA	Rag Soc Mittente Remitente                         	CHAR	35							HUHTAMAKI SPAIN SA
-- B1G9RA	Ult Rag Soc Mittente Remitente                     	CHAR	35							
-- B1ALIN	Ind Mittente Remitente                             	CHAR	35							CTRA. NAL.340 KM 955 P.I. POLAR 1
-- B1AICA	CAP Mittente Remitente                             	CHAR	8							12520
-- B1AQLO	Loc Mittente Remitente                             	CHAR	25							NULES
-- B1AMPR	Provincia Mittente Remitente                       	CHAR	2							
-- B1LXCD	Cd nazione Mittente Remitente                      	CHAR	3							ES
-- B1FSTX	Telefono Mittente Remitente                        	CHAR	20							
-- B1FTTX	Telex Mittente Remitente                           	CHAR	20							ES000GGQesCS VC
-- B1HATX	Telefax Mittente Remitente                         	CHAR	20							
-- B1EYRA	Pers Contat Mittente Remitente                     	CHAR	35							
-- B1GSCD	Cd Cliente          Destinatario                    	CHAR	6							091395
-- B1DRRA	Rag Soc Destinatario                                	CHAR	35							BOUDEWIJN SEAPACK
-- B1HARA	Ult Rag Soc         Destinatario                    	CHAR	35							
-- B1A1IN	Ind Destinatario                                    	CHAR	35							A. DE BAECKESTRAAT 12
-- B1BGCA	CAP Destinatario                                    	CHAR	8							8200
-- B1A6LO	Loc Destinatario                                    	CHAR	25							Sint-Michiels
-- B1A3PR	Provincia           Destinatario                    	CHAR	2							
-- B1LNCD	Cd nazione          destinatario                    	CHAR	3							BE
-- B1GJTX	Telefono            destinatario                    	CHAR	20							
-- B1GKTX	Telex destinatario                                  	CHAR	20							BE0000C0frVWVVLG
-- B1GLTX	Telefax destinatario                                	CHAR	20							
-- B1E1RA	Pers Contat         Destinatario                    	CHAR	35							
-- B1OACD	Cd Dogana Italia                                    	CHAR	6							
-- B1E3RA	Pers Contat Dogana  Italia                          	CHAR	35							
-- B1ZCST	Flag Ns Cura Dog    Italiana                        	CHAR	1							
-- B1HGTX	Note dogana italiana                                	CHAR	60							
-- B1N8CD	Cd Dogana Estera                                    	CHAR	6							
-- B1E4RA	Pers Contat Dogana  Estera                          	CHAR	35							
-- B1ZDST	Flag Ns Cura Dog    Estera                          	CHAR	1							
-- B1IFTX	Note dogana estera                                  	CHAR	60							
-- B1B9CA	Cd 1° valico                                        	CHAR	8							
-- B1B8CA	Cd 2° valico                                        	CHAR	8							
-- B1BBC2	Cd Divisa           Contrassegno                    	CHAR	4							
-- B1AYVA	Imp Contrassegno                                    	DECIMAL	11							0
-- B1DOSS	Tipo incasso vincolo                                	CHAR	1							
-- B1NJCD	Cd Divisa Tassato a Dest                            	CHAR	4							
-- B1A0VA	Imp Tassato a       Destino                         	DECIMAL	11							0
-- B1MDCD	Cd divisa anticipata                                	CHAR	4							
-- B1AZVA	Imp Anticipata                                      	DECIMAL	11							0
-- B1BGTX	Priorità Evasione   Consegn                         	NUMERIC	1							5
-- B1EDSS	Flag Dt             Limite-Tassativa                	CHAR	1							
-- B1A1DT	Dt limite consegna                                  	DECIMAL	7							0
-- B1A2DT	Ora limite consegna                                 	DECIMAL	6							0
-- B1J4ST	Flag fattura sospesa                                	CHAR	1							
-- B1SDST	Flag ritorno                                        	CHAR	1							
-- B1ZZMM	Cd Raggrupp Fatture                                 	CHAR	8							
-- B1OKCD	Cd filiale posizione                                	CHAR	2							
-- B1AZAN	Anno Posizione                                      	NUMERIC	4							0
-- B1BEPG	Progr Posizione                                     	DECIMAL	6							0
-- B1BWTX	Note                                                	CHAR	60							
-- B1SLST	Flag Elabora Trasfer                                	CHAR	1							
-- B1CIDT	Dt Competenza       Spedizione                      	DECIMAL	7							1170412
-- B1SWST	Flag Aperta-Chiusa                                  	CHAR	1							
-- B1HCCD	Cd Cessionario                                      	CHAR	6							
-- B1DECA	Terminal di partenza                                	CHAR	8							ES46440
-- B1EFSS	Flag Inoltro        Partenza                        	CHAR	1							
-- B1DDCA	Terminal di Arrivo                                  	CHAR	8							BE82
-- B1EESS	Flag Inoltro Arrivo                                 	CHAR	1							
-- B1ARNB	GG Chiusura nella   Settim                          	CHAR	3							
-- B1DRSS	Mattino-Pomeriggio                                  	CHAR	1							
-- B1F5ST	Flag ritiro diretto                                 	CHAR	1							
-- B1F6ST	Flag consegna       diretta                         	CHAR	1							
-- B1YDTX	Nr tagliando        abbonamento                     	CHAR	10							
-- B1Z7ST	Settore di Traffico Sped                            	CHAR	1							E
-- B1D8SS	Tipo Trasporto                                      	CHAR	2							ST
-- B1F8ST	flag stampa         documento                       	CHAR	1							
-- B1EGSS	Spedizione da non   Tassare                         	CHAR	1							
-- B1DBSS	Tipo pratica                                        	CHAR	2							WB
-- B1I6SS	Spediz in Conto     Sociale                         	CHAR	1							
-- B1EHSS	Sottotipo di        Spedizione                      	CHAR	1							
-- B1EISS	Resa di Consegna    Nazional                        	CHAR	1							
-- B1EJSS	Spedizione in       Transito                        	CHAR	1							
-- B1EKSS	Flag Stato Doganale                                 	CHAR	1							
-- B1ELSS	Flag Sped 5                                         	CHAR	1							D
-- B1EMSS	Flag Sped 6                                         	CHAR	1							
-- B1D8CC	Cd filiale Offerta                                  	CHAR	2							
-- B1B1AN	Anno Offerta                                        	NUMERIC	4							0
-- B1DWPG	Progr Offerta                                       	DECIMAL	7							0
-- B1G1SS	Spediz Nata da      Raggruppam                      	CHAR	1							
-- B1GCCC	Linea Arrivo-Dest   Finale                          	CHAR	4							BEX1
-- B1DGCD	Cd Filiale Ult      Aggiornam                       	CHAR	2							
-- B1ABVN	Utente                                              	CHAR	10							MLDMRAMOS
-- B1A5DT	Dt Ultimo           Aggiornamento                   	DECIMAL	7							1170418
-- B1BQST	Stato record                                        	CHAR	1							
-- B1D6CC	Ragruppamento Cd    filiale                         	CHAR	2							
-- B1B8AN	Ragruppamento Anno  spediz                          	NUMERIC	4							0
-- B1D6PG	Ragruppamento Progr Sped                            	DECIMAL	6							0


CREATE TABLE edis_desarrollo.edicli_nss_uub1rep (
    b1ahcd character varying(7) NOT NULL,
    b1aaan integer NOT NULL,
    b1aapg integer,
    b1bgdt integer,
    b1cwcd character varying(7),
    b1edcd character varying(7),
    b1ibcd character varying(11),
    b1ewra character varying(40),
    b1z3cd character varying(9),
    b1a6va numeric(11,2),
    b1i5cd character varying(11),
    b1occd character varying(11),
    b1cjra character varying(40),
    b1g9ra character varying(40),
    b1alin character varying(40),
    b1aica character varying(13),
    b1aqlo character varying(30),
    b1ampr character varying(7),
    b1lxcd character varying(8),
    b1fstx character varying(25),
    b1fttx character varying(25),
    b1hatx character varying(25),
    b1eyra character varying(40),
    b1gscd character varying(11),
    b1drra character varying(40),
    b1hara character varying(40),
    b1a1in character varying(40),
    b1bgca character varying(13),
    b1a6lo character varying(30),
    b1a3pr character varying(7),
    b1lncd character varying(8),
    b1gjtx character varying(25),
    b1gktx character varying(25),
    b1gltx character varying(25),
    b1e1ra character varying(40),
    b1oacd character varying(11),
    b1e3ra character varying(40),
    b1zcst character varying(6),
    b1hgtx character varying(65),
    b1n8cd character varying(11),
    b1e4ra character varying(40),
    b1zdst character varying(6),
    b1iftx character varying(65),
    b1b9ca character varying(13),
    b1b8ca character varying(13),
    b1bbc2 character varying(9),
    b1ayva numeric(11,2),
    b1doss character varying(6),
    b1njcd character varying(9),
    b1a0va numeric(11,2),
    b1mdcd character varying(9),
    b1azva numeric(11,2),
    b1bgtx integer,
    b1edss character varying(6),
    b1a1dt integer,
    b1a2dt integer,
    b1j4st character varying(6),
    b1sdst character varying(6),
    b1zzmm character varying(13),
    b1okcd character varying(7),
    b1azan integer,
    b1bepg integer,
    b1bwtx character varying(65),
    b1slst character varying(6),
    b1cidt integer,
    b1swst character varying(6),
    b1hccd character varying(11),
    b1deca character varying(13),
    b1efss character varying(6),
    b1ddca character varying(13),
    b1eess character varying(6),
    b1arnb character varying(8),
    b1drss character varying(6),
    b1f5st character varying(6),
    b1f6st character varying(6),
    b1ydtx character varying(15),
    b1z7st character varying(6),
    b1d8ss character varying(7),
    b1f8st character varying(6),
    b1egss character varying(6),
    b1dbss character varying(7),
    b1i6ss character varying(6),
    b1ehss character varying(6),
    b1eiss character varying(6),
    b1ejss character varying(6),
    b1ekss character varying(6),
    b1elss character varying(6),
    b1emss character varying(6),
    b1d8cc character varying(7),
    b1b1an integer,
    b1dwpg integer,
    b1g1ss character varying(6),
    b1gccc character varying(9),
    b1dgcd character varying(7),
    b1abvn character varying(15),
    b1a5dt integer,
    b1bqst character varying(6),
    b1d6cc character varying(7),
    b1b8an integer,
    b1d6pg integer,
    codigo_intercambio_edi character varying(100) NOT NULL,
    file_origen character varying(100) NOT NULL,
    nro_expedicion_incremental integer NOT NULL
);



"----------------------------------------"

-- Missioni Cross Docking Dettaglio.
-- key: EESFCQ EEB7AN EEG3PG EEP3NB
-- expedición: EEM3CR, EEGEAN, EEMQPG

SELECT * 
FROM MLD_BE101.UPEEREP 
WHERE EEM3CR = 13
AND EEGEAN = 2021
AND EEMQPG = 200005

SELECT * 
FROM MLD_BE101.UPEEREP 
WHERE EEM3CR = 11
AND EEGEAN = 2021
AND EEMQPG = 125800

-- EESFCQ	Cd Filiale Missione TRF							11						11							11
-- EEB7AN	Anno Missione TRF                               2021                    2021                        2021
-- EEG3PG	Progr Missione TRF                              60884                   60885                       61579
-- EEP3NB	Nr Riga - (línea) Missione TRF                            1                       1                           5
-- EES7TY	Tipo Elemento CD                                S                       S                           S
-- EEM3CR	Cd Filiale Elemento CD                          11                      11                          11
-- EEGEAN	Anno Elemento CD                                2021                    2021                        2021
-- EEMQPG	Progr Elemento CD                               125800                  125800                      125800
-- EEXGBR	Progr Movim Elemento CD                         0                       0                           2
-- EESQV1	Numero Segnacollo Cross Docking                 MLDBS1121125800001      MLDBS1121125800001          MLDBS1121125800001
-- EEX5SS	Tipo segnacollo                                 I                       I                           I
-- EESTTY	Stato Riga - (línea) Missione CD                          V                       V                           V
-- EEABCD	Cd Magazzino                                    11                      11                          11
-- EETECE	Porta Cross Docking                             RC                                                  24
-- EETBCE	Area Cross Docking                                                      PT1                         PT1
-- EEQICD	Cd filiale borderò - (manifiesto)                                                                                  11
-- EEACAN	Anno borderò - (manifiesto)                                    0                       0                           2021
-- EEBUPG	Progr borderò - (manifiesto)                                   0                       0                           22985
-- EEP0NB	Progr Concarico                                 0                       0                           1
-- EENCNB	Progr Container                                 0                       0                           0
-- EEWZBR	Sequenza Viaggio                                0                       0                           0
-- EEW0BR	Sequenza Carico Mezzo                           0                       0                           5
-- EESNV1	Numero Segnacollo UDC                                                                               
-- EEBHVN	Utente Ultima Lettura                           MLDXDOC20               MLDXDOC17                   MLDXDOC24
-- EEPMDT	Data Lettura 1                                  2021-07-08              2021-07-08                  2021-07-09
-- EEA5TM	Ora Lettura 1                                   191731                  211908                      234543
-- EEAKDA	Data Lettura 2                                  2021-07-08              2021-07-08                  2021-07-09
-- EEA6TM	Ora Lettura 2                                   191732                  212041                      234842
-- EEALDA	Data Lettura 3                                  0001-01-01              0001-01-01                  0001-01-01
-- EEA7TM	Ora Lettura 3                                   0                       0                           0
-- EEMZCR	Cd Filiale Reintegro Mancanza                                                                       
-- EEGAAN	Anno Reintegro Mancanza                         0                       0                           0
-- EEMMPG	Progr Reintegro Mancanza                        0                       0                           0
-- EEW1BR	Nr Riga - (línea) Reintegro Mancanza                      0                       0                           0

"----------------------------------------"

-- PLEX Missioni CD Testata UPEDREP
-- Cabecera: EDSFCQ EDB7AN EDG3PG

-- EDSFCQ  Cd Filiale Missione TRF				
-- EDB7AN  Anno Movim TRF                     
-- EDG3PG  Progr Movim TRF                    
-- EDAMDT  Dt movimentazione                  
-- EDSRTY  PLEX Tipo Missione CD  (A01, A02, A03, A04, A06, D01, D02, I01, M01, P01, P02, P04, P05, P06, P07, P08, T01, T02, V01)
-- EDABCD  Cd Magazzino                       
-- EDTECE  PLEX Porta Cross Docking           
-- EDBRVN  Utente Assegnato                   
-- EDQICD  Cd filiale borderò - (manifiesto)                 
-- EDACAN  Anno borderò - (manifiesto)                       
-- EDBUPG  Progr borderò - (manifiesto)                      
-- EDSSTY  PLEX Stato Missione CD ('D%' or 'P%' or 'T%' or 'A%')
-- EDTBCE  PLEX Area Cross Docking            
-- EDAKVN  Utente Ultimo Aggiornam            
-- EDA5DT  Dt Ultimo Aggiornamento            
-- EDMXCR  Cd Filiale MCD Posiz               
-- EDF7AN  Anno MCD Posiz                     
-- EDMJPG  Progr MCD Posiz                    

SELECT *
FROM MLD_BE101.UPEDREP
WHERE EDQICD = 13
AND EDACAN = 2021
AND EDBUPG = 30001

SELECT *
FROM MLD_BE101.UPEDREP
WHERE EDQICD = 11
AND EDACAN = 2021
AND EDBUPG = 30017

SELECT *
FROM MLD_BE101.UPEDREP
WHERE EDQICD = 11
AND EDACAN = 2021
AND EDBUPG = 30061

"----------------------------------------"

-- Table: Misiones - filiales 11,13, 15, 20, 22
-- key: CMAHCD, CMACAN, CMBUPG

-- CMAHCD	Cd filiale borderò - (manifiesto)
-- CMACAN	Anno borderò - (manifiesto)
-- CMBUPG	Progr borderò - (manifiesto)
-- CMBFST	Tp borderò - (manifiesto)
-- CMDUDT	Data Viaggio
-- CMIMNB	Ora Viaggio
-- CMCHCD	Cd vettore
-- CMIPCD	Cd Conducente
-- CMVGCE	Cd Trasportatore Successivo
-- CMCFCD	Cd mezzo
-- CMTARG	Targa
-- CMCACD	Cd tp mezzo
-- CMI0QT	Totale Portata mt cubi
-- CMI1QT	Totale Portata palette
-- CMI2QT	Totale Portata KG
-- CMJACD	Cd mezzo 2
-- CMZZAQ	Targa 2
-- CML6CD	Cd tp mezzo 2
-- CMIGCD	Cd Dogana-Valico
-- CMB9CA	Cd 1° valico
-- CMKRCR	Cd Divisa Trazione
-- CMHXVA	Imp Trazione
-- CMEIST	Flag tp lista borderò - (manifiesto)'
-- CMD9SS	Flag Invio Dati
-- CMUDCD	Codice Compagnia Aerea
-- CMVLCD	Codice Aeroporto
-- CMXRTX	Numero Volo
-- CMOPNB	Numero AWB
-- CMA0CC	Codice Compagnia Navigazione
-- CMU4CD	Porto di Sbarco (POD)
-- CMU2CD	Codice Nave
-- CMU3CD	Nr Viaggio Nave
-- CMI5CC	Codice Porto Viaggio Nave
-- CMLCCQ	Cd Filiale Viaggio Nave
-- CMC5AN	Anno Viaggio Nave
-- CMHLPG	Progr Viaggio Nave
-- CMBWTX	Note
-- CMX8QT	Km
-- CMYTCD	Sigillo
-- CMKQCR	Sigillo 2
-- CMOKCE	APT Partenza-Arrivo
-- CMCLCC	APT 1° Routing
-- CMDNCC	Codice Compagnia 1° Routing
-- CMRATX	Nr Volo 1° Routing
-- CMJ4DT	Data Volo 1° Routing
-- CMCMCC	APT 2° Routing
-- CMCNCC	Codice Compagnia 2° Routing
-- CME3TX	Nr Volo 2° Routing
-- CMJ5DT	Data Volo 2° Routing
-- CMCOCC	APT 3° Routing
-- CMCPCC	Codice Compagnia 3° Routing
-- CMY9TX	Nr Volo 3° Routing
-- CMJ6DT	Data Volo 3° Routing
-- CMWNTY	Stato borderò - (manifiesto)
-- CMANDX	Data Arrivo Prevista Terminal
-- CMA9TM	Ora Arrivo Prevista Terminal
-- CMAODX	Data Arrivo Effettiva Terminal
-- CMBATM	Ora Arrivo Effettiva Terminal
-- CMAPDX	Data Partenza Prevista LDC
-- CMBBTM	Ora Partenza Prevista LDC
-- CMAQDX	Data Partenza Effettiva LDC
-- CMBCTM	Ora Partenza Effettiva LDC
-- CMARDX	Data Inizio Previsto Carico
-- CMBDTM	Ora Inizio Previsto Carico
-- CMASDX	Data Inizio Effettivo Carico
-- CMBETM	Ora Inizio Effettivo Carico
-- CMATDX	Data Fine Carico
-- CMBFTM	Ora Fine Carico
-- CMAWDX	Data Inizio Previsto Scarico
-- CMBITM	Ora Inizio Previsto Scarico
-- CMAXDX	Data Inizio Effettivo Scarico
-- CMBJTM	Ora Inizio Effettivo Scarico
-- CMAYDX	Data Fine Scarico
-- CMBKTM	Ora Fine Scarico
-- CMOJCR	Cd Magazzino Cross  Docking
-- CMVHCE	Porta Cross Docking Carico
-- CMVICE	Porta Cross Docking Scarico
-- CMWETY	Flag borderò - (manifiesto) x Conducente 01
-- CMWFTY	Flag borderò - (manifiesto) x Conducente 02
-- CMWGTY	Flag borderò - (manifiesto) x Conducente 03
-- CMWHTY	Flag borderò - (manifiesto) x Conducente 04
-- CMWITY	Flag borderò - (manifiesto) x Conducente 05
-- CMDGCD	Cd Filiale Ult Aggiornam
-- CMABVN	Utente
-- CMA5DT	Data Ultimo Aggiornamento
-- CMBQST	Stato record

SELECT * 
FROM MLD_BE101.UUCMREP
WHERE CMAHCD = 13
AND CMACAN = 2021
AND CMBUPG = 30001

SELECT * 
FROM MLD_BE101.UUCMREP
WHERE CMAHCD = 11
AND CMACAN = 2021
AND CMBUPG = 30017

SELECT * 
FROM MLD_BE101.UUCMREP
WHERE CMAHCD = 11
AND CMACAN = 2021
AND CMBUPG = 30061


"----------------------------------------"

-- Linee Cross Docking.

EBABCD	Cd Magazzino					
EBAABD	Cd Linea
EBCMPG	Nr Riga - (línea) 2
EBX2BR	Ora Finale
EBWXBR	Sequenza Area Cross Docking
EBUACE	Area Cross Docking  Lunedì
EBUBCE	Area Cross Docking  Martedì
EBUCCE	Area Cross Docking  Mercoledì
EBUDCE	Area Cross Docking  Giovedì
EBUECE	Area Cross Docking  Venerdì
EBUFCE	Area Cross Docking  Sabato
EBUGCE	Area Cross Docking  Domenica
EBAKVN	Utente Ultimo Aggiornamento
EBA5DT	Data Ultimo Aggiornamento



SELECT *
FROM MLD_BE101.UPEBREP
WHERE EBABCD = 13 AND EBAABD = 'BCN1'

"----------------------------------------"

-- TRF Tipi - Tipo Anomalia.
-- Cd Anomalia TRF ASADCE
-- Tp Anomalia TRF ASVDSX
-- Descr Anomalia TRF ASOZUX
SELECT *
FROM MLD_BE101.UIASCPP

"----------------------------------------"

-- Filiales, Filiali.

SELECT *
FROM MLD_BE101.UUALREP

01	ALAHCD	CHAR	2		Cd filiale				11							13								20							21								 22							25						12								35							71						36							37							15							
02	ALAUTX	CHAR	35		Descr Filiale           Moldtrans SL - Barcelona    Moldtrans SL - Madrid - Coslada Moldtrans SL - Valencia     Moldtrans SL - Valencia (Seair)  Moldtrans SL - Alicante    Moldtrans SL - Sevilla  Moldtrans SL - Barcelona SAF    Moldtrans SL - Las Palmas   Moldtrans SL - Bilbao   Moldtrans SL - Tenerife     Moldtrans SL - Ribarroja    Moldtrans SL - Ferias
03	ALAPCD	CHAR	6		Cd Cliente              001011                      006095                          001015                      010662                           001010                     001014                  010659                          010660                                              053616                      006096                      081883
04	ALB0TX	CHAR	6		Cd fornitore            001011                      006095                          001015                      010662                           001010                     001014                  010659                          010660                                              053616                      006096                      081883
05	ALDDCD	CHAR	2		Cd filiale x tariffa    11                          13                              20                          21                               22                         25                      11                              35                                                  36                          37                          11
06	ALBQST	CHAR	1		Stato record                                                                                                    A                                                                                                                                               A                                                   
                                                                                                                                                                                                                                                                                                                                                        
"----------------------------------------"

-- Masters - Maestros

-- Maestro de almacenes definidos en el sistema

AFABCD	Cd Magazzino						13
AFAOTX   Descr Magazzino                 Almacen - Madrid Coslada
AFAHIN   Indirizzo                       Torres Quevedo, 5-7
AFADCA   CAP1                            28820
AFLOCA   Località                        COSLADA - Madrid
AFAEPR   Provincia                       
AFAFCD   Cd nazione                      ES
AFANCA   Cd Partenza Arrivo              
AFWEEE   Flag magazzino estero           
AFV7CC   Cd Magazzino di Fatturaz        13
AFDGCD   Cd servizio                     
AFABVN   Utente                          NSCMAZZOLE
AFA5DT   Dt Ultimo Aggiornamento         1170308
AFBQST   Stato record


SELECT AFABCD, AFAOTX
FROM MLD_BE101.UUAFREP


"----------------------------------------"

"----------------------------------------"


SELECT *
FROM MLD_BE101X.UIAECPP

AESJCD	AEMNUX	AEBQST
E51	Prodotti Agricoli

"----------------------------------------"




SELECT DISTINCT IOBFST
FROM MLD_BE101.UUIOREP

-- IOBFST
-- 
-- AI	Trayecto in arrivo
-- AM
-- AN
-- CA
-- EA
-- EM
-- IA
-- IM
-- NM
-- PE
-- PN	Trayecto en salida
-- RA
-- RC	Recogida
-- RT

-- UUIOREP	borderò - (manifiesto) x Corr.

SELECT IOBFST, COUNT(IOBFST) 
FROM MLD_BE101.UUIOREP a
JOIN MLD_BE101.UBLLREP b
   ON IOAHCD = LLI9CR
  AND IOACAN = LLFMAN
  AND IOBUPG = LLK8PG
  AND IOB0TX = LLHMCE

WHERE IOAHCD = 11
  AND IOACAN = 2022

GROUP BY IOBFST


IOBFST	CHAR	2		Tp bordero  AI, AM, AN, CA, EA, EM, IA, IM, NM, PE, PN, RA, RC, RT

SELECT * 
FROM MLD_BE101.UUIOREP
JOIN MLD_BE101.UBLLREP
  ON IOAHCD = LLBQAN
 AND IOACAN = LLBPAN
 AND IOBUPG = LLC4PG
WHERE IOAHCD = '13'
  AND IOACAN = 2022	 
  AND IOBUPG = 30092	 



01	IOAHCD	CHAR	2		Cd filiale borderò						IOAHCD	13			11
02	IOACAN	NUMERIC	4	0	Anno borderò                            IOACAN  2022        2021
03	IOBUPG	DECIMAL	6	0	Progr Borderò                           IOBUPG  30092       43112
04	IOP0NB	DECIMAL	3	0	Progr Concarico                         IOP0NB  1           1
05	IOBFST	CHAR	2		Tp bordero                              IOBFST  PN          RC
06	IOEIST	CHAR	1		Flag tp lista bordero                   IOEIST  D           D
07	IODUDT	DECIMAL	7	0	Data Viaggio                            IODUDT  1220112     1211126
08	IOB0TX	CHAR	6		Cd Corrispondente                       IOB0TX  002874      001642
09	IOAABD	CHAR	4		Cd Linea                                IOAABD  M010        B1A
10	IOQDCD	CHAR	6		Cd 1° Cassa Mobile                      IOQDCD              
11	IOYETX	CHAR	20		Sigla 1° Cassa Mobile                   IOYETX              
12	IOQGCD	CHAR	6		Cd 2° Cassa Mobile                      IOQGCD              
13	IOYFTX	CHAR	20		Sigla 2° Cassa Mobile                   IOYFTX              
14	IOBWTX	CHAR	60		Note                                    IOBWTX              
15	IORVCO	CHAR	20		Rifer Corrispondente                    IORVCO              
16	IOC3DT	DECIMAL	7	0	Dt Riferimenti                          IOC3DT  0           0
17	IOF6ST	CHAR	1		Flag consegna diretta                   IOF6ST              
18	IOD9SS	CHAR	1		Flag Invio Dati                         IOD9SS  S           
19	IOA2SX	CHAR	1		Borderò Esitato                         IOA2SX              
20	IOA3SX	CHAR	1		Inviati Dati FHL Aereo                  IOA3SX              
21	IOA4SX	CHAR	1		Flag Palette Lavorate                   IOA4SX              
22	IOA5SX	CHAR	1		Creato Conto Sociale Bord               IOA5SX              
23	IOA6SX	CHAR	1		Flag Borderò x Corrispondente 05        IOA6SX              
24	IOWJTY	CHAR	1		Flag Borderò x Corrispondente 06        IOWJTY              
25	IOWKTY	CHAR	1		Flag Borderò x Corrispondente 07        IOWKTY              
26	IOWLTY	CHAR	1		Flag Borderò x Corrispondente 08        IOWLTY              
27	IOWMTY	CHAR	1		Flag Borderò x Corrispondente 09        IOWMTY              
28	IOWOTY	CHAR	1		Flag Borderò x Corrispondente 10        IOWOTY              
29	IOCACD	CHAR	4		Cd tp mezzo                             IOCACD              
30	IOL6CD	CHAR	4		Cd tp mezzo 2                           IOL6CD              
31	IOAUDX	NUMERIC	8	0	Data Arr Par Prevista Term Corr         IOAUDX  0           0
32	IOBGTM	DECIMAL	6	0	Ora Arr Par Prevista Term Corr          IOBGTM  0           0
33	IOAVDX	NUMERIC	8	0	Data Arr Par Effettiva Term Corr        IOAVDX  0           0
34	IOBHTM	DECIMAL	6	0	Ora Arr Par Effettiva Term Corr         IOBHTM  0           0
35	IOGJDT	DECIMAL	7	0	Data Partenza Prevista                  IOGJDT  0           0
36	IOKDDT	DECIMAL	7	0	Data Arrivo Prevista                    IOKDDT  0           0
37	IODXDT	DECIMAL	7	0	Data Carico                             IODXDT  0           0
38	IOKRCR	CHAR	4		Cd Divisa Trazione                      IOKRCR              
39	IOHXVA	DECIMAL	11	2	Imp Trazione                            IOHXVA  0           0

"----------------------------------------"

-- UBLNREP	Movimenti Analitici  

SELECT LNAHCD, LNCFAN, LNC7PG, LNF2ST, SUM(LNKXVA) LNKXVA, SUM(LNKYVA) LNKYVA, SUM(LNGCVA) LNGCVA, SUM(LNGDVA) LNGDVA
FROM MLD_BE101.UBLNREP a

WHERE LNQICD = 11
  AND LNACAN = 2022
  AND LNBUPG = '031587'
GROUP BY LNAHCD, LNCFAN, LNC7PG, LNF2ST


LNAHCD	11		11		11
LNCFAN	2022    2022    2022
LNC7PG	28608   28608   28608
LNF2ST          GB      TB
LNKXVA	586.80  166.80  420.00
LNKYVA	0       0       0
LNGCVA	586.80  166.80  420.00
LNGDVA	0       0       0


      
01	LNAHCD	CHAR	2		Cd filiale								
02	LNCFAN	NUMERIC	4	0	Anno Movimento Analitica                           
03	LNC7PG	DECIMAL	7	0	Nr Registrazione                       
04	LNC8PG	DECIMAL	5	0	Progr Registrazione                       
05	LNF4ST	CHAR	1		Flag Costo-Ricavo    		- 'C' ó 'R' Costo ó Venta
06	LNF2ST	CHAR	2		Tipo Movimento Contabile                           
07	LNLSNB	NUMERIC	4	0	Anno di Competenza                          
08	LNIUNB	NUMERIC	2	0	Mese di Competenza                          
09	LNTICD	CHAR	2		Cd filiale Fattura                             
10	LNJJSS	CHAR	2		Tipo Entità fatture                             
11	LNL4NB	DECIMAL	7	0	Nr Protocollo                          
12	LNEZDT	DECIMAL	7	0	Dt Protocollo                          
13	LNL5NB	CHAR	10		Nr Documento Fornitore                           
14	LNAKDT	DECIMAL	7	0	Dt documento                           
15	LNZZCE	CHAR	13		Cd Conto Analitica                           
16	LNA1CD	CHAR	3		Cd voce fattura                             
17	LNAMCD	CHAR	12		Cd Conto Contabile                           
18	LNAPCD	CHAR	6		Cd Cliente                             
19	LNB0TX	CHAR	6		Cd fornitore                           
20	LNKXVA	DECIMAL	13	2	Importo Previsionale DP                     
21	LNKYVA	DECIMAL	13	2	Importo Consuntivo DP                       
22	LNGCVA	DECIMAL	13	2	Importo Previsionale DS                     
23	LNGDVA	DECIMAL	13	2	Importo Consuntivo DS                       
24	LNT5ST	CHAR	1		Tipo Movimento                           
25	LNBQAN	CHAR	2		Cd Filiale Spediz-Posiz                        
26	LNBPAN	NUMERIC	4	0	Anno Spedizione-Posizione                
27	LNC4PG	DECIMAL	6	0	Progr Spediz-Posizione                    
28	LNOKCD	CHAR	2		Cd filiale posizione                           
29	LNAZAN	NUMERIC	4	0	Anno Posizione                           
30	LNBEPG	DECIMAL	6	0	Progr Posizione                           
31	LNQICD	CHAR	2		Cd filiale borderò                             
32	LNACAN	NUMERIC	4	0	Anno borderò                             
33	LNBUPG	DECIMAL	6	0	Progr Borderò                             
34	LNP0NB	DECIMAL	3	0	Progr Concarico                           
35	LNKYCQ	CHAR	2		Cd Filiale Entrata Magaz                       
36	LNC4AN	NUMERIC	4	0	Anno Entrata Magaz                               
37	LNHKPG	DECIMAL	6	0	Progr Entrata Magaz                               
38	LND8SS	CHAR	2		Tipo Trasporto                           
39	LNCWCD	CHAR	2		Cd servizio                            
40	LNBPST	CHAR	1		Settore di traffico                            
41	LNTFCD	CHAR	2		Cd filiale Competenza                          
42	LNAABD	CHAR	4		Cd linea                               
43	LNAQCD	CHAR	4		Cd Divisa                              
44	LNNHVA	DECIMAL	11	6	Cambio Movim Previsionale                        
45	LNNIVA	DECIMAL	11	2	Importo Previs in Valuta                           
46	LNMSCR	CHAR	4		Cd Divisa Importo Cons                        
47	LNNJVA	DECIMAL	11	6	Cambio Movim Consuntivo                          
48	LNNKVA	DECIMAL	11	2	Importo Consun in Valuta                           
49	LNA8AN	NUMERIC	4	0	Anno Movimento Contabile                           
50	LNC5PG	DECIMAL	7	0	Numero Movimento Contab                              
51	LNC6PG	DECIMAL	5	0	Progr nel Movimento                           
52	LNF1ST	CHAR	1		Flag Movim Consolidato                         
53	LNF3ST	CHAR	1		Flag Movimento Esploso                             
54	LNO7SS	CHAR	1		RCD Modific Dopo Chiusura                       
55	LNF6AN	NUMERIC	4	0	Anno Controllo Fatture                             
56	LNBBSG	DECIMAL	7	0	Progr Controllo Fatture                             
57	LNB4VN	CHAR	10		Utente Verifica                            
58	LNROTY	CHAR	1		Movimento da Validare                         
59	LNMRCR	CHAR	3		Codice Esito Attivita                            
60	LNS1CE	CHAR	6		PLEX Societa                             
61	LNNZCE	CHAR	10		PLEX ID Categoria Classif                             
62	LNN0CE	CHAR	10		PLEX ID Caratteristica Cl                   
63	LNN1CE	CHAR	10		PLEX ID Attributo Classif                             
64	LNK4CC	CHAR	6		Centro di Attività                            
65	LNKKCD	CHAR	6		Cd Raggruppamento                      
66	LNCFCD	CHAR	6		Cd mezzo                               
67	LNPQCD	CHAR	2		Cd Filiale Viaggio                             
68	LNC3PG	NUMERIC	4	0	Anno Viaggio                             
69	LNACPG	DECIMAL	6	0	Progr Viaggio                             
70	LNEASS	CHAR	1		Flag Ritassazione Si-No                               
71	LNO8SS	CHAR	1		Movimento Indiretto                           
72	LNO9SS	CHAR	1		Flag Analitica 02                        
73	LNPASS	CHAR	1		Flag Analitica 03                        
74	LNRTTY	CHAR	1		Flag Analitica 04                        
75	LNRUTY	CHAR	1		Flag Analitica 05                        
76	LNRVTY	CHAR	1		Flag Analitica 06                        
77	LNRWTY	CHAR	1		Flag Analitica 07                        
78	LNRXTY	CHAR	1		Flag Analitica 08                        
79	LNRYTY	CHAR	1		Flag Analitica 09                        
80	LNRZTY	CHAR	1		Flag Analitica 10                        
81	LNRPTY	CHAR	1		Flag Analitica 11                        
82	LNRQTY	CHAR	1		Flag Analitica 12                        
83	LNRSTY	CHAR	1		Flag Analitica 13                        
84	LNR5TY	CHAR	1		Flag Analitica 14                        
85	LNR6TY	CHAR	1		Flag Analitica 15                        
86	LNLFCC	CHAR	2		Mov Originale Cd Filiale                          
87	LNCLAN	NUMERIC	4	0	Mov Originale Anno Movim                          
88	LNEYPG	DECIMAL	7	0	Mov Originale Nr Registr                          
89	LNEZPG	DECIMAL	5	0	Mov Originale Progr Regis                         
90	LNAJVN	CHAR	10		Utente creazione                           
91	LNG4DT	DECIMAL	7	0	Data creazione                           
92	LNQUNB	DECIMAL	4	0	Ora creazione                           
93	LNAKVN	CHAR	10		Utente Ultimo Aggiornam                           
94	LNA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento                       
95	LNQVNB	DECIMAL	4	0	Ora Ultimo Aggiornamento


"----------------------------------------"

-- UUDDREP	Anag Clienti. (S8 S1577290537 S1577446583) - Transportista ????? NPI

1	DDAPCD	CHAR	6		Cd Cliente					057749							
2	DDBBRA	CHAR	35		Rag Soc                     YANYARE DESIGN SL            
3	DDARRA	CHAR	35		Ult Rag Soc                             
4	DDAHIN	CHAR	35		Indirizzo                   C/ Fuente del Berro, 6         
5	DDADCA	CHAR	8		CAP1                        28009            
6	DDLOCA	CHAR	25		Località                    Madrid            
7	DDAEPR	CHAR	2		Provincia                   M            
8	DDA2TX	CHAR	15		Codice ricerca              YANYARE DESIGN            
9	DDATCD	CHAR	16		Cd fiscale                              
10	DDALNB	CHAR	11		Partita IVA                 B87627691            
11	DDAKNB	CHAR	20		Telefono                    ESB87627691            
12	DDADNB	CHAR	20		Telefax                     1078426            
13	DDA6TX	CHAR	20		Telex                       ES000E52esM  MD            
14	DDA5TX	CHAR	20		Casella postale EDI                     
15	DDBWTX	CHAR	60		Note                                    
16	DDAFCD	CHAR	3		Cd nazione                  ES            
17	DDAQCD	CHAR	4		Cd Divisa                   EUR            
18	DDBYCD	CHAR	1		Cd lingua nazionale         5            
19	DDCHTX	CHAR	35		Persona da contattare          
20	DDBATX	CHAR	2		Cd status cliente                       
21	DDDICD	CHAR	6		Cd Cliente Fatturare a      057749            
22	DDAICD	CHAR	2		Cd Categoria Cliente        05            
23	DDAUCD	CHAR	1		Unità Valore Merce                      
24	DDAONB	DECIMAL	11	2	Valore Unità Merce          0            
25	DDBECD	CHAR	4		Cd Merceologica                         
26	DDBNCD	CHAR	2		Esclus Cliente da Selez                 
27	DDB0TX	CHAR	6		Cd fornitore                            
28	DDANCA	CHAR	8		Cd Partenza Arrivo                      
29	DDM1ST	CHAR	1		Flag Inoltro                            
30	DDAABD	CHAR	4		Cd linea                                
31	DDCDZN	CHAR	2		Cd zona distribuzione                   
32	DDDFCD	CHAR	6		Cd fornitore 2                          
33	DDHZCD	CHAR	6		Cd Cliente Deposit  Merce               
34	DDJUST	CHAR	1		Flag cliente depositante                
35	DDBGTX	NUMERIC	1	0	Priorità Evasione Consegn   0            
36	DDE4ST	CHAR	1		Invio informazioni EDI                  
37	DDMZST	CHAR	1		Tipo Conto Sociale                      
38	DDM0ST	CHAR	1		Flag stampa ordine ritiro               
39	DDM2ST	CHAR	1		Tp Fatturare a cliente                  
40	DDKKCD	CHAR	6		Cd Raggruppamento                       
41	DDE5ST	CHAR	1		Flag tp richiesta fondi                 
42	DDE8ST	CHAR	1		Flag Trasp Merce Volumin                
43	DDE9ST	CHAR	1		GG Franchigia Giacenza                  
44	DDATCC	CHAR	4		Codice Commerciale                      
45	DDDMSS	CHAR	1		Esigenza di prenotazione                
46	DDDNSS	CHAR	1		Esclusione Restit Vincolo               
47	DDDOSS	CHAR	1		Tipo incasso vincolo                    
48	DDDPSS	CHAR	1		Tipo pagamento vincolo                  
49	DDDQSS	CHAR	1		Sollecito giacenza                      
50	DDD2SS	CHAR	1		Particolarità Serv-Fil      S            
51	DDD3SS	CHAR	1		Ulteriori Ind R-C                       
52	DDPPNB	DECIMAL	4	0	Ora-Min Apertura Mattina    1000            
53	DDPQNB	DECIMAL	4	0	Ora-Min Chiusura Mattina    1800            
54	DDPRNB	DECIMAL	4	0	Ora-Min Apertura Pomerigg   0            
55	DDPSNB	DECIMAL	4	0	Ora-Min Chiusura Pomerigg   0            
56	DDARNB	CHAR	3		GG Chiusura nella Settim    VEN            
57	DDDRSS	CHAR	1		Mattino-Pomeriggio          P            
58	DDD5SS	CHAR	3		GG Chiusura nella Settim2               
59	DDD4SS	CHAR	1		Mattino-Pomeriggio 2                    
60	DDPTNB	DECIMAL	4	0	GG chiusura nell'anno 1     0            
61	DDPUNB	DECIMAL	4	0	GG chiusura nell'anno 2     0            
62	DDPVNB	DECIMAL	4	0	GG chiusura nell'anno 3     0            
63	DDPWNB	DECIMAL	4	0	GG chiusura nell'anno 4     0            
64	DDD6SS	CHAR	1		Cliente contabile           S            
65	DDDSSS	CHAR	1		Dati Intrastat                          
66	DDDTSS	CHAR	1		Tipo Tassazione Cliente     1            
67	DDDUSS	CHAR	1		Tipo Cliente-Fornitore      E            
68	DDDVSS	CHAR	1		Esclusione da Fatturaz                  
69	DDDWSS	CHAR	1		Dati commerciali                        
70	DDDXSS	CHAR	1		Intestatario Vincolo                    
71	DDDYSS	CHAR	1		Sospensione Iva x Dogana                
72	DDDZSS	CHAR	1		Obb Copertura Assicurat     S            
73	DDD0SS	CHAR	1		Flag cliente 9              S            
74	DDD1SS	CHAR	1		Flag cliente 10                         
75	DDDGCD	CHAR	2		Cd Filiale Ult Aggiornam    11            
76	DDABVN	CHAR	10		Utente                      MLDCMOLDES            
77	DDA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento     1220131            
78	DDBQST	CHAR	1		Stato record                          

SELECT *
FROM MLD_BE101.UUDDREP
WHERE DDAPCD = 001642

"----------------------------------------"

-- Maestro bancos
FROM MLD_BE101.CGAXREP	

"----------------------------------------"

-- Maestro bancos
FROM MLD_BE101.CGAYREP

"----------------------------------------"

-- Maestro paises ISO
FROM MLD_BE101.UAKHREP

"----------------------------------------"

"----------------------------------------"

-- Maestro de compañias aereas
FROM MLD_BE101.UCMZREP	

"----------------------------------------"

-- Maestro BLs de expediciones maritimas -- Polizze di Carico Testata.	
FROM MLD_BE101.UDRPREP	

"----------------------------------------"

-- Maestro paises Nazioni. 

SELECT * 
FROM MLD_BE101X.UUA2REP
WHERE A2AFCD LIKE '%E%'

A2AFCD	CHAR	3		Cd nazione					ES					EG			EH					ER			ET			KE			
A2B3TX	CHAR	35		Descr Nazione               ESPAÑA				Egipto      Sahara Occidental   Eritrea     Etiopía     Kenia       
A2A3CD	CHAR	3		Cd nazione istat            ES					EG          EH                  ER          ET          KE          
A2AQCD	CHAR	4		Cd Divisa                   EUR					EGP         MAD                 ERN         ETB         KES         
A2AWCD	CHAR	1		Cd Trattamento Prefer       1					                                                                    
A2BYCD	CHAR	1		Cd lingua nazionale         5					5           5                   5           5           5           
A2X3TX	CHAR	15		Tp scambio preferenziale    					                                                                    
A2DGCD	CHAR	2		Cd Filiale Ult Aggiornam    					                                                                    
A2ABVN	CHAR	10		Utente                      MLDZAMORA			MLDMARIN    MLDMARIN                        MLDMARIN    MLDMARIN    
A2A5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento     1211109				1200930     1200930             0           1200930     1200930     
A2BQST	CHAR	1		Stato record                                                

"----------------------------------------"


"----------------------------------------"

-- PLEX Aree Cross Docking    

EAABCD	Cd Magazzino				20
EATBCE   PLEX Area Cross Docking     A1
EASMV1   PLEX Descr Area Cross Doc   A1
EASUTY   PLEX Tipo Area Cross Doc     
EAWVBR   PLEX Capacità Area MC       0
EAWWBR   PLEX Capacità Area Palett   20
EASQTY   PLEX Stato Area Cross Doc    
EAAKVN   Utente Ultimo Aggiornam     NSSMARCELL
EAA5DT   Dt Ultimo Aggiornamento     1170207
EABQST   Stato record

SELECT * 
FROM MLD_BE101.UPEAREP


"----------------------------------------"

-- PLEX Missioni CD Anomalie  

EFSFCQ  Cd Filiale Missione TRF		20
EFB7AN  Anno Movim TRF               2017
EFG3PG  Progr Movim TRF              475
EFCMPG  nr Riga - (línea) 2                    1
EFVDSX  Tp Anonalia TRF              3
EFADCE  Cd Anomalia TRF              CA
EFB5UX  Numero Segnacollo ATR        MLDVS2017200010001
EFJSCD								
EFAAAN	                            0
EFAAPG                               0
EFBHVN  Utente Ultima Lettura        MLDXDOC85 
EFNRDT  Data Ultima Lettura          1170301   
EFAYTM  Ora Ultima Lettura           85514	

SELECT * 
FROM MLD_BE101X.UPEFREP

"----------------------------------------"

-- Missioni Cross Docking Elementi.

EGSFCQ  Cd Filiale Missione TRF			11
EGB7AN  Anno Missione TRF                2017
EGG3PG  Progr Missione TRF               466
EGS7TY  Tipo Elemento CD                 S
EGM3CR  Cd Filiale Elemento CD           11
EGGEAN  Anno Elemento CD                 2017
EGMQPG  Progr Elemento CD                100022
EGHNQR  Qta Colli Arrivati               8
EGUDTY  Tipo etichette applicate         S

SELECT * 
FROM MLD_BE101.UPEGREP

"----------------------------------------"

-- MGB2REP	Tipi - Tipo Allocazione Prop (S8 S1577834346 S1578096965)

-- ABCD	Cd Magazzino							11
-- APCD	Cd Cliente                              001011
-- AZSG	Progr Tipo Allocazione Proposta         1
-- WSSS	Tipo Allocazione                        A1
-- ZINB	Capacità Allocazione                    0
-- AMQR	Scorta Minima Area  Picking             0
-- AJCD	Cd Categoria Articolo
-- JWSX	Creazione Automatica

SELECT * 
FROM MLD_BE101X.MGB2REP

"----------------------------------------"

-- UAKEREP	Tipi - Tipo assicurazione.Ph (S8 S1577289197 S1577446583)

KERJCD	Cd Tp assicurazione
KEQQA9	Descr Tp Assicurazione
KEDGCD	Cd Filiale Ult Aggiornam
KEABVN	Utente
KEA5DT	Dt Ultimo Aggiornamento
KEBQST	Stato record

SELECT *
FROM MLD_BE101X.UBLVREP

KERJCD	KEQQA9			KEDGCD	    KEABVN	    KEA5DT	KEBQST
FI		Furto Incendio				NSSMAURIZI	1120608
KA		Kasco					01	NSSMAURIZI	1120608
VE		Vettoriale					NSSMAURIZI	1120308
PC		Per Conto ad Valorem		NSSMAURIZI	1120608

"----------------------------------------"

-- UBLVREP	Tipi - Tipo Ricev-Restit Vin (S8 S1577288708 S1577446583)

-- LVPGCC	Tp Ricev-Rest Vincolo
-- LVJZST	Tp Ricevim-Restituz
-- LVPDTX	Descr Ricevimento Vincolo
-- LVTYSS	Flag Restituzion Bloccata
-- LVT3SS	Stato rec Tipi - Tipo ric-res

SELECT *
FROM MLD_BE101X.UBLVREP

LVPGCC	LVJZST	LVPDTX						LVTYSS	LVT3SS
C		C		Contado
A		A		Cheque/Pagaré
B		B		TRANSFERENCIA						A
X		X		CERRADA-NO CONTABILIDAD				A
.		X		.CERRADA-NO CONTABILIDAD			A
M		M		Cheque Cliente
W		A		.									A
E		C		.									A
P		X		Pagaré
L		X		Letra aceptada o avalada

"----------------------------------------"

SELECT * 
FROM MLD_BE101X.UBL6REP
WHERE L6CWCD = 'TE'


UBL6REP Linee per Filiale          

L6ANCA	CHAR	8		Cd Partenza Arrivo				ES01	ES02
L6AHCD	CHAR	2		Cd filiale             			25  	25
L6CWCD	CHAR	2		Cd servizio            			TE  	TE
L6CMPG	DECIMAL	3	0	nr riga 2              			1   	1
L6AABD	CHAR	4		Cd linea               			BCN1	BCN1
L6MWCR	CHAR	4		Cd linea Ritiro              		
L6FECR	CHAR	4		Cd linea Finale              		
L6B0TX	CHAR	6		Cd fornitore           		
L6IBCD	CHAR	6		Cd Cliente  Committente         		
L6OCCD	CHAR	6		Cd Cliente  Mittente Remitente 		
L6GSCD	CHAR	6		Cd Cliente  Destinatario        		
L6T5QT	DECIMAL	10	3	Limite Peso KG             		0   	0
L6HKQR	DECIMAL	10	3	Limite Peso Medio          		0   	0
L6HIQR	DECIMAL	8	3	Limite Metri Cubi          		0   	0
L6HJQR	DECIMAL	7	0	Limite Qta Colli           		0   	0
L6CAVB	DECIMAL	13	2	Limite Valore Merce        		0   	0
L6EBST	CHAR	1		Flag messa  in consegna

SELECT * 
FROM MLD_BE101X.UBL6REP
WHERE L6CWCD = 'TE'

WHERE L6AHCD = 11

SELECT * 
FROM MLD_BE101X.UBL6REP
WHERE L6ANCA = 'AD01'

"----------------------------------------"

SELECT DISTINCT DUA8ST
FROM MLD_BE101.UUDUREP
WHERE DUJSCD = 20
  AND DUAAAN = 2017
  AND DUAAPG = 103251

DUJSCD	DUAAAN	DUAAPG	DUB6NB	DUGJST	DUA8ST	DUAMDT	DUHWNB	DUAABD	DUPQCD	DUACAN	DUBUPG	DUP0NB	DUBAST	DUPMCD	DUBGTX	DUETST	DUABCD	DUA9ST	DUBPST	DUCWCD	DUAHCD	DUEEDT	DUKMNB	DULRST	DUN4ST	DUN9ST	DUOKCD	DUAZAN	DUBEPG	DUKNNB	DUKONB	DUKPNB	DUEHCD	DUDBSS	DUGPDT	DUD7SS	DUD8SS	DUVLCD	DUCJCC	DUCKCC	DUCLCC	DUUDCD	DURATX	DUCMCC	DUCNCC	DUE3TX	DUCOCC	DUCPCC	DUY9TX	DUU4CD	DUCQCC	DUCRCC	DUA0CC	DUU2CD	DUU3CD	DUB0TX
20		2017	103251	1		Z		R		1170411	0		V1B		20		2017	7435	1					R0	0									E	TE		20		1170412	0		S		N						0		0		1		5		0				WB		1170412			ST
20		2017	103251	2		P		C		1170411	0		BE01	20		2017	7354	1					C0	5		S							E	TE		20		1170412	1800	S		N						0		0		0		1		0				WB		1170421			ST																																				1170423


-- UUDUREP	QPGMR	P	57	196	Sped Movim. t (S8 S1577290379 S1577446583)



-- DUA8ST
	
	A	Tercero Asignado
	C	Corresponsal
	D	Destinatario
	L	Unidad de nuestra línea
	M	Remitente
	N	Nuestro almacen
	O	Corresponsal Nacional
	R	Recogida
	S	Nuestra unidad
	T	Terceros
	Z	Llegada Nacional


DUPMCD
R0, C0, NS, D2, C1, ST, R1, A1, SC, R3, R4, R5, R6, C3, C2, CO, R9, RC, CC, RR, A2, R7, CE, A3, E3, E1, C4, E2, X1, X2, X4, X5,

1	DUJSCD	Cd Filiale Spedizione			CHAR	2				
2	DUAAAN	Anno Spedizione                 NUMERIC	4	0	
3	DUAAPG	Progr Spedizione                DECIMAL	6	0	
4	DUB6NB	Progr Movim Sped                DECIMAL	5	0	
5	DUGJST	Tp Movim Sped                   CHAR	1		
6	DUA8ST	Flag merce Arr-Par Tramit       CHAR	1		
7	DUAMDT	Dt movimentazione               DECIMAL	7	0	
8	DUHWNB	Ora movimentazione              DECIMAL	4	0	
9	DUAABD	Cd linea                        CHAR	4		
10	DUPQCD	Cd Filiale Viaggio              CHAR	2		
11	DUACAN	Anno borderò - (manifiesto)     NUMERIC	4	0	
12	DUBUPG	Progr borderò - (manifiesto)    DECIMAL	6	0	
13	DUP0NB	Progr Concarico                 DECIMAL	3	0	
14	DUBAST	Flag Disposizioni Sped          CHAR	1		
15	DUPMCD	Cd esito                        CHAR	2		
16	DUBGTX	Priorità Evasione Consegn       NUMERIC	1	0	
17	DUETST	Flag merce bloccata             CHAR	1		
18	DUABCD	Cd Magazzino                    CHAR	2		
19	DUA9ST	Flag Preavviso Arr Merce        CHAR	1		
20	DUBPST	Settore di traffico             CHAR	1		
21	DUCWCD	Cd servizio                     CHAR	2		
22	DUAHCD	Cd filiale                      CHAR	2		
23	DUEEDT	Dt effettiva                    DECIMAL	7	0	
24	DUKMNB	Ora effettiva                   DECIMAL	4	0	
25	DULRST	Flag calcolo Costi              CHAR	1		
26	DUN4ST	Flag Sped Movim 1               CHAR	1		
27	DUN9ST	Flag Movim Tassato              CHAR	1		
28	DUOKCD	Cd filiale posizione            CHAR	2		
29	DUAZAN	Anno Posizione                  NUMERIC	4	0	
30	DUBEPG	Progr Posizione                 DECIMAL	6	0	
31	DUKNNB	Sequenza Linea                  DECIMAL	3	0	
32	DUKONB	Sequenza Località               DECIMAL	3	0	
33	DUKPNB	Seqenza Indirizzo               DECIMAL	4	0	
34	DUEHCD	Cd Raggrupp Località            CHAR	8		
35	DUDBSS	Tipo pratica                    CHAR	2		
36	DUGPDT	Data Sdoganamento               DECIMAL	7	0	
37	DUD7SS	Flag Selez per Groupage         CHAR	1		
38	DUD8SS	Tipo Trasporto                  CHAR	2		
39	DUVLCD	Codice Aereoporto               CHAR	3		
40	DUCJCC	Deconsolidazione Codice A       CHAR	3		
41	DUCKCC	Destino Codice Aereoporto       CHAR	3		
42	DUCLCC	APT 1° Routing Codice Aer       CHAR	3		
43	DUUDCD	Codice Compagnia                CHAR	3		
44	DURATX	Nr Volo 1° Routing              CHAR	10		
45	DUCMCC	APT 2° Routing Codice Aer       CHAR	3		
46	DUCNCC	Comp 2° Routing Cd  Compag      CHAR	3		
47	DUE3TX	Nr Volo 2° Routing              CHAR	10		
48	DUCOCC	APT 3° Routing Codice Aer       CHAR	3		
49	DUCPCC	Comp 3° Routing Cd  Compag      CHAR	3		
50	DUY9TX	Nr Volo 3° Routing              CHAR	10		
51	DUU4CD	Codice Porto                    CHAR	6		
52	DUCQCC	Porto di Sbarco Codice Po       CHAR	6		
53	DUCRCC	Porto di Decons Cd  Porto       CHAR	6		
54	DUA0CC	Codice Compagnia Navig          CHAR	6		
55	DUU2CD	Codice Nave                     CHAR	6		
56	DUU3CD	Nr Viaggio Nave                 CHAR	8		
57	DUB0TX	Cd fornitore                    CHAR	6		



CREATE TABLE edis.edicli_nss_uudurep (
    dujscd character varying(7) NOT NULL,
    duaaan integer NOT NULL,
    duaapg integer NOT NULL,
    dub6nb integer NOT NULL,
    dugjst character varying(6),
    dua8st character varying(6),
    duamdt integer,
    duhwnb integer,
    duaabd character varying(9),
    dupqcd character varying(7),
    duacan integer,
    dubupg integer,
    dup0nb integer,
    dubast character varying(6),
    dupmcd character varying(7),
    dubgtx integer,
    duetst character varying(6),
    duabcd character varying(7),
    dua9st character varying(6),
    dubpst character varying(6),
    ducwcd character varying(7),
    duahcd character varying(7),
    dueedt integer,
    dukmnb integer,
    dulrst character varying(6),
    dun4st character varying(6),
    dun9st character varying(6),
    duokcd character varying(7),
    duazan integer,
    dubepg integer,
    duknnb integer,
    dukonb integer,
    dukpnb integer,
    duehcd character varying(13),
    dudbss character varying(7),
    dugpdt integer,
    dud7ss character varying(6),
    dud8ss character varying(7),
    duvlcd character varying(8),
    ducjcc character varying(8),
    duckcc character varying(8),
    duclcc character varying(8),
    duudcd character varying(8),
    duratx character varying(15),
    ducmcc character varying(8),
    ducncc character varying(8),
    due3tx character varying(15),
    ducocc character varying(8),
    ducpcc character varying(8),
    duy9tx character varying(15),
    duu4cd character varying(11),
    ducqcc character varying(11),
    ducrcc character varying(11),
    dua0cc character varying(11),
    duu2cd character varying(11),
    duu3cd character varying(13),
    dub0tx character varying(11),
    codigo_intercambio_edi character varying(100) NOT NULL,
    file_origen character varying(100) NOT NULL,
    nro_expedicion_incremental integer NOT NULL
);
"----------------------------------------"

SELECT *
FROM MLD_BE101.UGC3REP
WHERE C3AHCD = 20
  AND C3AAAN = 2017
  AND C3AAPG = 103251

-- UGC3REP	Sped Segnacolli - Etiquetas - una etiqueta por cada bulto de una expedición

-- C3AHCD	CHAR	2		Cd filiale				20						
-- C3AAAN	NUMERIC	4	0	Anno Spedizione         2017					
-- C3AAPG	DECIMAL	6	0	Progr Spedizione        103251					
-- C3HUTX	CHAR	25		Numero Segnacollo       MLDVS2017103251001		
-- C3X5SS	CHAR	1		Tipo segnacollo         I						
-- C3EESX	CHAR	1		Segnacollo Stampato     S						
-- C3BQCD	CHAR	2		Cd Aspetto dei Beni     						
-- C3ABCD	CHAR	2		Cd Magazzino            						
-- C3CDAL	CHAR	10		Cd allocazione          						
-- C3AEST	CHAR	1		UM dim.                 C						
-- C3AVNB	DECIMAL	7	2	Lunghezza               0						
-- C3AUNB	DECIMAL	7	2	Larghezza               0						
-- C3AWNB	DECIMAL	7	2	Altezza                 0						
-- C3ARQT	DECIMAL	8	3	Metri cubi              0						
-- C3BBNB	DECIMAL	10	3	Peso lordo              0						
-- C3U9SX	CHAR	1		Merce Sovrapponibile    						
-- C3SNV1	CHAR	25		Numero Segnacollo UDC   						
-- C3GRNB	DECIMAL	2	0	Progr Merce             0						
-- C3BMNB	DECIMAL	3	0	Nr riga                 0						
-- C3ABVN	CHAR	10		Utente                  MLDXDOC82				
-- C3A5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento 1170412					
-- C3EDSX	CHAR	1		Stato Record Segnacollo 						

CREATE TABLE edis_desarrollo.edicli_nss_ugc3rep (
    c3ahcd character varying(7) NOT NULL,
    c3aaan integer NOT NULL,
    c3aapg integer,
    c3hutx_pre character varying(30) NOT NULL,
    c3hutx_post character varying(30) NOT NULL,
    c3x5ss character varying(6),
    c3eesx character varying(6),
    c3bqcd character varying(7),
    c3abcd character varying(7),
    c3cdal character varying(15),
    c3aest character varying(6),
    c3avnb numeric(7,2),
    c3aunb numeric(7,2),
    c3awnb numeric(7,2),
    c3arqt numeric(8,3),
    c3bbnb numeric(10,3),
    c3u9sx character varying(6),
    c3snv1 character varying(30),
    c3grnb integer,
    c3bmnb integer,
    c3abvn character varying(15),
    c3a5dt integer,
    c3edsx character varying(6),
    codigo_intercambio_edi character varying(100) NOT NULL,
    file_origen character varying(100) NOT NULL,
    nro_expedicion_incremental integer NOT NULL
);




"----------------------------------------"


SELECT *
FROM MLD_BE101.UUCKREP
WHERE CKAHCD = 20
AND CKAAAN = 2017
AND CKAAPG = 103251

-- UUCKREP	Sped Merce Bultos por expedicion

-- CKAHCD	CHAR	2			20					Cd filiale
-- CKAAAN	NUMERIC	4	0		2017				Anno Spedizione
-- CKAAPG	DECIMAL	6	0		103251				Progr Spedizione
-- CKGRNB	DECIMAL	2	0		1					Progr Merce
-- CKBECD	CHAR	4								Cd Merceologica
-- CKATTX	CHAR	35			ENVASES				Descr Merceologica
-- CKBQCD	CHAR	2			PL					Cd Aspetto dei Beni
-- CKAQQT	DECIMAL	7	0		4					Qta colli
-- CKASNB	DECIMAL	12	5		0					Peso netto
-- CKBBNB	DECIMAL	10	3		727.000				Peso lordo
-- CKARQT	DECIMAL	8	3		6.144				Metri cubi
-- CKASQT	DECIMAL	7	2		0					Metri Lineari
-- CKZVCD	CHAR	1								Cd tp paletta
-- CKA1QT	DECIMAL	3	0		0					Qta palette
-- CKESCD	CHAR	2			PL					Cd UM ulteriore
-- CKAVQT	DECIMAL	8	3		4.000				Qta UM Ulteriore
-- CKAQCD	CHAR	4			EUR					Cd Divisa
-- CKA2VA	DECIMAL	13	2		1.00				Imp Valore Merce
-- CKA5ST	CHAR	1								Merce non Assicurabile
-- CKA1VA	DECIMAL	13	2		0					Imp Diritti Liquidati
-- CKAA6T	CHAR	10								Nr Entrata Magazzino
-- CKBONB	CHAR	20			BOUDEWIJN SEAPARK	Marche e numeri
-- CKIFNB	DECIMAL	8	0		0					Segnacollo iniziale
-- CKIGNB	DECIMAL	8	0		0					Segnacollo finale
-- CKOTCD	CHAR	2								Cd Filiale Rit-Cons
-- CKA9AN	NUMERIC	4	0		0					Anno Spedizione Rit-Cons
-- CKBOPG	DECIMAL	6	0		0					Progr Spedizione Rit-Cons
-- CKB7NB	DECIMAL	2	0		0					Progr Rit-Cons
-- CKQBCD	CHAR	2								Cd Assoggett Merce
-- CKPXNB	DECIMAL	10	3		0					Peso Lordo per Manifesto
-- CKIYQT	DECIMAL	10	3		0					Peso da tassare
-- CKV3TX	CHAR	15								Numero Allibramento
-- CKGZDT	DECIMAL	7	0		0					Data Allibramento
-- CKV4TX	CHAR	15								Ubicazione Magaz Doganale
-- CKHSQR	DECIMAL	7	0		0					Qta Colli Dichiarati
-- CKHTQR	DECIMAL	12	5		0					Peso Netto Dichiarato
-- CKHUQR	DECIMAL	10	3		0					Peso Lordo Dichiarato
-- CKHVQR	DECIMAL	8	3		0					Metri Cubi Dichiarati
-- CKHWQR	DECIMAL	7	2		0					Metri Lineari Dichiarati
-- CKHXQR	DECIMAL	8	3		0					Qta UM Ult Dichiarata
-- CKHYQR	DECIMAL	7	0		0					Qta Colli Rilevati
-- CKHZQR	DECIMAL	12	5		0					Peso Netto Rilevato
-- CKH0QR	DECIMAL	10	3		0					Peso Lordo Rilevato
-- CKH1QR	DECIMAL	8	3		0					Metri Cubi Rilevati
-- CKH2QR	DECIMAL	7	2		0					Metri Lineari Rilevati
-- CKH3QR	DECIMAL	8	3		0					Qta UM Ult Rilevata

"----------------------------------------"

SELECT *
FROM MLD_BE101.UPDFREP
WHERE BAJSCD = 20
  AND BAAAAN = 2017
  AND BAAAPG = 100355


-- UPDFREP Sped Merce ADR.

-- BAJSCD	CHAR	2		Cd Filiale Spedizione							20
-- BAAAAN	NUMERIC	4	0	Anno Spedizione                                 2017
-- BAAAPG	DECIMAL	6	0	Progr Spedizione                                100355
-- BAGRNB	DECIMAL	2	0	Progr Merce                                     1
-- BAWMBR	DECIMAL	3	0	ADR Riga Merce                                  1
-- BASPCE	CHAR	10		ADR ID                                          2013126304
-- BAMQCE	CHAR	2		Cd Lingua (ISO 639-1)                           es
-- BAGZQR	DECIMAL	7	0	ADR Qta Colli                                   2
-- BAG0QR	DECIMAL	10	3	ADR Peso Lordo KG                               0
-- BAG1QR	DECIMAL	10	3	ADR Litri                                       28.000
-- BASTCE	CHAR	6		ADR Cd Tipo Imballo                             0A2
-- BAG3QR	DECIMAL	10	3	ADR Peso Virtuale                               28.000
-- BAQ1TY	CHAR	1		ADR Inserito Peso   Virtuale                    
-- BAQ2TY	CHAR	1		ADR In Soluzione                                
-- BAQ3TY	CHAR	1		ADR Pericolo Ambientale                         
-- BAQ4TY	CHAR	1		ADR Quantità Limitata                           
-- BAG2QR	DECIMAL	10	3	ADR Peso Lordo per  Limited Qty                 0
-- BAQ5TY	CHAR	1		ADR Security                                    
-- BARRV1	CHAR	200		ADR Denominazione Tecnica ITA                   
-- BARSV1	CHAR	200		ADR Denominazione Tecnica ENG     

              
"----------------------------------------"

SELECT *
FROM MLD_BE101.UUCSREP
WHERE CSAHCD = 20
  AND CSAAAN = 2017
  AND CSAAPG = 100355

-- UUCSREP	Sped Note. ta (S8 S1577290614 S1577446583)	Comentarios de las expediciones

-- CSAHCD	CHAR	2		Cd filiale				20		
-- CSAAAN	NUMERIC	4	0	Anno Spedizione			2017		
-- CSAAPG	DECIMAL	6	0	Progr Spedizione		100355		
-- CSBEST	CHAR	1		Tp note					H	
-- CSBMNB	DECIMAL	3	0	Nr riga					1	
-- CSNOSP	CHAR	60		Note spedizione			RECOGER HOY POR LA TARDE	
              
"----------------------------------------"


SELECT COUNT(*)
FROM MLD_BE101.UUCLREP
WHERE CLAHCD = 20
  AND CLAAAN = 2017
  AND CLAAPG = 103251

SELECT DISTINCT CLA6ST
FROM MLD_BE101.UUCLREP

-- MM	Remitente
-- DM	Destinatario
-- N1
-- N2
-- MS

-- UUCLREP	Sped Mitt-Dest Ulteri (S8 S1577290650 S1577446583) - DireccioneS de entrega

CLAHCD	CHAR	2		Cd filiale				20											
CLAAAN	NUMERIC	4	0	Anno Spedizione         2017                                        
CLAAPG	DECIMAL	6	0	Progr Spedizione        103251                                      
CLA6ST	CHAR	2		Tp anagrafica           MM                                          
CLAPCD	CHAR	6		Cd Cliente                                                          
CLBBRA	CHAR	35		Rag Soc                 AZA LOGISTICS									
CLARRA	CHAR	35		Ult Rag Soc                                                         
CLAHIN	CHAR	35		Indirizzo               P.I.JUAN CARLOS I C/HENRI FORD S/N          
CLADCA	CHAR	8		CAP1                    46440                                       
CLLOCA	CHAR	25		Località                ALMUSSAFES                                  
CLAEPR	CHAR	2		Provincia                                                           
CLAFCD	CHAR	3		Cd nazione              ES                                          
CLATCD	CHAR	16		Cd fiscale                                                          
CLALNB	CHAR	11		Partita IVA                                                         
CLAKNB	CHAR	20		Telefono                902011031                                   
CLADNB	CHAR	20		Telefax                                                             
CLA6TX	CHAR	20		Telex                   ES000GJXesV  VC                             
CLEYRA	CHAR	35		Pers Contat Mittente Remitente                                     
CLJJTX	CHAR	20		Nr riferimenti                                                      
CLC3DT	DECIMAL	7	0	Dt Riferimenti          0                                           


-- UUCLREP	Sped Mitt-Dest Ulteri (S8 S1577290650 S1577446583) - Direccione de entrega

CREATE TABLE edis_desarrollo.edicli_nss_uuclrep (
    clahcd character varying(7) NOT NULL,
    claaan integer NOT NULL,
    claapg integer NOT NULL,
    cla6st character varying(7) NOT NULL,
    clapcd character varying(11),
    clbbra character varying(40),
    clarra character varying(40),
    clahin character varying(40),
    cladca character varying(13),
    clloca character varying(30),
    claepr character varying(7),
    clafcd character varying(8),
    clatcd character varying(21),
    clalnb character varying(16),
    claknb character varying(25),
    cladnb character varying(25),
    cla6tx character varying(25),
    cleyra character varying(40),
    cljjtx character varying(25),
    clc3dt integer,
    codigo_intercambio_edi character varying(100) NOT NULL,
    file_origen character varying(100) NOT NULL,
    nro_expedicion_incremental integer NOT NULL
);


"----------------------------------------"

SELECT * 
FROM MLD_BE101.AABYCPP
WHERE BYAHCD = 20
  AND BYAAAN = 2017
  AND BYAAPG = 100003


-- AABYCPP	Sped Orari.	Horarios

-- BYAHCD	CHAR	2		Cd Filiale Spedizione			  20
-- BYAAAN	NUMERIC	4	0	Anno Spedizione                   2017
-- BYAAPG	DECIMAL	6	0	Progr Spedizione                  100003
-- BYLRTY	CHAR	1		Tipo Indirizzo Orario             R
-- BYPPNB	DECIMAL	4	0	Ora-Min Apertura Mattina          830
-- BYPQNB	DECIMAL	4	0	Ora-Min Chiusura Mattina          1300
-- BYPRNB	DECIMAL	4	0	Ora-Min Apertura Pomerigg         1500
-- BYPSNB	DECIMAL	4	0	Ora-Min Chiusura Pomerigg         1700
-- BYARNB	CHAR	3		GG Chiusura nella Settim                
-- BYDRSS	CHAR	1		Mattino-Pomeriggio                        
-- BYD5SS	CHAR	3		GG Chiusura nella   Settim2               
-- BYD4SS	CHAR	1		Mattino-Pomeriggio 2                      
-- BYPTNB	DECIMAL	4	0	GG chiusura nell'anno 1           0
-- BYPUNB	DECIMAL	4	0	GG chiusura nell'anno 2           0
-- BYPVNB	DECIMAL	4	0	GG chiusura nell'anno 3           0
-- BYPWNB	DECIMAL	4	0	GG chiusura nell'anno 4           0
-- BYLGUX	CHAR	60		Note Indirizzi                            
-- BYW2TX	CHAR	60		Note Indirizzi 2     
                     
"----------------------------------------"

SELECT * 
FROM MLD_BE101.UUDSREP
WHERE DSAHCD = 20
  AND DSAAAN = 2017
  AND DSAAPG = 387

-- DSAHCD	DSAAAN	DSAAPG	DSD7PG	DSI0SS	DSAAAE				DSBFDT	DSB0CC	DSASDT	DSGRNB	DSD8PG	DSAPCD	DSI1SS	DSI2SS	DSD8SS	DSBPST
-- 		20	2017	387		1		T		REF: SS1529			0				0		0		0		003713					MA		E
-- 		20	2017	387		2		T		BL  572111943		0				0		0		0		003713					MA		E
-- 		20	2017	387		3		M		19ES00461110867302	0		DUA		0		0		0		004516	N				MA		E
-- 		20	2017	387		4		M		19ES00461110867297	0		DUA		0		0		0		004516	N				MA		E
-- 		20	2017	387		5		M		321077				0		TARIC	0		0		0		004516	N				MA		E
-- 		20	2017	387		6		M		321077				0		TARIC	0		0		0		004516	N				MA		E


-- UUDSREP	Sped Riferimenti.Phys (S8 S1577290394 S1577494800) Documentos asociados a expedicion - OJO, ES FULL - Referencias

DSAHCD	CHAR	2		Cd Filiale Spedizione	20
DSAAAN	NUMERIC	4	0	Anno Spedizione         2017
DSAAPG	DECIMAL	6	0	Progr Spedizione        387
DSD7PG	DECIMAL	3	0	Progr Riferimento       1
DSI0SS	CHAR	1		Tipo riferimento        T
DSAAAE	CHAR	20		Nr Riferimento          REF: SS1529
DSBFDT	DECIMAL	7	0	Dt Riferimento          0
DSB0CC	CHAR	6		Codice Documento        
DSASDT	DECIMAL	7	0	Dt arrivo documento     0
DSGRNB	DECIMAL	2	0	Progr Merce             0
DSD8PG	DECIMAL	3	0	Progr Mare Container    0
DSAPCD	CHAR	6		Cd Cliente              003713
DSI1SS	CHAR	1		Flag Rifer da Stampare  
DSI2SS	CHAR	1		Documento Rimesso       
DSD8SS	CHAR	2		Tipo Trasporto          MA
DSBPST	CHAR	1		Settore di traffico     E


                     
"----------------------------------------"

-- UPEVREP	Sped Contatti.	Contactos especificos expedicion

SELECT *
FROM MLD_BE101.UPEVREP
WHERE EVJSCD = 20
  AND EVAAAN = 2017
  AND EVAAPG = 303570

EVJSCD	CHAR	2		Cd Filiale Spedizione						20
EVAAAN	NUMERIC	4	0	Anno Spedizione                             2017
EVAAPG	DECIMAL	6	0	Progr Spedizione                            303570
EVM9PG	DECIMAL	3	0	Nr Riga Contatto Spedizione                 1
EVKPSS	CHAR	2		Tipo Soggetto                               D
EVH9SS	CHAR	2		Titolo                                      
EVL7TX	CHAR	20		Nome                                        .
EVL6TX	CHAR	20		Cognome                                     
EVAAEM	CHAR	128		Indirizzo E-Mail                            
EVAKNB	CHAR	20		Telefono                                    964506310
EVABAA	CHAR	20		Mobile                                      
EVADNB	CHAR	20		Telefax                                     
EVAPCD	CHAR	6		Cd Cliente                                  
EVK1PG	DECIMAL	3	0	Nr Riga Contatto                            0
EVZITY	CHAR	1		Invio Eventi WorkFlow via Mail              
EVZJTY	CHAR	1		Invio Eventi WorkFlow via SMS               
EVZKTY	CHAR	1		Sped Contatti Flag  01                      
EVZLTY	CHAR	1		Sped Contatti Flag  02                      
EVZMTY	CHAR	1		Sped Contatti Flag  03                      
EVZNTY	CHAR	1		Sped Contatti Flag  04                      
EVZOTY	CHAR	1		Sped Contatti Flag  05                      
EVZPTY	CHAR	1		Sped Contatti Flag  06                      
EVZQTY	CHAR	1		Sped Contatti Flag  07                      
EVZSTY	CHAR	1		Sped Contatti Flag  08                      
EVZTTY	CHAR	1		Sped Contatti Flag  09                      
EVZUTY	CHAR	1		Sped Contatti Flag  10                      
EVAKVN	CHAR	10		Utente Ultimo Aggiornamento                 MLDJGARCIA
EVA5DT	DECIMAL	7	0	Data Ultimo Aggiornamento	                1171124

"----------------------------------------"

SELECT *
FROM MLD_BE101.UPAMREP
WHERE OP5FBA = 20
  AND OP57AA = 2017
  AND OP57BA = 10938
  
  
-- UPAMREP	QPGMR	P	13	46	WorkFlow - Sped -- Tracking mov expediciones        

-- OP5FBA	CHAR	2		Cd filiale WorkFlow						20
-- OP57AA	NUMERIC	4	0	Anno WorkFlow                           2017
-- OP57BA	DECIMAL	7	0	Progr WorkFlow                          10938
-- OP4U3A	CHAR	6		Codice WorkFlow                         STDEXP
-- HCCQ		CHAR	2		Cd filiale Ritiro Work                  
-- BEAN		NUMERIC	4	0	Anno Ritiro Work                        0
-- B1PG		DECIMAL	6	0	Progr Ritiro Work                       0
-- JSCD		CHAR	2		Cd Filiale Spedizine Work               20
-- AAAN		NUMERIC	4	0	Anno Spedizione Work                    2017
-- AAPG		DECIMAL	6	0	Progr Spedizione Work                   100000
-- KYCQ		CHAR	2		Cd Filiale Entrata Work                 
-- C4AN		NUMERIC	4	0	Anno Entrata Magazino Wor               0
-- HKPG		DECIMAL	6	0	Progr Entrata Mag. Work                 0


"----------------------------------------"

SELECT *
FROM MLD_BE101.UPANREP
WHERE OP5FBA = 20
  AND OP57AA = 2017
  AND OP57BA = 10938
  
	OP5FBA	OP57AA	OP57BA	OP4XSA	OP5ZKA				OP5ZLA		OP57HA		OP57IA		OP57JA		OP57KA	OP5ZMA	R7CQ	OLCR	GGAN	M3PG	OMCR	GHAN	M4PG	OPDRSA	OPDRTA	OPDRUA	OPDRVA	OPDRWA	OPDRXA	OPDRYA	OPDRZA	OPDS0A	OPDS1A
	20		2017	10938	10		2017-03-03	0		0001-01-01	0			0001-01-01	0			S		SPD				0		0				0		0
	20		2017	10938	20		2017-03-06	0		0001-01-01	0			0001-01-01	0			S		PKGSPD	20		2017	3				0		0
	20		2017	10938	40		2017-03-14	0		0001-01-01	0			0001-01-01	0			S		DPTINT	20		2017	636				0		0
  
-- UPANREP	WorkFlow - Sped Status.Phys (S8 S1577477726 S_202)	EDIs???

-- OP5FBA	CHAR	2		Cd filiale WorkFlow
-- OP57AA	NUMERIC	4	0	Anno WorkFlow
-- OP57BA	DECIMAL	7	0	Progr WorkFlow
-- OP4XSA	DECIMAL	3	0	Sequenza Status
-- OP5ZKA	DATE	4		Data Scadenza Status
-- OP5ZLA	DECIMAL	6	0	Ora Scadenza Status
-- OP57HA	DATE	4		Data Primo Allert
-- OP57IA	DECIMAL	6	0	Ora Primo Allert
-- OP57JA	DATE	4		Data Secondo Allert
-- OP57KA	DECIMAL	6	0	Ora Secondo Allert
-- OP5ZMA	CHAR	1		Status Attuale
-- R7CQ		CHAR	6		Codice Status
-- OLCR		CHAR	2		Cd Filiale Bordero  Partenza
-- GGAN		NUMERIC	4	0	Anno Bordero Partenza
-- M3PG		DECIMAL	6	0	Progr Bordero Partenza
-- OMCR		CHAR	2		Cd Filiale Bordero  Arrivo
-- GHAN		NUMERIC	4	0	Anno Bordero Arrivo
-- M4PG		DECIMAL	6	0	Progr Bordero Arrivo
-- OPDRSA	CHAR	1		Flag WorkFlow - Sped Status 01
-- OPDRTA	CHAR	1		Flag WorkFlow - Sped Status 02
-- OPDRUA	CHAR	1		Flag WorkFlow - Sped Status 03
-- OPDRVA	CHAR	1		Flag WorkFlow - Sped Status 04
-- OPDRWA	CHAR	1		Flag WorkFlow - Sped Status 05
-- OPDRXA	CHAR	1		Flag WorkFlow - Sped Status 06
-- OPDRYA	CHAR	1		Flag WorkFlow - Sped Status 07
-- OPDRZA	CHAR	1		Flag WorkFlow - Sped Status 08
-- OPDS0A	CHAR	1		Flag WorkFlow - Sped Status 09
-- OPDS1A	CHAR	1		Flag WorkFlow - Sped Status 10

"----------------------------------------"

SELECT *
FROM MLD_BE101.UPAOREP
WHERE OP5FBA = 20
  AND OP57AA = 2017
  AND OP57BA = 10938

--OP5FBA	OP57AA	OP57BA	OP4XSA	OP50MA	OP4YIA	OP4U3A	R7CQ	OPD1QA	H6CQ	KPSS	APCD	OP57CA		OP57DA	OP57EA	OP57FA		OP57GA	OP57HA		OP57IA	OP57JA		OP57KA	OP57LA		OP57MA		JTSX	JUSX	JVSX	JYSX	D8SS	XNCC	R6CC	ELSX	ENSX	EOSX	OPD1RA	OPD1SA	OPD1TA	OPD1UA	OPD1VA	OPD1WA	OPD1XA	OPD1YA	OPD1ZA	OPD20A	OP57NA	OP57OA			A1CD	BLVA	WOBR	OP57PA		OP57QA	OP57RA		OP57SA		OP57TA	AKVN		A5DT	OP57UA	PMCD	QICD	ACAN	BUPG	P0NB	OP7YTA	OP7YUA	OP7YVA	OP7YWA	OP7YXA
--	20		2017	10938	10		1		10		STDEXP	SPD		1		S00001					2017-02-28	90023	C		0001-01-01	0		0001-01-01	0		0001-01-01	0		2017-02-28	90023				S						ST												S																						0001-01-01				0		0		MLDMRAMOS	ROAD	MLDMRAMOS	2017-02-28	90023	MLDMRAMOS	1170228	0						0		0		0						0		0		0
--	20		2017	10938	20		1		60		STDEXP	PKGSPD	4		SSU060					2017-03-01	120700	A		0001-01-01	0		0001-01-01	0		0001-01-01	0		2017-03-01	120700				S																		S																						0001-01-01				0		0		MLDXDOC82			MLDXDOC82	2017-03-01	120704	MLDXDOC82	1170301	0				20		2017	3		1						0		0		0
--	20		2017	10938	10		2		140		STDEXP	SPD		16		S00002					2017-03-02	184842	C		0001-01-01	0		0001-01-01	0		0001-01-01	0		2017-03-02	184842				S																		S																						0001-01-01				0		0		MLDMARTINE	TEST	MLDMARTINE	2017-03-02	184842	MLDMARTINE	1170302	0						0		0		0						0		0		0
--	20		2017	10938	20		2		40		STDEXP	PKGSPD	2		SSU040					2017-03-01	150000	A		0001-01-01	0		0001-01-01	0		0001-01-01	0		2017-03-01	150000				S																		S																						0001-01-01				0		0		MLDJGARCIA	TEST	MLDJGARCIA	2017-03-07	122922	MLDJGARCIA	1170307	0				20		2017	3		1						0		0		0
--	20		2017	10938	40		1		50		STDEXP	DPTINT	5		SSU140					2017-03-03	110000	C		0001-01-01	0		0001-01-01	0		0001-01-01	0		2017-03-03	110000				S																		S																						0001-01-01				0		0		MLDCORELLA	TEST	MLDCORELLA	2017-03-09	110008	MLDCORELLA	1170309	0				20		2017	636		2						0		0		0
--	20		2017	10938	40		2		60		STDEXP	DPTINT	8		SSU500					2017-03-09	110008	C		0001-01-01	0		0001-01-01	0		0001-01-01	0		2017-03-09	110008																						S																						0001-01-01				0		0		MLDCORELLA	TEST	MLDCORELLA	2017-03-09	110008	MLDCORELLA	1170309	0				20		2017	636		2						0		0		0
--	20		2017	10938	20		3		70		STDEXP	PKGSPD	5		SSU070					2017-05-12	115200	A		0001-01-01	0		0001-01-01	0		0001-01-01	0		2017-05-12	115200				S																		S																						0001-01-01				0		0		NSSMARCELL	TEST	NSSMARCELL	2017-05-12	115244	NSSMARCELL	1170512	0				20		2017	3		1						0		0		0


-- UPAOREP	WorkFlow - Sped Eventi

-- OP5FBA	CHAR	2		Cd filiale WorkFlow
-- OP57AA	NUMERIC	4	0	Anno WorkFlow
-- OP57BA	DECIMAL	7	0	Progr WorkFlow
-- OP4XSA	DECIMAL	3	0	Numero Sequenza Status
-- OP50MA	DECIMAL	3	0	Numero Riga Evento
-- OP4YIA	DECIMAL	3	0	Numero Sequenza Evento
-- OP4U3A	CHAR	6		Codice WorkFlow
-- R7CQ		CHAR	6		Codice Status
-- OPD1QA	DECIMAL	3	0	Numero Riga Evento Anag
-- H6CQ		CHAR	6		Codice Evento Work
-- KPSS		CHAR	2		Tipo Soggetto Work
-- APCD		CHAR	6		Cd Cliente Work
-- OP57CA	DATE	4		Data Inizio Evento
-- OP57DA	DECIMAL	6	0	Ora Inizio Evento
-- OP57EA	CHAR	1		Stato Evento
-- OP57FA	DATE	4		Data Scadenza Evento Work
-- OP57GA	DECIMAL	6	0	Ora Scadenza Evento Work
-- OP57HA	DATE	4		Data Primo Allert
-- OP57IA	DECIMAL	6	0	Ora Primo Allert
-- OP57JA	DATE	4		Data Secondo Allert
-- OP57KA	DECIMAL	6	0	Ora Secondo Allert
-- OP57LA	DATE	4		Data Fine Evento Work
-- OP57MA	DECIMAL	6	0	Ora Fine Evento  
-- JTSX		CHAR	1		Registrazione Doc. Work
-- JUSX		CHAR	1		Invio-Pubblic Info Work
-- JVSX		CHAR	1		Evento Bypassabile Work
-- JYSX		CHAR	1		Aggiornamento Automatico Utente
-- D8SS		CHAR	2		Tipo Trasporto Work
-- XNCC		CHAR	6		Cd Documento Work
-- R6CC		CHAR	10		ID Richiesta Work
-- ELSX		CHAR	1		Evento Fatturabile Work
-- ENSX		CHAR	1		Avviso Scadenza  Ev Work
-- EOSX		CHAR	1		Richiesta Data-Ora Work
-- OPD1RA	CHAR	1		Flag Workflow Sped Even01
-- OPD1SA	CHAR	1		Flag Workflow Sped Even02
-- OPD1TA	CHAR	1		Flag Workflow Sped Even03
-- OPD1UA	CHAR	1		Flag Workflow Sped Even04
-- OPD1VA	CHAR	1		Flag Workflow Sped Even05
-- OPD1WA	CHAR	1		Flag Workflow Sped Even06
-- OPD1XA	CHAR	1		Flag Workflow Sped Even07
-- OPD1YA	CHAR	1		Flag Workflow Sped Even08
-- OPD1ZA	CHAR	1		Flag Workflow Sped Even09
-- OPD20A	CHAR	1		Flag Workflow Sped Even10
-- OP57NA	CHAR	20		Numero Documento Evento
-- OP57OA	DATE	4		Data Documento   Evento
-- A1CD		CHAR	3		Cd voce fattura Work
-- BLVA		DECIMAL	13	2	Imp Voce Fattura Work
-- WOBR		DECIMAL	3	0	Qta Eventi
-- OP57PA	CHAR	10		Cd Utente Creazione Evento
-- OP57QA	CHAR	10		Codice WorkGroup Assegnato
-- OP57RA	CHAR	10		Cd Utente Assegnato
-- OP57SA	DATE	4		Data Presa in Carico Evento
-- OP57TA	DECIMAL	6	0	Ora Presa in Carico Evento
-- AKVN		CHAR	10		Utente Ultimo Agg. Work
-- A5DT		DECIMAL	7	0	Dt Ultimo Aggiorn. Work
-- OP57UA	DECIMAL	3	0	Numero Riga Evento  Sostituito
-- PMCD		CHAR	2		Cd esito Work
-- QICD		CHAR	2		Cd filiale borderò Work
-- ACAN		NUMERIC	4	0	Anno borderò Work
-- BUPG		DECIMAL	6	0	Progr Borderò Work
-- P0NB		DECIMAL	3	0	Progr Concarico Work
-- OP7YTA	CHAR	2		Tipo Relazione WorkFlow
-- OP7YUA	CHAR	2		Cd Filiale Relazione
-- OP7YVA	NUMERIC	4	0	Anno Relazione
-- OP7YWA	DECIMAL	6	0	Progressivo Relazione
-- OP7YXA	DECIMAL	5	0	Sotto Progressivo Relazione


CREATE TABLE edis_desarrollo.edicli_nss_upaorep (
    op5fba character varying(7) NOT NULL,
    op57aa integer NOT NULL,
    op57ba integer NOT NULL,
    op4xsa integer NOT NULL,
    op50ma integer NOT NULL,
    op4yia integer NOT NULL,
    op4u3a character varying(11),
    r7cq character varying(11),
    opd1qa integer,
    h6cq character varying(11),
    kpss character varying(7),
    apcd character varying(11),
    op57ca timestamp with time zone,
    op57da integer,
    op57ea character varying(6),
    op57fa timestamp with time zone,
    op57ga integer,
    op57ha timestamp with time zone,
    op57ia integer,
    op57ja timestamp with time zone,
    op57ka integer,
    op57la timestamp with time zone,
    op57ma integer,
    jtsx character varying(6),
    jusx character varying(6),
    jvsx character varying(6),
    jysx character varying(6),
    d8ss character varying(7),
    xncc character varying(11),
    r6cc character varying(15),
    elsx character varying(6),
    ensx character varying(6),
    eosx character varying(6),
    opd1ra character varying(6),
    opd1sa character varying(6),
    opd1ta character varying(6),
    opd1ua character varying(6),
    opd1va character varying(6),
    opd1wa character varying(6),
    opd1xa character varying(6),
    opd1ya character varying(6),
    opd1za character varying(6),
    opd20a character varying(6),
    op57na character varying(25),
    op57oa timestamp with time zone,
    a1cd character varying(8),
    blva numeric(13,2),
    wobr integer,
    op57pa character varying(15),
    op57qa character varying(15),
    op57ra character varying(15),
    op57sa timestamp with time zone,
    op57ta integer,
    akvn character varying(15),
    a5dt integer,
    op57ua integer,
    pmcd character varying(7),
    qicd character varying(7),
    acan integer,
    bupg integer,
    p0nb integer,
    op7yta character varying(7),
    op7yua character varying(7),
    op7yva integer,
    op7ywa integer,
    op7yxa integer,
    codigo_intercambio_edi character varying(100) NOT NULL,
    file_origen character varying(100) NOT NULL,
    nro_expedicion_incremental integer NOT NULL
);


"----------------------------------------"

contador_exped O-J-O-NPI este contador es diferente para cada filial, (hay un contador terrestre export valencia, otro export barcelona.. etc.

-- QYAHCD		Cd filiale	
-- QYCWCD	    Cd servizio 
-- QYBRCD		Tipo de Numeración	
-- QYOKNB		Contador Iniciale
-- QYOLNB		Contador Finale

SELECT *
FROM MLD_BE101.UCQYREP
WHERE QYAHCD = 20

SELECT QYAHCD, QYCWCD, QYBRCD
FROM MLD_BE101.UCQYREP
WHERE QYAHCD = 20 
  AND QYCWCD = 'TE'
GROUP BY QYAHCD, QYCWCD, QYBRCD



QYAHCD	QYCWCD	QYBRCD	QYOKNB	QYOLNB
20		TE		21		100000	199999
20		TI		22		200000	299999
20		NN		23		300000	399999
20		DE		2A		400000	449999
20		DI		2B		450000	494999
20		IN		2C		495000	499999
20		AE		25		500000	599999
20		AI		2D		600000	649999
20		AN		2E		650000	699999
20		ME		27		700000	799999
20		MI		2F		800000	849999
20		MN		2G		850000	899999
20		NL		23		300000	399999
20		NS		23		300000	399999
20		ML		2G		850000	899999
20		MS		2G		850000	899999
20		E1		21		100000	199999
20		E2		21		100000	199999
20		N1		23		300000	399999
20		N2		23		300000	399999

"----------------------------------------"

-- UCMKREP	Tipi - Tipo Evento Abbinamen (S8 S1577288539 S1577446583)

-- MKT9CD	Codice Tipo Evento
-- MKP2TX	Descrizione Evento
-- MKGUST	Natura Evento
-- MKARSA	Zona Creazione Aggancio
-- MKABSA	Evento Finale
-- MKLYSS	Rimorchio Impegnato
-- MKACSA	Evento Gestione Tratte
-- MKDGCD	Cd Filiale Ult Aggiornam
-- MKABVN	Utente
-- MKA5DT	Dt Ultimo Aggiornamento
-- MKG3ST	Stato Rec Tipi - Tipo evento

SELECT *
FROM MLD_BE101X.UCMKREP

MKT9CD	MKP2TX								MKGUST	MKARSA	MKABSA	MKLYSS	MKACSA	MKDGCD	MKABVN		MKA5DT	MKG3ST
ASD		cambio olio							S												STS4		1030913
RUBATO	Il mezzo è stato rubato				B												STS			940318
ROTTAM	Il mezzo è stato rottamato			B												STS			940318
OFFICI	Il mezzo è in officina per ripar.	B			S									STS4		1000126
MABARA	codice di prova annullamento														ROBERTO		940309	A
CC		Carico da Cliente					1	R		S	S								STS4		1030414
CCD		Carico da Cliente e Trasf. Deposito	1	D		S	S								STS4		1000126
CCP		Carico da Cliente e Trasf. Porto	3	T		S	S								STS4		1000125
CD		Trasferimento al Deposito			1	D		S	S								STS4		1000216
CP		Trasferimento al Porto				3	T		S	S								STS4		1000126
S		Sbarcati in Porto					4			S	S								STS4		1000126
SC		In Scarico dal Cliente				2	C		S	S								STS4		1000126
SCC		Scarico e Vuoto dal Cliente			5	C	S		S								STS4		1000218
SCD		Scarico Cliente e Vuoto in Deposito	2	D	S		S								STS4		1040203
SD		Scarico in Deposito					5	D	S		S								STS4		1000511
SV		Vuoto								5				S								STS4		991214
CSALL	Carico Scarico Tutte le tratte			C			S								STS4		1021121
CPSP	Trasf. Porto + Parte Intermodale		L	S	S	S								STS4		1000926
CINT	Conferma Tratta Intermodale			4	I		S	S								STS4		1000126
X		Sgancio per Incrocio				1	A		S	S								STS4		1000218	A
XA		Sgancio semir. in ARRIVO			2	A		S	S								STS4		1000218
XP		Sgancio semir. in Partenza			1	A		S	S								STS4		1000413
CARSCA	Carico e Scarico					2	C		S	S								STS4		1000413
SGANCI	Sgancio Semirimorchio				1	A		S	S								STS4		1000413
CHIUSO	Chiusura del viaggio				2	C	S		S								STS4		1000413
I01		Imp.Scar.+cons.vuoto al Terminal	5	R	S		S								STS4		1021121
I02		Imp.Scar.+cons.vuoto a Term.privato	5	R	S		S								STS4		1021121
I03		Imp.Scar.+lascia cntr da Cliente	2	R		S	S								STS4		1021121
I04		Imp.Scar.+riutilizzo cntr x export	5		S	S	S								STS4		1021121
I05		Imp.Agg da scar.+ cons.vuoto a Ter.	5	C	S		S								STS4		1021121
E01		Exp.Car.+rit.vuoto dal Terminal		3	T	S		S								STS4		1021121
E02		Exp.Car.+rit.vuoto dal Term.privato	3	T	S		S								STS4		1021121
E03		Exp.Car.+rit.cntr da import			3	A	S		S								STS4		1021121
E04		nullo								5	T	S	S	S								STS4		1021121
E05		nullogg da scar.+ cons.vuoto a Ter.	5	C	S		S								STS4		1021121
REVIS	Revisione Annuale																	NSSMAURIZI	1120316
REVANN	Revisione Annuale					S												NSSMAURIZI	1120316

"----------------------------------------"

'293433' -- SC - CLIENTE TEST -- 'SC1234'

SELECT *
FROM MLD_BE101X.URB7REP
WHERE B7APCD = '006159'

B7APCD	CHAR	6		Cd Cliente													06159									293433						057749						057749						057749			057749
B7K1PG	DECIMAL	3	0	Nr Riga Anag Clienti Persone             					1                                       1                           1                           2                           3               4
B7H9SS	CHAR	2		Titolo                                          			05                                                                  07                                                      07              
B7L7TX	CHAR	20		Nome                                            			GUILLEM                                 SC - NOM CONTACTO           SILVIA                      SILVIA                      ANNA            Olga
B7L6TX	CHAR	20		Cognome                                         			COLOMER                                 SC - APELL CONTACTO         W.                          .                           .               Rubalcava
B7HJCR	CHAR	4		Codice Qualifica                                			LOG                                                                                             ADPG                                        
B7AKNB	CHAR	20		Telefono                                        			964659470                               663112532                   910089956                   910089956                   910089956       
B7ABAA	CHAR	20		Mobile                                          			607153746                                                           619557505                   69172759                    69172759        
B7ADNB	CHAR	20		Telefax                                         			964674113                               663112532                                                                                           
B7AAEM	CHAR	128		Indirizzo E-Mail                                			guillem.colomer@huhtamaki.com           sonia.celis@moldtrans.com   yanyaredesign@gmail.com     yanyaredesign@gmail.com                     olga.rubalcava@moldtrans.es
B7LFUX	CHAR	22		Skype Username                                  			                                                                                                                                            
B7QSST	CHAR	1		Flag Commerc-Operativo           			                                                                                    G                                                       C               
B7EMDT	DECIMAL	7	0	Data di Nascita                                 			0                                       0                           0                           0                           0               0
B7FRTY	CHAR	1		Contatto Verificato                             			S                                       S                           S                           S                           S               S
B7EZCQ	CHAR	2		Cd filiale Rapporto -  Rap - Reporte - Informe di Visita                                                                                                                                13              
B7AXAN	NUMERIC	4	0	Anno Rapporto -  Rap - Reporte - Informe di    Visita       0                                       0                           0                           0                           2017            0
B7BDPG	DECIMAL	6	0	Progr Rapporto -  Rap - Reporte - Informe di   Visita       0                                       0                           0                           0                           3899            0
B7AJVN	CHAR	10		Utente creazione                                			CONVER                                  MLDSCELIS                   CONVER                      MLDRUBALCA                  MLDDIAZ         MLDRUBALCA
B7G4DT	DECIMAL	7	0	Data creazione                                  			0                                       1220118                     0                           1170425                     1170721         1180509
B7AKVN	CHAR	10		Utente Ultimo Aggiornamento                   		 		MLDGUZMAN                               MLDSCELIS                   MLDDIAZ                     MLDDIAZ                     MLDDIAZ         MLDRUBALCA
B7A5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento               						1170411                                 1220118                     1180717                     1170911                     1170911         1180509

"----------------------------------------"

SELECT *
FROM MLD_BE101.UUAMREP
LIMIT 100

UUAMREP		Categorie clienti.Phy (S8 S1577291020 S1577446583) - Categorias de cliente según cuenta contable

01	AMAICD	CHAR	2		Cd Categoria Cliente		AMAICD	01						02							03							04						05						06			07							08
02	AMAVTX	CHAR	25		Descr Categoria Cliente     AMAVTX  Cli./Prov. 4300-4000    Empresas Grupo 4330-4030    Empresas Asoc. 4340-4040    Empresas ext. 4400-4004 Cli./Acreed. 4300-4100  Socios 5510 Emp.Grupo ext. 4330-4004    Corresponsales 4400-4004
03	AMZ5CC	CHAR	2		Codice Gruppo               AMZ5CC  43                      43                          43                          44                      43                      55          43                          44
04	AMZYCC	CHAR	2		Codice Mastro               AMZYCC  00                      00                          00                          00                      00                      00          00                          00
05	AMZZCC	CHAR	2		Codice Conto                AMZZCC  00                      30                          40                          00                      00                      10          30                          00
06	AMZ6CC	CHAR	2		Fornitore Codice Gruppo     AMZ6CC  40                      40                          40                          40                      41                      55          40                          40
07	AMZ7CC	CHAR	2		Fornitore Codice Mastro     AMZ7CC  00                      00                          00                          00                      00                      00          00                          00
08	AMZ8CC	CHAR	2		Fornitore Codice Conto      AMZ8CC  00                      30                          40                          04                      00                      10          04                          04
09	AMDGCD	CHAR	2		Cd Filiale Ult Aggiornam    AMDGCD                                                                                                                                                                                                                                                                                            
10	AMABVN	CHAR	10		Utente                      AMABVN  MLDRODRIGU              MLDRODRIGU                  MLDRODRIGU                  MLDRODRIGU              MLDRODRIGU              MLDRODRIGU  MLDRODRIGU					MLDRODRIGU                                                                                                                                              
11	AMA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento     AMA5DT  1161007                 1161007                     1161007                     1161007                 1161007                 1161007     1161007                     1161007                                                                                                                                              
12	AMBQST	CHAR	1		Stato record                                                                                                                                                             
                                                        
"----------------------------------------"

SELECT *
FROM MLD_BE101.AAAEREP

AAAEREP Anag Clienti Contatti Dett CC.

01	AEAPCD	CHAR	6		Cd Cliente							001003	001003	001003	  001003	001003	001003	001003	001003	001003	001003	001003	001003	001003	001003
02	AEK1PG	DECIMAL	3	0	Nr Riga Anag Clienti Contatti       10      10      10        10        10      10      10      10      10    	10      10      10      10      10
03	AECMPG	DECIMAL	3	0	Nr Riga 2                           1       1       2         2         3       3       4       4       5     	5       6       6       7       7
04	AELLPG	DECIMAL	3	0	Nr Riga Anag Clienti Contatti CC    2       8       2         8         2       8       2       8       2     	8       2       8       2       8

"----------------------------------------"

SELECT *
FROM MLD_BE101.ABBFREP

ABBFREP Anag Clienti Assic Credit

01	BFAPCD	CHAR	6		Cd Cliente							001018	001018	001018	001021		001021
02	BFEKDT	DECIMAL	7	0	Dt inizio validità                  1180606 1180620 1180903 1200601     1200702
03	BFELDT	DECIMAL	7	0	Dt finevalidità						1180619 1180902 0       0           1200702
04	BFQQB0	CHAR	12		Nro polizza assicurazione 			CESCE   CESCE   CESCE   CESCE       NO CESCE
05	BFTCCE	CHAR	10		Codice Debitore           			2479    2479    2479    2936        2936
06	BFTDCE	CHAR	10		Codice Affidamento                  75000   100000  120000  50%  8000   0
																
																
"----------------------------------------"

SELECT *
FROM MLD_BE101X.UCNPREP


01	NPAPCD	CHAR	6		Cd Cliente					057749												
02	NPDHPG	DECIMAL	3	0	Progr Nota					1											
03	NPAHCD	CHAR	2		Cd filiale																
04	NPD8SS	CHAR	2		Tipo Trasporto																
05	NPBPST	CHAR	1		Settore di traffico																
06	NPCWCD	CHAR	2		Cd servizio																
07	NPEWSS	CHAR	1		Tipo Nota Cliente			L													
08	NPRXTX	CHAR	70		Nota su Cliente				VIERNES HASTA LAS 15H												
09	NPEZCQ	CHAR	2		Cd filiale Rapporto Vis																
10	NPAXAN	NUMERIC	4	0	Anno rapporto di visita		0														
11	NPBDPG	DECIMAL	6	0	Progr Rapporto di Visita	0																

"----------------------------------------"

SELECT *
FROM MLD_BE101X.UCO3REP    

UCO3REP	 Status Cliente.Physic (S8 S1577288079 S1577446583)	Estado del cliente

01	O3BATX	CHAR	2		Cd status cliente			CB							CM		PB					TB				XX			CA					IM			LT			RS				CC				DM					IN									00							DC						SC
02	O3TUTX	CHAR	35		Descr Status Cliente    	Cliente Bloqueado *datos*   Morosos Proveedor Bloqueado Total Bloqueo   Duplicados  Consurso Acreedores Impagados   Litigios    Riesgo Superado Cliente Contado Demoras en pagos    RIESGO SUPERADO CLI. INFORME NEGATI Cliente Descalificado CESCE Desclasificado CESCE	Siniestro CESCE
03	O3DLSS	CHAR	1		Status bloccante        	S                           S       S                   S               S           S                   S           S           S               S               S                   S                                   S                           S                   	S


"----------------------------------------"

SELECT *
FROM MLD_BE101X.UCO4REP	

UCO4REP	 Anag Clienti Indirizzi.	      

01	O4APCD	CHAR	6		Cd Cliente						007332
02	O4PONB	DECIMAL	3	0	Progr Indirizzo                 1
03	O4A6ST	CHAR	2		Tp anagrafica                   FT
04	O4BBRA	CHAR	35		Rag Soc                         CLIFOOT CALZADOS SLU
05	O4ARRA	CHAR	35		Ult Rag Soc                     
06	O4AHIN	CHAR	35		Indirizzo                       C/PARCENT, 35 P.I. FAIMA
07	O4ADCA	CHAR	8		CAP1                            03330
08	O4LOCA	CHAR	25		Località                        CREVILLENT
09	O4AEPR	CHAR	2		Provincia                       
10	O4AFCD	CHAR	3		Cd nazione                      ES
11	O4AKNB	CHAR	20		Telefono                        
12	O4A6TX	CHAR	20		Telex                           ES000FKUesA  VC
13	O4ADNB	CHAR	20		Telefax                         
14	O4CHTX	CHAR	35		Persona da contattare           
15	O4ANCA	CHAR	8		Cd Partenza Arrivo              
16	O4M1ST	CHAR	1		Flag Inoltro                    
17	O4AABD	CHAR	4		Cd linea                        
18	O4IWUX	CHAR	15		Nro Autorizzazione albo         
19	O4DUAN	DECIMAL	7	0	Data Autorizzazione albo        0
20	O4DVAN	DECIMAL	7	0	Data Scadenza albo              0
21	O4PPNB	DECIMAL	4	0	Ora-Min Apertura Mattina        0
22	O4PQNB	DECIMAL	4	0	Ora-Min Chiusura Mattina        0
23	O4PRNB	DECIMAL	4	0	Ora-Min Apertura Pomerigg       0
24	O4PSNB	DECIMAL	4	0	Ora-Min Chiusura Pomerigg       0
25	O4DAYT	CHAR	3		GG Chiusura nella Settim        
26	O4DRSS	CHAR	1		Mattino-Pomeriggio              
27	O4D5SS	CHAR	3		GG Chiusura nella Settim2       
28	O4D4SS	CHAR	1		Mattino-Pomeriggio 2            
29	O4PTNB	DECIMAL	4	0	GG chiusura nell''anno 1        0
30	O4PUNB	DECIMAL	4	0	GG chiusura nell''anno 2        0
31	O4PVNB	DECIMAL	4	0	GG chiusura nell''anno 3        0
32	O4PWNB	DECIMAL	4	0	GG chiusura nell''anno 4        0
33	O4LGUX	CHAR	60		Note Indirizzi  ''              
34	O4W2TX	CHAR	60		Note Indirizzi 2                

"----------------------------------------"

SELECT *
FROM MLD_BE101X.UCN3REP
WHERE N3VJCD LIKE '%EU%'									
									
01	N3VJCD	CHAR	6		Codice Mercato				EU10				EU20				EU30				EU40				EU50				EU60				EU70
02	N3RZTX	CHAR	35		Descrizione Mercato         Central Europe      Eastern Europe      Northern Europe     South East Europe   South West Europe   Southern Europe     Western Europe
03	N3ABVN	CHAR	10		Utente                      NSSMAURIZI          NSSMAURIZI          NSSMAURIZI          NSSMAURIZI          NSSMAURIZI          NSSMAURIZI          NSSMAURIZI
04	N3A5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento     1120110             1120110             1120110             1120110             1120110             1120110             1120110
05	N3V1ST	CHAR	1		Stato Record Mercato        

"----------------------------------------"

UCO2REP  Anag Clienti Contabili.

SELECT *
FROM
MLD_BE101.UCO2REP
WHERE O2AGUX LIKE '%YANYARE%'

01	O2APCD	CHAR	6		Cd Cliente						057749												
02	O2BBRA	CHAR	35		Rag Soc                         YANYARE DESIGN SL
03	O2ARRA	CHAR	35		Ult Rag Soc                     
04	O2AHIN	CHAR	35		Indirizzo                       C/ Fuente del Berro, 6
05	O2ADCA	CHAR	8		CAP1                            28009
06	O2LOCA	CHAR	25		Località                        Madrid
07	O2AEPR	CHAR	2		Provincia                       M
08	O2AGUX	CHAR	15		Codice di Ricerca               YANYARE DESIGN
09	O2ATCD	CHAR	16		Cd fiscale                      
10	O2ALNB	CHAR	11		Partita IVA                     B87627691
11	O2AKNB	CHAR	20		Telefono                        910089956
12	O2ADNB	CHAR	20		Telefax                         
13	O2A6TX	CHAR	20		Telex                           ES000E52esM  MD
14	O2AAEM	CHAR	128		Indirizzo E-Mail                yanyaredesign@gmail.com
15	O2CHTX	CHAR	35		Persona da contattare           
16	O2AACD	CHAR	1		Cd lingua nazionale             5
17	O2AFCD	CHAR	3		Cd nazione                      ES
18	O2AQCD	CHAR	4		Cd Divisa                       EUR
19	O2BATX	CHAR	2		Cd status cliente               
20	O2D3SS	CHAR	1		Ulteriori Ind R-C               
21	O2CDPA	CHAR	3		Cd pagamento                    428
22	O2Z9CC	CHAR	3		Cd pagamento Fornitore          453
23	O2ALCD	CHAR	2		Cd Assoggettamento              
24	O2Z5CC	CHAR	2		Codice Gruppo                   43
25	O2ZYCC	CHAR	2		Codice Mastro                   00
26	O2ZZCC	CHAR	2		Codice Conto                    00
27	O2Z6CC	CHAR	2		Fornitore Codice Gruppo         41
28	O2Z7CC	CHAR	2		Fornitore Codice Mastro         00
29	O2Z8CC	CHAR	2		Fornitore Codice Conto          00
30	O2AXCD	DECIMAL	7	0	Cd ABI                          0
31	O2AYCD	DECIMAL	5	0	Cd CAB                          0
32	O2AACQ	DECIMAL	7	0	Cd ABI Fornitore                0
33	O2ACCQ	DECIMAL	5	0	Cd CAB Fornitore                0
34	O2AENB	CHAR	10		Nr Lettera Intento Ass          
35	O2ACDT	DECIMAL	7	0	Dt Lettera Intento Ass          0
36	O2A1ST	CHAR	1		Spese bollo Fattura             
37	O2A2ST	CHAR	1		Spese Bollo su Ricevuta         
38	O2TPFT	CHAR	1		Tipo Fatturazione               S
39	O2MYST	CHAR	1		Flag visto contabile            *
40	O2JTSS	CHAR	2		Tipo suddivisione fatture       
41	O2JUSS	CHAR	2		Ordine Stampa Dett Fatt         
42	O2CICC	CHAR	8		Cd Contabile cliente            
43	O2SAST	CHAR	1		Tp arrotondamento               
44	O2AICD	CHAR	2		Cd Categoria Cliente            05
45	O2BSCD	CHAR	2		Cd Categoria Fornitore          
46	O2FXSS	CHAR	1		Clienti-Fornit-Entrambi         E
47	O2GBVA	DECIMAL	9	0	Fido Cliente                    0
48	O2AFCQ	CHAR	6		Cd Cliente Aggregato            
49	O2FYSS	CHAR	1		Tipo Estrazione Effetti         
50	O2ADCQ	CHAR	12		Numero C-C                      7057749
51	O2G3NB	DECIMAL	2	0	Mese esclusione effetti 1       0
52	O2G4NB	DECIMAL	2	0	Giorno Spostam effetti 1        0
53	O2G6NB	DECIMAL	2	0	Mese Spostam Effetti 1          0
54	O2G7NB	DECIMAL	2	0	Mese esclusione effetti 2       0
55	O2G8NB	DECIMAL	2	0	Giorno Spostam effetti 2        0
56	O2G9NB	DECIMAL	2	0	Mese Spostam Effetti 2          0
57	O2ATCC	CHAR	4		Codice Commerciale              
58	O2FZSS	CHAR	1		Priorità Pagamento  Fornit      
59	O2ANUX	CHAR	60		Note Cliente-Fornitore          
60	O2AECQ	CHAR	4		Cd Categoria Sollecito          
61	O2A2SS	CHAR	1		Tipo Invio                      S
62	O2CSSS	CHAR	1		Divisa Invio Documenti          P
63	O2F0SS	CHAR	1		Estrazione Proposta Pagamento	
64	O2GRSS	CHAR	1		Iva in Sospensione              
65	O2GASS	CHAR	1		Fornitore Codice CIN            
66	O2C6SS	CHAR	1		Flag Anag Cli-For 4             
67	O2C8SS	CHAR	1		Flag Anag Cli-For 5             
68	O2VJCD	CHAR	6		Codice Mercato                  
69	O2AHCD	CHAR	2		Cd filiale                      35
70	O2AGCQ	CHAR	2		Cd Filiale Compet-Fattur        
71	O2AFNB	CHAR	3		Cd spesa                        
72	O2BKCD	CHAR	2		Cd Sconto-Maggiorazione         
73	O2BHTX	CHAR	1		Contrassegno                    
74	O2DGCD	CHAR	2		Cd Filiale Ult Aggiornam        11
75	O2ABVN	CHAR	10		Utente                          MLDCMOLDES
76	O2A5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento         1220131
77	O2BQST	CHAR	1		Stato record                    


"----------------------------------------"

UDS5REP		UD	S5	REP			Anag Clienti Dati Commerciali.     

SELECT *
FROM
MLD_BE101.UDS5REP

01	S5APCD	CHAR	6		Cd Cliente						000001		000001	
02	S5CMPG	DECIMAL	3	0	Nr Riga 2                       3           2
03	S5D8SS	CHAR	2		Tipo Trasporto                  MA          MA
04	S5BPST	CHAR	1		Settore di traffico             E           E
05	S5AHCD	CHAR	2		Cd filiale                      11          11
06	S5CWCD	CHAR	2		Cd servizio                     EM          EM
07	S5DICC	CHAR	3		APT Partenza                                
08	S5DHCC	CHAR	3		APT Destino                                 
09	S5IZCC	CHAR	6		Porto di Imbarco                ESBCN       ESBCN
10	S5IKCC	CHAR	6		Porto di Sbarco                 HKHKG       CNSHA
11	S5AFCD	CHAR	3		Cd nazione                      HK          CN
12	S5VJCD	CHAR	6		Codice Mercato                  AS20        AS20
13	S5AABD	CHAR	4		Cd linea                                    
14	S5GUCA	CHAR	8		Cd Zona di Partenza                         
15	S5GVCA	CHAR	8		Cd Zona di Arrivo                           
16	S5HLCR	CHAR	4		Cd Regione Partenza                         
17	S5GPCQ	CHAR	4		Cd Regione Arrivo                           
18	S5BECD	CHAR	4		Cd Merceologica                             
19	S5EDCD	CHAR	2		Cd resa                                     
20	S5V9SS	CHAR	1		Frequenza Traffico              S           S
21	S5V8SS	CHAR	1		Tipo Traffico                   F           F
22	S5B9QR	DECIMAL	7	0	Nr Spedizioni Totale            2           2
23	S5CAQR	DECIMAL	13	3	Peso Lordo Totale               20000.000   20000.000
24	S5CBQR	DECIMAL	11	3	Metri Cubi Totale               40.000      40.000
25	S5QYVO	DECIMAL	15	2	Imp Valore Merce Totale         0           0
26	S5MOBR	DECIMAL	5	0	Numero Teus Totale              2           2
27	S5EZCQ	CHAR	2		Cd filiale Rapporto di Visita   11          11
28	S5AXAN	NUMERIC	4	0	Anno Rapporto di Visita         2014        2014
29	S5BDPG	DECIMAL	6	0	Progr Rapporto di Visita        2           2

"----------------------------------------"


SELECT *
FROM
MLD_BE101.UDS6REP

01	S6APCD	CHAR	6		Cd Cliente						005847				005847				005847				005847											
02	S6CMPG	DECIMAL	3	0	Nr Riga 2                       1                   2                   3                   4
03	S6D8SS	CHAR	2		Tipo Trasporto                  ST                  ST                  ST                  ST
04	S6BPST	CHAR	1		Settore di traffico                                 E                   I                   I
05	S6CWCD	CHAR	2		Cd servizio                                                                                 
06	S6AABD	CHAR	4		Cd Linea                        FR01                MA01                FR02                MA01
07	S6VLCD	CHAR	3		Codice Aeroporto                                                                            
08	S6U4CD	CHAR	6		Codice Porto                                                                                
09	S6VJCD	CHAR	6		Codice Mercato                                                                              
10	S6BBRA	CHAR	35		Rag Soc                         MOLDTRANS ALICANTE  MOLDTRANS ALICANTE  MOLDTRANS ALICANTE  MOLDTRANS ALICANTE
11	S6RECC	CHAR	6		Cd Cliente Concorrente          032405              032405              032405              032405
12	S6SRSS	CHAR	1		Concorrente-Gruppo Societario	C                   C                   C                   C
13	S6EZCQ	CHAR	2		Cd filiale Rapporto di Visita   22                  22                  22                  22
14	S6AXAN	NUMERIC	4	0	Anno Rapporto di Visita         2017                2017                2017                2017
15	S6BDPG	DECIMAL	6	0	Progr Rapporto di Visita        19                  19                  19                  19
16	S6JXDT	DECIMAL	7	0	Data Ultima Attività            0                   0                   0                   0

"----------------------------------------"

UFBQREP Anag Clienti Contatti Dettaglio. 

SELECT *
FROM
MLD_BE101.UFBQREP
WHERE BQAPCD = '057749'

01	BQAPCD	CHAR	6		Cd Cliente						057749	057749	057749	057749	057749	057749	057749	057749			
02	BQK1PG	DECIMAL	3	0	Nr Riga Anag Clienti Contatti   1       2       2       2       2       2       2       2
03	BQCMPG	DECIMAL	3	0	Nr Riga 2                       1       7       6       5       4       3       2       1
04	BQD8SS	CHAR	2		Tipo Trasporto                          ST      ST      ST      MA      MA      AE      AE
05	BQBPST	CHAR	1		Settore di traffico                     N       I       E       I       E       I       E
06	BQCWCD	CHAR	2		Cd servizio                                                                     
07	BQAHCD	CHAR	2		Cd filiale                                                                      
08	BQXNCC	CHAR	6		Cd Documento                            FATT    FATT    FATT    FATT    FATT    FATT	FATT
09	BQA2SS	CHAR	1		Tipo Invio                              E       E       E       E       E       E       E
10	BQGVV1	CHAR	10		TextID Message                                                                          

"----------------------------------------"

UGDBREP Anag Clienti Eventi. 

SELECT *
FROM
MLD_BE101.UGDBREP


01	DBAPCD	CHAR	6		Cd Cliente					080097				
02	DBCMPG	DECIMAL	3	0	Nr Riga 2               	1
03	DBD8SS	CHAR	2		Tipo Trasporto          	MA
04	DBBPST	CHAR	1		Settore di traffico     	E
05	DBCWCD	CHAR	2		Cd servizio             	ME
06	DBAHCD	CHAR	2		Cd filiale              	35
07	DBR7CQ	CHAR	6		Codice Status           	DPTINT
08	DBH6CQ	CHAR	6		Codice Evento           	FSURCS
09	DBKFSS	CHAR	1		Considerare se Mittente 	A
10	DBKGSS	CHAR	1		Considerare se Destinat 	A
11	DBKHSS	CHAR	1		Considerare se Committ  	A


"----------------------------------------"

SELECT *
FROM MLD_BE101.UPBBREP
WHERE ATCC = 'ESMO'

SELECT *
FROM
MLD_BE101.UPBBREP
WHERE APCD = '057749'

UPBBREP Anag Clienti Commerciali. 

01	APCD	CHAR	6		Cd Cliente						057749		011043		258130		007062		007062		258610		255753
02	CMPG	DECIMAL	3	0	Nr Riga 2                       1           1           2           2           3           1           2
03	AHCD	CHAR	2		Cd filiale                      13          20          20          20          20          20          20
04	D8SS	CHAR	2		Tipo Trasporto                                                      MA          MA                      MA
05	BPST	CHAR	1		Settore di traffico                                                             N                       
06	CWCD	CHAR	2		Cd servizio                                                                     MN                      
07	VLCD	CHAR	3		Codice Aeroporto                                                                                        
08	U4CD	CHAR	6		Codice Porto                                                                                            
09	ANCA	CHAR	8		Cd Partenza Arrivo                                                                                      
10	ATCC	CHAR	4		Codice Commerciale              1101        ESMO        ESMO        ESMO        ESMO        ESMO        ESMO
11	OP8B9A	DATE	4		Data Inizio Assegnazione ISO    2016-10-31  2021-01-01  2021-05-01  2021-01-01  2021-01-01  2021-01-01  2021-01-01
12	OP8BAA	DATE	4		Data Fine Assegnazione ISO      0001-01-01  0001-01-01  0001-01-01  0001-01-01  0001-01-01  0001-01-01  0001-01-01
13	OP8BBA	DATE	4		Data Inizio Traffico ISO        2017-03-08  2021-01-01  2021-05-01  2021-01-01  2021-01-01  2021-01-01  2021-01-01

"----------------------------------------"

SELECT *
FROM
MLD_BE101.UPBZREP

UPBZREP Anag Clienti Dati Depositan (S8 S1577813968 S_572)
		
01	BZAPCD	CHAR	6		Cd Cliente							BZAPCD	001011					
																BZP1CR  
02	BZJUST	CHAR	1		Tipo Fatturazione Magazzino         BZJUST  M
03	BZKKBR	NUMERIC	2	0	Mese Inizio Fatturazione            BZKKBR  0
																BZCBTZ  
																BZY7SX  
																BZCCTZ  
																BZZOCE  
																BZZPCE  
																BZZQCE  
																BZZRCE  
04	BZW7UX	CHAR	6		Cd Documento Stampa DDT             BZW7UX  DDT
05	BZOSTY	CHAR	1		Tipo Verifica Merce Magazzino       BZOSTY
06	BZATST	CHAR	1		Carico da Confermare                BZATST
07	BZOUTY	CHAR	1		Trasferimento da Confermare         BZOUTY
08	BZORTY	CHAR	1		Missioni TRF Attive                 BZORTY
09	BZCSTX	CHAR	1		Tipo Carico da Ordine Fornitore     BZCSTX
10	BZACPX	CHAR	1		Conferma Carico da  Missione        BZACPX
11	BZG9TX	CHAR	1		Livello Assegn Riga Scarico TRF     BZG9TX
12	BZOTTY	CHAR	1		Modo UPD Ordine da Missione         BZOTTY
13	BZCDTX	CHAR	1		Gestione Packing List               BZCDTX
14	BZACSY	CHAR	1		Gestione Area di Packaging          BZACSY
15	BZWOSS	CHAR	1		Chiama Missione Packaging           BZWOSS
16	BZOVTY	CHAR	1		Conferma Trasf da Missione          BZOVTY
17	BZLZTY	CHAR	1		Richiesta carico ad ogni            BZLZTY
18	BZRVV1	CHAR	20		GS1 Company Prefix                  BZRVV1
19	BZRETY	CHAR	1		Tipo Etichetta Logistica            BZRETY
28	BZO4TY	CHAR	1		Flag Anag Clienti Dati Dep 09       BZO4TY
20	BZOWTY	CHAR	1		Flag Anag Clienti Dati Dep 01       BZOWTY
21	BZOXTY	CHAR	1		Flag Anag Clienti Dati Dep 02       BZOXTY
22	BZOYTY	CHAR	1		Flag Anag Clienti Dati Dep 03       BZOYTY
23	BZOZTY	CHAR	1		Flag Anag Clienti Dati Dep 04       BZOZTY
24	BZO0TY	CHAR	1		Flag Anag Clienti Dati Dep 05       BZO0TY
25	BZO1TY	CHAR	1		Flag Anag Clienti Dati Dep 06       BZO1TY
26	BZO2TY	CHAR	1		Flag Anag Clienti Dati Dep 07      	BZO2TY
27	BZO3TY	CHAR	1		Flag Anag Clienti Dati Dep 08		BZO3TY
29	BZO5TY	CHAR	1		Flag Anag Clienti Dati Dep 10       BZO5TY
30	BZO6TY	CHAR	1		Flag Anag Clienti Dati Dep 11       BZO6TY
31	BZO7TY	CHAR	1		Flag Anag Clienti Dati Dep 12       BZO7TY
32	BZO8TY	CHAR	1		Flag Anag Clienti Dati Dep 13       BZO8TY                                                        
33	BZO9TY	CHAR	1		Flag Anag Clienti Dati Dep 14		BZO9TY														
34	BZPATY	CHAR	1		Flag Anag Clienti Dati Dep 15		BZPATY														
35	BZPBTY	CHAR	1		Flag Anag Clienti Dati Dep 16		BZPBTY														
36	BZPCTY	CHAR	1		Flag Anag Clienti Dati Dep 17		BZPCTY														
37	BZPDTY	CHAR	1		Flag Anag Clienti Dati Dep 18		BZPDTY														
38	BZPETY	CHAR	1		Flag Anag Clienti Dati Dep 19		BZPETY														
39	BZPFTY	CHAR	1		Flag Anag Clienti Dati Dep 20		BZPFTY														


"----------------------------------------"                  
                                                            
SELECT *
FROM
MLD_BE101.UPCAREP


UPCAREP Anag Clienti Classificazioni.                       
                                                            
01	APCD	CHAR	6		Cd Cliente						000001
02	OPAX3A	CHAR	10		ID Categoria Classificazione    STRUTTURA
03	OPAX5A	CHAR	10		ID Caratteristica Classif       MERCATO
04	OPAXAA	CHAR	10		ID Attributo Caratteristica     GE
05	OPAXEA	CHAR	1		Implementazione Futura          
06	EZCQ	CHAR	2		Cd filiale Rapporto di Visita   11
07	AXAN	NUMERIC	4	0	Anno Rapporto di Visita         2014
08	BDPG	DECIMAL	6	0	Progr Rapporto di Visita        2
09	AKVN	CHAR	10		Utente Ultimo Aggiornam         NSSPAOLO
10	A5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento         1141030

"----------------------------------------"                  
                                                            
UPDLREP Anag Clienti Storico  (S8 S1578138487 S1578137691)  

SELECT *
FROM
MLD_BE101.UPDLREP
WHERE DLAPCD = '057749'
LIMIT 10

01	DLAPCD	CHAR	6		Cd Cliente						057749		057749
02	DLG4DT	DECIMAL	7	0	Data creazione              	1220131     1220129
03	DLQUNB	DECIMAL	4	0	Ora creazione               	925         2
04	DLBATX	CHAR	2		Cd Status Cliente           	            RS
05	DLSFV1	CHAR	200		Motivo Variazione Status  		            
06	DLR7TY	CHAR	1		Origine Variazione Status  		R           F
07	DLAJVN	CHAR	10		Utente creazione            	MLDCMOLDES  MLDCMOLDES

"----------------------------------------"

SELECT *
FROM
MLD_BE101.UPDMREP

UPDMREP Anag Clienti Fidi.Phy (S8 S1578138405 S1578137691)

01	DMAPCD	CHAR	6		Cd Cliente						001016
02	DMEKDT	DECIMAL	7	0	Dt inizio validità				1140207
03	DMELDT	DECIMAL	7	0	Dt fine validità				0
04	DMWSBR	DECIMAL	11	0	Fido Cliente 11_0				560
05	DMR8TY	CHAR	1		Crea Nota						
06	DMBATX	CHAR	2		Cd Status Cliente				RS
07	DMR9TY	CHAR	1		Considera Fido su Aggregato	

"----------------------------------------"

SELECT *
FROM
MLD_BE101.UPDNREP

UPDNREP Anag Clienti Fido da Esterno. 

01	DNADNB	CHAR	20		Cd Cliente Esterno				1010005
02	DNBNVP	DECIMAL	13	2	Saldo Contabile             	323.26
03	DNA5DT	DECIMAL	7	0	Data Ultimo Aggiornamento   	1220125
04	DNQVNB	DECIMAL	4	0	Ora Ultimo Aggiornamento    	1759


"----------------------------------------"

SELECT *
FROM
MLD_BE101.UPDOREP

UPDOREP Anag Clienti Storico Fuori  (S8 S1578138281 S_114)

01	DOAPCD	CHAR	6		Cd Cliente							057749		057749					
02	DOG4DT	DECIMAL	7	0	Data creazione                      1170213     1170214
03	DOWSBR	DECIMAL	11	0	Fido Cliente 11_0                   1           1
04	DOBNVP	DECIMAL	13	2	Saldo Contabile                     443.10      443.10
05	DOBOVP	DECIMAL	13	2	Importo Rischio                     0           0
06	DOBPVP	DECIMAL	13	2	Tassato non Fatturato DP            0           0
07	DOBQVP	DECIMAL	13	2	Fatturato non Contabilizzato DP     0           0
08	DOBRVP	DECIMAL	13	2	Importo Anticipi                    0           0
09	DOAFCQ	CHAR	6		Cd Cliente Aggregato                            
10	DOAJVN	CHAR	10		Utente creazione                                
11	DOQUNB	DECIMAL	4	0	Ora creazione                       MLDFONTANE  MLDFONTANE
12	DOSATY	CHAR	1		Aggiornamento eseguito              2245        2245
13	DOAKVN	CHAR	10		Utente Ultimo Aggiornamento         S           S
14	DOA5DT	DECIMAL	7	0	Data Ultimo Aggiornamento                       
15	DOQVNB	DECIMAL	4	0	Ora Ultimo Aggiornamento            0           0
                                                                0           0

"----------------------------------------"

SELECT * 
FROM MLD_BE101.UUIVREP

UUIVREP Anag Clienti Dati Partic - Filial y servicio - 

01	IVAPCD	CHAR	6		Cd Cliente							057749	057749	057749	---	057749	057749	057749	057749			
02	IVCMPG	DECIMAL	3	0	nr riga 2                           1       2       3       ---	12      13      14      15
03	IVD8SS	CHAR	2		Tipo Trasporto                      AE      AE      ST      ---	ST      ST      ST      ST
04	IVBPST	CHAR	1		Settore di traffico                 E       I       E       ---	E       E       N       N
05	IVCWCD	CHAR	2		Cd servizio                         AE		AI      TE      ---	E1      E2      N1      N2
06	IVAHCD	CHAR	2		Cd filiale                          13      13      13      ---	13      13      13      13
07	IVEXSS	CHAR	1		Tp fatturazione Mittente            S       S       S       ---	S       S       S       S
08	IVEYSS	CHAR	1		Tp Fatturazione Destinat            S       S       S       ---	S       S       S       S
09	IVFDST	CHAR	1		Flag St M3 su Fattura                                       ---	                        
10	IVFHST	CHAR	1		Flag St PLordo su Fatt                                      ---	                        
11	IVFNST	CHAR	1		Flag St M3 su LVettura                                      ---	                        
12	IVFPST	CHAR	1		Flag St PLordo su LVett                                     ---	                        
13	IVCDPA	CHAR	3		Cd pagamento                        428     428     428     ---	428     428     428     428
14	IVKBCR	CHAR	3		Cd Pagamento Note Debito            416     416     416     ---	416     416     416     416
15	IVKCCR	CHAR	3		Cd Pagamento Note Accredi           416     416     416     ---	416     416     416     416
16	IVJTSS	CHAR	2		Tipo suddivisione fatture                                   ---	                        
17	IVJUSS	CHAR	2		Ordine Stampa Dett Fatt                                     ---	                        
18	IVM2ST	CHAR	1		Tp Fatturare a cliente                                      ---	                        
19	IVAFNB	CHAR	3		Cd spesa                                                    ---	                        
20	IVAXCD	DECIMAL	7	0	Cd ABI                              0       0       0       ---	0       0       0       0
21	IVAYCD	DECIMAL	5	0	Cd CAB                              0       0       0       ---	0       0       0       0
22	IVXNCC	CHAR	6		Cd Documento                                                ---	                        
23	IVTFCD	CHAR	2		Cd filiale Competenza               13      13      13      ---	13      13      13      13
24	IVX6TY	CHAR	1		Controllo Esist Riferimen                                   ---	                
25	IVX7TY	CHAR	1		Flag Anag Cli Dati Part01                                   ---	                
26	IVX8TY	CHAR	1		Flag Anag Cli Dati Part02                                   ---	                
27	IVX9TY	CHAR	1		Flag Anag Cli Dati Part03                                   ---	                
28	IVYATY	CHAR	1		Flag Anag Cli Dati Part04                                   ---	                
29	IVYBTY	CHAR	1		Flag Anag Cli Dati Part05                                   ---	                

"----------------------------------------"

UUCVREP Tipi - Tipo servizio.Physica (S8 S1577290582 S1577446583) 

SELECT *
FROM 
MLD_BE101X.UUCVREP
WHERE CVCWCD = 'TE'


CVCWCD	CHAR	2		Cd servizio					AE					NN			TE				TI
CVA8TX	CHAR	25		Descr Servizio              AEREO EXPORT    	NACIONAL    TIR EXPORT      TIR IMPORT 
CVBPST	CHAR	1		Settore di traffico         E               	N           E               I
CVCXCD	CHAR	2		Raggr Num Interna Cd Serv   AE              	NN          TE              TI         
CVCYCD	CHAR	2		Cd servizio x tariffa       AE              	NN          TE              TI
CVZZAV	CHAR	2		Liste di carico Cd serviz                   	                            
CVEHST	CHAR	1		Flag servizio espresso                      	
CVDGCD	CHAR	2		Tipo Trasporto              AE              	ST          ST              ST         
CVABVN	CHAR	10		Utente                      MLDAMOLDES      	MLDFARRE    MLDFARRE        MLDFARRE   
CVA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento     1220104         	1161128     1161128         1161128    
CVBQST	CHAR	1		Stato record

"----------------------------------------"

UCQKREP Tariffe -sez- note.Ph (S8 S1577287984 S1577446583)

SELECT *
FROM 
MLD_BE101X.UCQKREP
WHERE QKAHCD = 13
  AND QKCWCD = 'TE'
  AND QKD6CD = 'AA'

QKAHCD	CHAR	2		Cd filiale												13                                                              13                                                              13
QKCWCD	CHAR	2		Cd servizio                         					TE                                                              TE                                                              TE
QKD5CD	CHAR	2		Cd Categoria Tariffa '00' - 'AC' - 'AL' - 'GE'          00                                                              00                                                              00
QKB6CD	CHAR	1		Cd tp tariffa - 'R' - 'C' - 'O' - 'S' - 'G' - 'T'     	R                                                               R                                                               R
QKECCD	CHAR	6		Cd tariffa                          					008226                                                          008226                                                          008191
QKD6CD	CHAR	2		Cd sezione                          					AA                                                              AA                                                              AA
QKCMPG	DECIMAL	3	0	Nr Riga 2                           					1                                                               1                                                               10
QKCAPG	DECIMAL	3	0	Nr riga note                        					1                                                               2                                                               1
QKGTSS	CHAR	1		Tp note tariffe-sez-           					 		S                                                               S                                                               S
QKBWTX	CHAR	60		Note                                					*DESCARGAS ADICIONALES EN RADIO HASTA  80 KM..... 60 EUR[BR]*D	ESCARGAS ADICIONALES EN RADIO HASTA 150 KM..... 100 EUR[BR][BR]	1 m3  = 270 kg[BR]1 mpl = 1750 kg

"----------------------------------------"
SELECT *
FROM 
MLD_BE101X.UUDPREP
								
UUDPREP	Categorie tariffa.Phy (S8 S1577290419 S1577446583)    

DPD5CD	CHAR	2		Cd Categoria Tariffa '00' - 'AC' - 'AL' - 'GE'		00			AC			AL			 GE	
DPBTTX	CHAR	25		Descr Categoria Tariffa                 			VARIOS      ACEROS      ALIMENTICIOS GENÉRICO
DPDGCD	CHAR	2		Cd Filiale Ult Aggiornam                			01          01          01           01
DPABVN	CHAR	10		Utente                                  			NSSPAOLO    MLDRODRIGU  MLDRODRIGU   MLDRODRIGU
DPA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento                 			1141201     1141201     1141201      1141201
DPBQST	CHAR	1		Stato record                            			            A           A            A
 
"----------------------------------------"

UUDRREP	Sezioni tariffa.Physi (S8 S1577290403 S1577446583) - Secciones Descripción
  
SELECT *
FROM 
MLD_BE101X.UUDRREP
WHERE DRD6CD = 'AE'
      DRABVN = 'NSCMAZZOLE'
  AND DRA5DT = 1211118

SELECT *
FROM 
MLD_BE101X.UUDRREP
WHERE DRD6CD = 'AF'
  
DRD6CD	CHAR	2		Cd sezione							AE					AF
DRBUTX	CHAR	35		Descr Sezione                       Entregas            Flete FCL
DRCLTX	CHAR	15		Descr Abbr Sezione                                      
DRZZDI	CHAR	78		Descr Sez x Stp Off 1               Entregas            Flete FCL
DRIBTX	CHAR	78		Descr Sez x Stp Off 2                                   
DRAPSX	CHAR	2		Tipo Sezione                        V                   V
DRAQSX	CHAR	2		Tipo Voce Calcolata                 C                   N
DRARSX	CHAR	2		Tipo Applicazione Sezione           T                   C
DRASSX	CHAR	1		Sezione con Ragg Resa                                   
DRATSX	CHAR	1		Flag Sezioni Tariffa 1              S                   S
DRAUSX	CHAR	1		Flag Sezioni Tariffa 2                                  S
DRAVSX	CHAR	1		Flag Sezioni Tariffa 3                                  
DRDGCD	CHAR	2		Cd Filiale Ult Aggiornam            11                  11
DRABVN	CHAR	10		Utente                              NSCMAZZOLE          MLDFARRE
DRA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento             1211118             1200129
DRBQST	CHAR	1		Stato record                        

"----------------------------------------"

UUEAREP	Tipi - Tipo tariffa. (S8 S1577290245 S1577446583)              

SELECT *
FROM 
MLD_BE101X.UUEAREP

  
EAB6CD	CHAR	1		Cd tp tariffa - 'R' - 'C' - 'O' - 'S' - 'G' - 'T'	R			C					O				S				G			T
EAAAAI	CHAR	25		Descr Tp Tariffa                                    VENTA       COSTES PROVEEDOR    OFERTA CLIENTE  PROFITS SHARE   ALMACENAJES GENERAL CLIENTES
EADGCD	CHAR	2		Cd Filiale Ult Aggiornam                            01          01                  01              01                          
EAABVN	CHAR	10		Utente                                              MLDJGARCIA  MLDRODRIGU          MLDRODRIGU      NSSPAOLO        NSSPAOLO    MLDRODRIGU
EAA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento                             1200917     1141202             1141202         1141218         1141218     1141202
EABQST	CHAR	1		Stato record

"----------------------------------------"

UCO8REP		Tariffe -imp- mk10. - esta tabla es parecida a UUD0REP diferencia es: O8OZVA	DECIMAL	13	7	

SELECT *
FROM 
MLD_BE101X.UCO8REP

O8EACD	CHAR	8		Cd listino tariffa		17000380	17000380	17000380	17000380	17000380
O8EKDT	DECIMAL	7	0	Dt inizio validità      1160101     1160101     1160101     1160101     1160101
O8A2QT	DECIMAL	11	2	Fino a                  500.00      1000.00     3000.00     6000.00     99999.00
O8OZVA	DECIMAL	13	7	Imp Unitario 13_7       .1100000    .1100000    .1000000    .0900000    .0840000
O8A9VA	DECIMAL	9	2	Minimo Tassabile        38.95       55.00       110.00      300.00      540.00
O8BAVA	DECIMAL	11	2	Massimo Tassabile       0           0           0           0           0
O8BBVA	DECIMAL	9	2	Imp Fisso               0           0           0           0           0
O8AMPC	DECIMAL	5	2	% Sconto                0           0           0           0           0
O8FKSS	CHAR	1		Competenze incluse                                                      
O8FMSS	CHAR	2		Tipo sconto tariffe                                                     
O8ELDT	DECIMAL	7	0	Dt fine validità        1991231     1991231     1991231     1991231     1991231

"----------------------------------------"

UCQEREP		Tariffe -testata- not (S8 S1577287999 S1577446583)  

QEAHCD	CHAR	2		Cd filiale
QECWCD	CHAR	2		Cd servizio
QED5CD	CHAR	2		Cd Categoria Tariffa '00' - 'AC' - 'AL' - 'GE'
QEB6CD	CHAR	1		Cd tp tariffa - 'R' - 'C' - 'O' - 'S' - 'G' - 'T'
QEECCD	CHAR	6		Cd tariffa
QECMPG	DECIMAL	3	0	Nr Riga 2
QEF9SS	CHAR	1		Tipo note tariffa
QEVNTX	CHAR	60		Note tariffa

"----------------------------------------"

UCQQREP		Tariffe -imp- mk11.          - esta tabla es parecida a UUD0REP                         

QQEACD	CHAR	8		Cd listino tariffa
QQEKDT	DECIMAL	7	0	Dt inizio validità
QQA2QT	DECIMAL	11	2	Fino a
QQA8VA	DECIMAL	11	2	Imp Unitario (1)
QQBEVA	DECIMAL	11	2	Imp Unitario (2)
QQA9VA	DECIMAL	9	2	Minimo Tassabile
QQQ2VA	DECIMAL	9	2	Minimo Tassabile (2)
QQRUVA	DECIMAL	10	2	Importo fisso
QQRVVA	DECIMAL	10	2	Importo Fisso (2)
QQAMPC	DECIMAL	5	2	% Sconto
QQFMSS	CHAR	2		Tipo sconto tariffe
QQELDT	DECIMAL	7	0	Dt fine validità


"----------------------------------------"

UGB3REP		Tipi - Tipo Elemento Tariffe (S8 S1577286652 S1577446583)      


SELECT *
FROM 
MLD_BE101X.UGB3REP
WHERE B3DUUX LIKE '%Zona%'

B3AGSX	CHAR	6		Tipo Elemento					ZCORR				ZFIL			ZARR2			ZARR3			ZARR4			ZARR5			ZARR8			ZPART2			ZPART3			ZPART4			ZPART5			ZPART8
B3DUUX	CHAR	35		Descrizione Tipo Elemento       Zona Corresponsal   Zona Filial     Zona Arribo 2   Zona Arribo 3   Zona Arribo 4   Zona Arribo 5   Zona Arribo 8   Zona Partida 2  Zona Partida 3  Zona Partida 4  Zona Partida 5  Zona Partida 8

"----------------------------------------"

UGB4REP		Tariffe -testata- Rap (S8 S1577286693 S1577446583) - Rapporto -  Rap - Reporte - Informe    

SELECT *
FROM 
MLD_BE101X.UGB4REP
WHERE B4CWCD = 'TE'
  AND B4AHCD = '13'
  AND B4D5CD = '00'
  AND B4B6CD = 'R'
  AND B4ECCD = 'SC1234'
  
B4AHCD	CHAR	2		Cd filiale										13		13		13			--	3		13		13		13		13
B4CWCD	CHAR	2		Cd servizio                                     TE      TE      TE      	--	TE      TE      TE      TE      TE
B4D5CD	CHAR	2		Cd Categoria Tariffa '00' - 'AC' - 'AL' - 'GE'  00      00      00      	--	00      00      00      00      00
B4B6CD	CHAR	1		Cd tp tariffa - 'C' - 'R' - 'S'                 R       R       R       	--	C       C       C       C       C
B4ECCD	CHAR	6		Cd tariffa                                      SC1234  SC1234  SC1234  	--	101167  101167  101167  101906  101906
B4RTNB	DECIMAL	3	0	Progr Riga Rapporto -  Rap - Reporte - Informe  3       2       1       	--	3       2       1       5       4
B4VNCD	CHAR	6		Codice Rapporto -  Rap - Reporte - Informe      L/1650  M3/300  REAL    	--	REAL    L/1750  M3/333  REAL    P/1650
B4E8CQ	CHAR	6		Codice Arrotondamento-Redondeo                  KG-604  KG-604  KG-604  	--	KG-100  KG-100  KG-100  KG-100  KG-100



"----------------------------------------"

UGC7REP		Tariffe -elem - elementos- note.P (S8 S1577286528 S1577446583)      

SELECT *
FROM 
MLD_BE101X.UGC7REP
WHERE C7CWCD = 'TE'
  AND C7AHCD = '13'
  AND C7D5CD = '00'
  AND C7B6CD = 'R'


C7AHCD	CHAR	2		Cd filiale											13					13			13
C7CWCD	CHAR	2		Cd servizio                                         TE                  TE          TE
C7D5CD	CHAR	2		Cd Categoria Tariffa '00' - 'AC' - 'AL' - 'GE'      00                  00          00
C7B6CD	CHAR	1		Cd tp tariffa - 'R' - 'C' - 'O' - 'S' - 'G' - 'T'   R                   R           R
C7ECCD	CHAR	6		Cd tariffa                                          005503              005505      005505
C7D6CD	CHAR	2		Cd sezione                                          AE                  AE          AE
C7CMPG	DECIMAL	3	0	Nr Riga 2                                           1                   1           2
C7ARCD	CHAR	8		Cd 1 Elemento                                       TMADRID             TMADRID     TMADRID
C7AAAF	CHAR	8		Cd 2 Elemento                                       ES                  ES          ES
C7AAAG	CHAR	8		Cd 3 Elemento                                                                       
C7AAAH	CHAR	8		Cd 4 Elemento                                                                       
C7CAPG	DECIMAL	3	0	Nr riga note                                        1                   1           1
C7BWTX	CHAR	60		Note                                                10007 RIGHI.28TE    10022 975B  10022 975B

"----------------------------------------"

UIF9REP		Tariffe -Matrice Stampa.                                

SELECT *
FROM 
MLD_BE101X.UIF9REP
WHERE F9AHCD = '13'
  AND F9CWCD = 'TE'
  AND F9D5CD = '00'
  AND F9B6CD = 'R'


F9AHCD	CHAR	2		Cd Filiale Tariffa										13
F9CWCD	CHAR	2		Cd Servizio Tariffa                                     TE
F9D5CD	CHAR	2		Cd Categoria Tariffa '00' - 'AC' - 'AL' - 'GE'          00
F9B6CD	CHAR	1		Cd tp tariffa - 'R' - 'C' - 'O' - 'S' - 'G' - 'T'       R
F9ECCD	CHAR	6		Cd Tariffa                                              005504
F9D6CD	CHAR	2		Cd sezione                                              AA
F9CMPG	DECIMAL	3	0	Nr Riga 2                                               1
F9JUNB	DECIMAL	5	0	Nr Riga 5                                               1
F9ZBBR	DECIMAL	3	0	Nr Riga Ex                                              1
F9Q0SX	CHAR	1		Tipo Stampa Tariffa                                     1
F9Y2CQ	CHAR	10		Key Dettaglio Tariffa                                   008
F9MJC8	CHAR	8		Cd Primo Elemento                                       
F9MKC8	CHAR	8		Cd Secondo Elemento                                     
F9F9CD	CHAR	8		Cd Terzo Elemento                                       
F9GACD	CHAR	8		Cd Quarto Elemento                                      
F9BVTX	CHAR	45		Descr Linea Tariffa                                     Escalado e importe x ML
F9EACD	CHAR	8		Cd listino tariffa                                      
F9AQCD	CHAR	4		Cd Divisa                                               
F9EBCD	CHAR	2		Cd addebito - débito - adeudo                           10
F9GPST	CHAR	1		Tipo Maschera - Mascara                                 1
F9O8VA	DECIMAL	9	2	Importo Scalare 1                                       3.0000000
F9E2VO	DECIMAL	9	2	Minimo Tassabile 1                                      0
F9E3VO	DECIMAL	9	2	Massimo Tassabile 1                                     0
F9E4VO	DECIMAL	9	2	Imp Fisso 1                                             0
F9O9VA	DECIMAL	9	2	Importo Scalare 2                                       4.0000000
F9FLVO	DECIMAL	9	2	Minimo Tassabile 2                                      0
F9F9VO	DECIMAL	9	2	Massimo Tassabile 2                                     0
F9GXVO	DECIMAL	9	2	Imp Fisso 2                                             0
F9PAVA	DECIMAL	9	2	Importo Scalare 3                                       5.0000000
F9FMVO	DECIMAL	9	2	Minimo Tassabile 3                                      0
F9GAVO	DECIMAL	9	2	Massimo Tassabile 3                                     0
F9GYVO	DECIMAL	9	2	Imp Fisso 3                                             0
F9PBVA	DECIMAL	9	2	Importo Scalare 4                                       6.0000000
F9FNVO	DECIMAL	9	2	Minimo Tassabile 4                                      0
F9GBVO	DECIMAL	9	2	Massimo Tassabile 4                                     0
F9GZVO	DECIMAL	9	2	Imp Fisso 4                                             0
F9PCVA	DECIMAL	9	2	Importo Scalare 5                                       7.0000000
F9FOVO	DECIMAL	9	2	Minimo Tassabile 5                                      0
F9GCVO	DECIMAL	9	2	Massimo Tassabile 5                                     0
F9G0VO	DECIMAL	9	2	Imp Fisso 5                                             0
F9PDVA	DECIMAL	9	2	Importo Scalare 6                                       8.0000000
F9FPVO	DECIMAL	9	2	Minimo Tassabile 6                                      0
F9GDVO	DECIMAL	9	2	Massimo Tassabile 6                                     0
F9G1VO	DECIMAL	9	2	Imp Fisso 6                                             0
F9AQVL	DECIMAL	9	2	Importo Scalare 7                                       9.0000000
F9FQVO	DECIMAL	9	2	Minimo Tassabile 7                                      0
F9GEVO	DECIMAL	9	2	Massimo Tassabile 7                                     0
F9G2VO	DECIMAL	9	2	Imp Fisso 7                                             0
F9ARVL	DECIMAL	9	2	Importo Scalare 8                                       10.0000000
F9FRVO	DECIMAL	9	2	Minimo Tassabile 8                                      0
F9GFVO	DECIMAL	9	2	Massimo Tassabile 8                                     0
F9G3VO	DECIMAL	9	2	Imp Fisso 8                                             0
F9ASVL	DECIMAL	9	2	Importo Scalare 9                                       0
F9FSVO	DECIMAL	9	2	Minimo Tassabile 9                                      0
F9GGVO	DECIMAL	9	2	Massimo Tassabile 9                                     0
F9G4VO	DECIMAL	9	2	Imp Fisso 9                                             0
F9E5VO	DECIMAL	9	2	Importo Scalare 10                                      0
F9FTVO	DECIMAL	9	2	Minimo Tassabile 10                                     0
F9GHVO	DECIMAL	9	2	Massimo Tassabile 10                                    0
F9G5VO	DECIMAL	9	2	Imp Fisso 10                                            0
F9E6VO	DECIMAL	9	2	Importo Scalare 11                                      0
F9FUVO	DECIMAL	9	2	Minimo Tassabile 11                                     0
F9GIVO	DECIMAL	9	2	Massimo Tassabile 11                                    0
F9G6VO	DECIMAL	9	2	Imp Fisso 11                                            0
F9E7VO	DECIMAL	9	2	Importo Scalare 12                                      0
F9FVVO	DECIMAL	9	2	Minimo Tassabile 12                                     0
F9GJVO	DECIMAL	9	2	Massimo Tassabile 12                                    0
F9G7VO	DECIMAL	9	2	Imp Fisso 12                                            0
F9E8VO	DECIMAL	9	2	Importo Scalare 13                                      0
F9FWVO	DECIMAL	9	2	Minimo Tassabile 13                                     0
F9GKVO	DECIMAL	9	2	Massimo Tassabile 13                                    0
F9G8VO	DECIMAL	9	2	Imp Fisso 13                                            0
F9E9VO	DECIMAL	9	2	Importo Scalare 14                                      0
F9FXVO	DECIMAL	9	2	Minimo Tassabile 14                                     0
F9GLVO	DECIMAL	9	2	Massimo Tassabile 14                                    0
F9G9VO	DECIMAL	9	2	Imp Fisso 14                                            0
F9FAVO	DECIMAL	9	2	Importo Scalare 15                                      0
F9FYVO	DECIMAL	9	2	Minimo Tassabile 15                                     0
F9GMVO	DECIMAL	9	2	Massimo Tassabile 15                                    0
F9HAVO	DECIMAL	9	2	Imp Fisso 15                                            0
F9FBVO	DECIMAL	9	2	Importo Scalare 16                                      0
F9FZVO	DECIMAL	9	2	Minimo Tassabile 16                                     0
F9GNVO	DECIMAL	9	2	Massimo Tassabile 16                                    0
F9HBVO	DECIMAL	9	2	Imp Fisso 16                                            0
F9FCVO	DECIMAL	9	2	Importo Scalare 17                                      0
F9F0VO	DECIMAL	9	2	Minimo Tassabile 17                                     0
F9GOVO	DECIMAL	9	2	Massimo Tassabile 17                                    0
F9HCVO	DECIMAL	9	2	Imp Fisso 17                                            0
F9FDVO	DECIMAL	9	2	Importo Scalare 18                                      0
F9F1VO	DECIMAL	9	2	Minimo Tassabile 18                                     0
F9GPVO	DECIMAL	9	2	Massimo Tassabile 18                                    0
F9HDVO	DECIMAL	9	2	Imp Fisso 18                                            0
F9FEVO	DECIMAL	9	2	Importo Scalare 19                                      0
F9F2VO	DECIMAL	9	2	Minimo Tassabile 19                                     0
F9GQVO	DECIMAL	9	2	Massimo Tassabile 19                                    0
F9HEVO	DECIMAL	9	2	Imp Fisso 19                                            0
F9FFVO	DECIMAL	9	2	Importo Scalare 20                                      0
F9F3VO	DECIMAL	9	2	Minimo Tassabile 20                                     0
F9GRVO	DECIMAL	9	2	Massimo Tassabile 20                                    0
F9HFVO	DECIMAL	9	2	Imp Fisso 20                                            0
F9FGVO	DECIMAL	9	2	Importo Scalare 21                                      0
F9F4VO	DECIMAL	9	2	Minimo Tassabile 21                                     0
F9GSVO	DECIMAL	9	2	Massimo Tassabile 21                                    0
F9HGVO	DECIMAL	9	2	Imp Fisso 21                                            0
F9FHVO	DECIMAL	9	2	Importo Scalare 22                                      0
F9F5VO	DECIMAL	9	2	Minimo Tassabile 22                                     0
F9GTVO	DECIMAL	9	2	Massimo Tassabile 22                                    0
F9HHVO	DECIMAL	9	2	Imp Fisso 22                                            0
F9FIVO	DECIMAL	9	2	Importo Scalare 23                                      0
F9F6VO	DECIMAL	9	2	Minimo Tassabile 23                                     0
F9GUVO	DECIMAL	9	2	Massimo Tassabile 23                                    0
F9HIVO	DECIMAL	9	2	Imp Fisso 23                                            0
F9FJVO	DECIMAL	9	2	Importo Scalare 24                                      0
F9F7VO	DECIMAL	9	2	Minimo Tassabile 24                                     0
F9GVVO	DECIMAL	9	2	Massimo Tassabile 24                                    0
F9HJVO	DECIMAL	9	2	Imp Fisso 24                                            0
F9FKVO	DECIMAL	9	2	Importo Scalare 25                                      0
F9F8VO	DECIMAL	9	2	Minimo Tassabile 25                                     0
F9GWVO	DECIMAL	9	2	Massimo Tassabile 25                                    0
F9HKVO	DECIMAL	9	2	Imp Fisso 25                                            0

"----------------------------------------"

SELECT DISTINCT RTNB
FROM 
MLD_BE101X.UPAJREP

SELECT *
FROM 
MLD_BE101X.UPAJREP
WHERE EACD = 'BCNZ001'


UPAJREP		Tariffe -listini- Rap-Arr. Codigos de redondeo para tarifas

EACD	CHAR	8		Cd listino tariffa																BCNZ001	BCNZ001	BCNZ001	BCNZ001	BCNZ001	
RTNB	DECIMAL	3	0	Progr Riga Rapporto -  Rap - Reporte - Informe(1, 2, 3, 4, 45, 5, 6, 7)     	1       2       3       4       5
VNCD	CHAR	6		Codice Rapporto -  Rap - Reporte - Informe         								M3/270  P3/270  L/850   P/850   REAL
E8CQ	CHAR	6		Codice Arrotondamento-Redondeo   												N       N       N       N       N

"----------------------------------------"

UGB2REP  Arrotondamenti.Physic (S8 S1577286708 S1577446583) Redondeos 

SELECT *
FROM 
MLD_BE101X.UGB2REP

01	B2E8CQ	CHAR	6		Codice Arrotondamento-Redondeo 		KG-1				KG-10				KG-10C						KG-10M							KG-10Q
02	B2DAUX	CHAR	35		Descr Arrotondamento-Redondeo       REDONDEO A 1 KG     REDONDEO A 10 KG    REDONDEO 100-10, 99999-100  REDONDEO 1000-10, 99999-100     REDONDEO 500-10, 99999-100
03	B2Q4SS	CHAR	2		Valore da Arrotondare               PL                  PL                  PL                          PL                              PL
04	B2B1ST	CHAR	1		Flag Arrotondamento-Redondeo  1                                                                                                         
05	B2B2ST	CHAR	1		Flag Arrotondamento-Redondeo  2                                                                                                         
06	B2RGSS	CHAR	1		Flag Arrotondamento-Redondeo  3                                                                                                         
07	B2ABVN	CHAR	10		Utente                              MLDRODRIGU          MLDRODRIGU          MLDRODRIGU                  MLDRODRIGU                      MLDRODRIGU
08	B2A5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento             1161202             1161202             1161202                     1161202                         1161202
09	B2BQST	CHAR	1		Stato record                                                                                            
                                                                                                                                            



"----------------------------------------"

UPD5REP		Tariffe -imp- mk14. Tarifas especiales, detalle no importante

SELECT DISTINCT D5EACD 
FROM 
MLD_BE101X.UPD5REP

Es lo que hay en esta tabla:
D5EACD
21046761
17216918
17212295
16153696

D5EACD	CHAR	8		Cd listino tariffa
D5EKDT	DECIMAL	7	0	Dt inizio validità
D5QMBR	DECIMAL	7	2	Lunghezza CM
D5QLBR	DECIMAL	7	2	Larghezza CM
D5QNBR	DECIMAL	7	2	Altezza CM
D5N1SS	CHAR	1		Tp di Calcolo
D5WMVA	DECIMAL	7	2	Imp fisso o         Percentuale
D5ELDT	DECIMAL	7	0	Dt fine validità

"----------------------------------------"

UUD0REP Tariffe -imp- mk02.     - Listino tariffas ??	- esta tabla es parecida a UCO8REP diferencia es: D0 ANPC	DECIMAL	7	3
                                
SELECT *
FROM 
MLD_BE101X.UUD0REP
LIMIT 100

D0EACD	CHAR	8		Cd listino tariffa	16153962
D0EKDT	DECIMAL	7	0	Dt inizio validità  1161209
D0A2QT	DECIMAL	11	2	Fino a              100000.00
D0ANPC	DECIMAL	7	3	Percentuale         .350
D0A9VA	DECIMAL	9	2	Minimo Tassabile    0
D0BAVA	DECIMAL	11	2	Massimo Tassabile   0
D0BBVA	DECIMAL	9	2	Imp Fisso           15.00
D0AMPC	DECIMAL	5	2	% Sconto            0
D0FKSS	CHAR	1		Competenze incluse  
D0FMSS	CHAR	2		Tipo sconto tariffe 
D0ELDT	DECIMAL	7	0	Dt fine validità    0

"----------------------------------------"

UUD4REP		Tariffe -imp- mk06. 

SELECT *
FROM 
MLD_BE101X.UUD4REP
LIMIT 100

D4EACD	CHAR	8		Cd listino tariffa	16108504
D4EKDT	DECIMAL	7	0	Dt inizio validità  1160101
D4BBVA	DECIMAL	9	2	Imp Fisso           890.00
D4AMPC	DECIMAL	5	2	% Sconto            0
D4FKSS	CHAR	1		Competenze incluse  
D4FMSS	CHAR	2		Tipo sconto tariffe 
D4ELDT	DECIMAL	7	0	Dt fine validità    1171231

"----------------------------------------"

UUD8REP		Tariffe -testata- Cabecera Tarifas

SELECT *
FROM 
MLD_BE101X.UUD8REP
WHERE D8AHCD = '13'
  AND D8CWCD = 'TE'
  AND D8D5CD = '00'
  AND D8B6CD = 'R'
  AND D8ECCD = 'SC1234'

SELECT *
FROM MLD_BE101X.UUD8REP
JOIN MLD_BE101X.UUDXREP 
 ON DXAHCD = D8AHCD
AND DXCWCD = D8CWCD
AND DXD5CD = D8D5CD
AND DXB6CD = D8B6CD
AND DXECCD = D8ECCD
WHERE D8ECCD = 'SC1234'
ORDER BY DXD6CD


01	D8AHCD	CHAR	2		Cd filiale													13
02	D8CWCD	CHAR	2		Cd servizio                                                 TE
03	D8D5CD	CHAR	2		Cd Categoria Tariffa '00' - 'AC' - 'AL' - 'GE'              00
04	D8B6CD	CHAR	1		Cd tp tariffa - 'R' - 'C' - 'O' - 'S' - 'G' - 'T'           R
05	D8ECCD	CHAR	6		Cd tariffa                                                  SC1234
06	D8BZTX	CHAR	50		Descr Tariffa                                               SC TEST TARIFA TEST
07	D8AAAL	CHAR	15		Descr Abbr Tariffa                                          SC TEST TARIFA
08	D8A4QT	DECIMAL	8	3	Rapp Peso-M3                                                0
09	D8A5QT	DECIMAL	8	3	Rapp Peso-Ml                                                0
10	D8A6QT	DECIMAL	8	3	Rapp Colli-M3                                               0
11	D8A7QT	DECIMAL	8	3	Minimo Tassabile Kg                                         0
12	D8A8QT	DECIMAL	5	2	Arrotondamento-Redondeo -Redondeo                           0
13	D8K6QT	DECIMAL	5	2	Arrotondamento-Redondeo -Redondeo 2 UM                      0
14	D8AKCD	CHAR	2		Cd UM                                                       PL
15	D8AQCD	CHAR	4		Cd Divisa                                                   EUR
16	D8YQST	CHAR	1		Flag Rich Campo Obbligat                                    M
17	D8C9SS	CHAR	1		Flag Rich Campo Obbligat2                                   C
18	D8DASS	CHAR	1		Flag Rich Campo Obbligat3                                   P
19	D8CATY	CHAR	1		Tariffa Contiene Nolo                                       
20	D8CBTY	CHAR	1		Flag Tariffe -Testata- 1                                    
21	D8CCTY	CHAR	1		Flag Tariffe -Testata- 2                                    
22	D8CDTY	CHAR	1		Flag Tariffe -Testata- 3                                    
23	D8CETY	CHAR	1		Flag Tariffe -Testata- 4                                    
24	D8CFTY	CHAR	1		Flag Tariffe -Testata- 5                                    
25	D8BWTX	CHAR	60		Note                                                        NOTAS SC TEST TARIFA TEST
26	D8BIDT	DECIMAL	7	0	Dt inizio contratto - Inicio 								1220119
27	D8BJDT	DECIMAL	7	0	Dt Scad Contratto - Vencimiento                             1220131
28	D8GMDT	DECIMAL	7	0	Data inserimento - Entrada                                  1220119
29	D8SWTX	CHAR	15		Rifer                                                       
30	D8C3DT	DECIMAL	7	0	Dt Riferimenti - Referencia                              	0
31	D8ATCC	CHAR	4		Codice Commerciale                                          
32	D8U2CE	CHAR	4		Codice Commeciale Cliente                                 
33	D8HCCR	CHAR	2		Cd filiale Tariffa Std - Tarifa Standard Combinada			25
34	D8HDCR	CHAR	2		Cd servizio Tariffa Std - Tarifa Standard Combinada         TE
35	D8HBCR	CHAR	2		Cd Categoria Tariffa Std - Tarifa Standard Combinada        00
36	D8AIPX	CHAR	1		Cd tp tariffa Std - Tarifa Standard Combinada               T
37	D8HPCE	CHAR	6		Cd tariffa Std - Tarifa Standard Combinada                  23GR21
38	D8DGCD	CHAR	2		Cd Filiale Ult Aggiornam+                                   
39	D8ABVN	CHAR	10		Utente                                                      MLDSCELIS
40	D8A5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento                                     1220119
41	D8BQST	CHAR	1		Stato record                                                

"----------------------------------------"

UUDXREP Tariffe -sez- secciones

SELECT *
FROM 
MLD_BE101X.UUDXREP
WHERE DXAHCD = '13'
  AND DXCWCD = 'TE'

SELECT *
FROM 
MLD_BE101X.UUDXREP
WHERE DXAHCD = '13'
  AND DXCWCD = 'TE'
  AND DXD5CD = '00'
  AND DXB6CD = 'R'
  AND DXECCD = 'SC1234'
  AND DXD6CD = 'AA'
			
01	DXAHCD	CHAR	2			Cd filiale												13
02	DXCWCD	CHAR	2			Cd servizio                         					TE
03	DXD5CD	CHAR	2			Cd Categoria Tariffa '00' - 'AC' - 'AL' - 'GE'          00
04	DXB6CD	CHAR	1			Cd tp tariffa - 'R' - 'C' - 'O' - 'S' - 'G' - 'T'     	R
05	DXECCD	CHAR	6			Cd tariffa                          					SC1234
06	DXD6CD	CHAR	2			Cd sezione                          					AA
07	DXCMPG	DECIMAL	3	0		nr riga 2                           					1
08	DXRTRX	CHAR	50			Descrizione sezione                 					Flete
09	DXVJCD	CHAR	6			Codice Mercato                      					EU40
10	DXAFCD	CHAR	3			Cd nazione                          					ES
11	DXVNCD	CHAR	6			Codice Rapporto -  Rap - Reporte - Informe              L/1800
12	DXE8CQ	CHAR	6			Codice Arrotondamento-Redondeo               			KG-10M
13	DXDBSS	CHAR	2			Tipo pratica                        					PR
14	DXBECD	CHAR	4			Cd Merceologica                     					ACM
15	DXD4CD	CHAR	2			Cd Categoria Merce                  					AE
16	DXFLSS	CHAR	1			Esposizione in polizza              					
17	DXEDCD	CHAR	2			Cd resa                             					DA
18	DXK3ST	CHAR	1			Tp raggruppamento                   					
19	DXKENB	DECIMAL	5	2		Sequenza - secuencia Sezione                    		29.00
20	DXIBCD	CHAR	6			Cd Cliente Committente              					293433
21	DXOCCD	CHAR	6			Cd Cliente Mittente                 					293433
22	DXGSCD	CHAR	6			Cd Cliente Destinatario             					293433
23	DXL2CD	CHAR	4			Cd regione                          					IT50
24	DXGPCQ	CHAR	4			Cd Regione Arrivo                   					ESCB
25	DXIACD	CHAR	2			Cd servizio 2                       					CM
26	DXUDCD	CHAR	3			Codice Compagnia                    					ROM
27	DXA0CC	CHAR	6			Codice Compagnia Navig              					AGUNSA
28	DXAABD	CHAR	4			Cd linea                            					BCN1
29	DXVITY	CHAR	2			Tipo Trasporto Sudd Parte           					ST
30	DXN3CR	CHAR	3			Cd nazione Sudd Partenza            					AD
31	DXYUBR	DECIMAL	5	0		Progr Suddivisione Parten           					11003
32	DXVHTY	CHAR	2			Tipo Trasporto Sudd Arriv           					ST
33	DXN4CR	CHAR	3			Cd nazione Sudd Arrivo              					AD
34	DXYVBR	DECIMAL	5	0		Progr Suddivisione  Arrivo          					12203
35	DXEKDT	DECIMAL	7	0		Dt inizio validità                  					0
36	DXELDT	DECIMAL	7	0		Dt fine validità                    					0
37	DXNLNB	DECIMAL	5	2		Sequenza - secuencia Stampa Sezione             		29.00
38	DXB0SX	CHAR	2			Tipo Valore di Confronto            					
39	DXAAVV	DECIMAL	10	3		Importo di Confronto                					0
40	DXRPSS	CHAR	1			Pubblicazione Sezione               					S
41	DXB7ST	CHAR	1			Stato Sezione                       					
42	DXRZSS	CHAR	1			Flag Tariffe -sez- 3                					
43	DXC4PC	DECIMAL	5	2		Percentuale Calcolo Giac            					0

"----------------------------------------"

UUDWREP		Tariffe -elem - elementos-.
  
SELECT *
FROM 
MLD_BE101X.UUDWREP
WHERE DWD6CD = 'AE'
  AND DWABVN = 'NSCMAZZOLE'
  AND DWA5DT = 1211118
  
SELECT *
FROM 
MLD_BE101X.UUDWREP
WHERE DWAHCD = '13'
  AND DWCWCD = 'TE'
  AND DWD5CD = '00'
  AND DWB6CD = 'R'
  AND DWECCD = 'SC1234'
  AND DWD6CD = 'AA'

SELECT *
FROM MLD_BE101X.UUDXREP
JOIN MLD_BE101X.UUDWREP
  ON DWAHCD = DXAHCD
 AND DWCWCD = DXCWCD
 AND DWD5CD = DXD5CD
 AND DWB6CD = DXB6CD
 AND DWECCD = DXECCD
 AND DWD6CD = DXD6CD
 AND DWCMPG = DXCMPG
WHERE DWECCD = 'SC1234'
ORDER BY DWD6CD

01	DWAHCD	CHAR	2		Cd Filiale Tariffa									13							11
02	DWCWCD	CHAR	2		Cd Servizio Tariffa             					TE							TI
03	DWD5CD	CHAR	2		Cd Categoria Tariffa '00' - 'AC' - 'AL' - 'GE'  	00							00
04	DWB6CD	CHAR	1		Cd tp tariffa - 'R' - 'C' - 'O' - 'S' - 'G' - 'T'	R							C
05	DWECCD	CHAR	6		Cd Tariffa                      					SC1234						103833
06	DWD6CD	CHAR	2		Cd sezione                      					AA							AE
07	DWCMPG	DECIMAL	3	0	Nr Riga 2                       					1							1
08	DWARCD	CHAR	8		Cd 1 Elemento                   					AD							TBARCELO
09	DWAAAF	CHAR	8		Cd 2 Elemento                   					AD300						ES46
10	DWAAAG	CHAR	8		Cd 3 Elemento                   												
11	DWAAAH	CHAR	8		Cd 4 Elemento                   												
12	DWBVTX	CHAR	45		Descr Linea Tariffa             					Andorra - Ordino			Entrega- Terminal MOLDTRANS BCN- ES-46 VALENC
13	DWAGSX	CHAR	6		Tipo Elemento                   					ZPART8						ZFIL
14	DWAHSX	CHAR	6		Secondo Tipo Elemento           					ZARR8						ZARR8
15	DWAISX	CHAR	6		Terzo Tipo Elemento             												
16	DWAJSX	CHAR	6		Quarto Tipo Elemento            												
17	DWEACD	CHAR	8		Cd listino tariffa              					BCNZ001						21051808
18	DWDCQT	DECIMAL	5	0	Qta Km                          					0							0
19	DWLUCD	CHAR	2		Cd provincia                    												
20	DWQQ98	CHAR	8		Cd Raggr x Stp Offerta          												
21	DWA1CD	CHAR	3		Cd Voce Fattura                 					ENT							ENT
22	DWP5CD	CHAR	4		Cd Divisa Elemento              												
23	DWHOCR	CHAR	3		Codice Frequenza Trasporto      					NW1							
24	DWHPCR	CHAR	3		Codice Transit Time             					01							
25	DWO1BR	DECIMAL	1	0	Livello Preferenza              					0							0
26	DWJ1TY	CHAR	1		Flag Tariffe -elem - elementos- 1           												
27	DWJ2TY	CHAR	1		Flag Tariffe -elem - elementos- 2           												
28	DWJ3TY	CHAR	1		Flag Tariffe -elem - elementos- 3           												
29	DWJ4TY	CHAR	1		Flag Tariffe -elem - elementos- 4           												
30	DWJ5TY	CHAR	1		Flag Tariffe -elem - elementos- 5           												
31	DWDGCD	CHAR	2		Cd Filiale Ult Aggiornam        												
32	DWABVN	CHAR	10		Utente                          												NSCMAZZOLE
33	DWA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento         					0							1211118
34	DWBQST	CHAR	1		Stato record                                        

"----------------------------------------"

UUDZREP		Tariffe -imp- mk01.    

SELECT *
FROM 
MLD_BE101X.UUDZREP
WHERE DZEACD = 'BCNZ001'
  AND DZEKDT = 1170101

SELECT *
FROM 
MLD_BE101.UUDZREP
WHERE DZEACD = '20044075'
  AND DZEKDT = 1220101

      
DZEACD	CHAR	8		Cd listino tariffa	BCNZ001	BCNZ001	BCNZ001	BCNZ001	BCNZ001	BCNZ001	BCNZ001BCNZ001 --- 20044074	20044074	20044074
DZEKDT	DECIMAL	7	0	Dt inizio validità  1170101 1170101 1170101 1170101 1170101 1170101 1170101 --- 1220101     1220101     1220101
DZA2QT	DECIMAL	11	2	Fino a              5.00    750.00  1000.00 1500.00 2000.00 2500.00 3000.00 --- 5.00        10.00       20.00
DZA8VA	DECIMAL	11	2	Imp Unitario (1)    0       2.52    2.46    2.21    1.86    1.69    1.63    --- 0           0           0
DZA9VA	DECIMAL	9	2	Minimo Tassabile    0       14.80   18.90   24.60   33.15   37.20   42.25   --- 0           0           0
DZBAVA	DECIMAL	11	2	Massimo Tassabile   0       0       0       0       0       0       0       --- 0           0           0
DZBBVA	DECIMAL	9	2	Imp Fisso           2.42    0       0       0       0       0       0       --- 4.05        4.05        4.92
DZAMPC	DECIMAL	5	2	% Sconto            0       0       0       0       0       0       0       --- 0           0           0
DZFKSS	CHAR	1		Competenze incluse                                                          ---                         
DZFMSS	CHAR	2		Tipo sconto tariffe                                                         ---                         
DZELDT	DECIMAL	7	0	Dt fine validità    0       0       0       0       0       0       0       --- 1221231     1221231     1221231

SELECT *
FROM MLD_BE101X.UUD8REP
JOIN MLD_BE101X.UUDXREP 
  ON DXAHCD = D8AHCD
 AND DXCWCD = D8CWCD
 AND DXD5CD = D8D5CD
 AND DXB6CD = D8B6CD
 AND DXECCD = D8ECCD
JOIN MLD_BE101X.UUDWREP
  ON DWAHCD = DXAHCD
 AND DWCWCD = DXCWCD
 AND DWD5CD = DXD5CD
 AND DWB6CD = DXB6CD
 AND DWECCD = DXECCD
 AND DWD6CD = DXD6CD
 AND DWCMPG = DXCMPG
JOIN MLD_BE101X.UUDZREP
  ON DWEACD = DZEACD
WHERE D8ECCD = 'SC1234'
ORDER BY DXD6CD



"----------------------------------------"

UUDYREP		Tariffe -listini-.Phy (S8 S1577290320 S1577446583) Parametrizacion de tarifas

SELECT *
FROM 
MLD_BE101X.UUDYREP
WHERE DYEACD = 'BCNZ001'

DYEACD	CHAR	8		Cd listino tariffa				BCNZ001									--	21051808	21051809	21051810
DYA3TX	CHAR	60		Descr Listino Tariffa       	BCN Zona 001 Distribucion Autonomos		--	                        	
DYEBCD	CHAR	2		Cd addebito - débito - adeudo   02	                                	--	06          06          06
DYHHCD	CHAR	4		CAV cd divisa               	                                	--	                        
DYBKVA	DECIMAL	11	6	CAV cambio                  	0	                                	--	0           0           0
DYGMST	CHAR	1		Flag tp cambio              		                                	--	                        
DYGNST	CHAR	1		Flag Reale Tassato          	L	                                	--	                        
DYA1CD	CHAR	3		Cd voce fattura             	ENT	                                	--	                        ENT
DYAQCD	CHAR	4		Cd Divisa                   	EUR	                                	--	EUR         EUR         EUR
DYDGCD	CHAR	2		Cd Filiale Ult Aggiornam    		                                	--	                        
DYABVN	CHAR	10		Utente                      	MLDFONTANE	                        	--	NSCMAZZOLE  NSCMAZZOLE  NSCMAZZOLE
DYA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento     	1171026	                            	--	1211118     1211118     1211118
DYBQST	CHAR	1		Stato record                

"----------------------------------------"

UGCQREP		Elementi Sezione Tentat  

SELECT *
FROM 
MLD_BE101X.UGCQREP
WHERE CQD6CD = 'AA'
  AND CQCWCD = 'TE'
  AND CQIRNB = 29
  
  
CQCWCD	CHAR	2		Cd servizio						TE
CQD6CD	CHAR	2		Cd sezione                      AA
CQIRNB	DECIMAL	3	0	Numero Riga                     29
CQAGSX	CHAR	6		Tipo Elemento                   ZPART8
CQAHSX	CHAR	6		Secondo Tipo Elemento           ZARR3
CQAISX	CHAR	6		Terzo Tipo Elemento             
CQAJSX	CHAR	6		Quarto Tipo Elemento            
CQAKSX	CHAR	1		addebito - débito - adeudo Ritiro                 
CQALSX	CHAR	1		addebito - débito - adeudo Consegna               
CQK3ST	CHAR	1		Tp raggruppamento               1
CQLTNB	DECIMAL	5	2	Sequenza - secuencia Lettura    87.00
CQGYST	CHAR	1		Tp fatturare a                  D
CQQCV1	CHAR	50		PLEX Formato Desc Lin Tar       

"----------------------------------------"

UPBAREP  Elementi Sezione Controlli.   

SELECT *
FROM 
MLD_BE101X.UPBAREP
WHERE D6CD = 'AA'
  AND CWCD = 'TE'        

SELECT CWCD, COUNT(D6CD)
FROM 
MLD_BE101X.UPBAREP
GROUP BY CWCD

CWCD	CHAR	2		Cd servizio						TE	TE	TE	TE	TE	TE	TE	TE	TE	TE
D6CD	CHAR	2		Cd sezione          			AA  AA  AA  AA  AA  AA  AA  AA  AA	AA
OP82CA	CHAR	1		Numero Elemento     			1   1   1   1   1   2   2   2   2 	2
OP82DA	CHAR	2		Tabella Correlata   			21  16  11  25  32  21  16  11  25	32
OP82EA	DECIMAL	3	0	Sequenza - secuencia Controllo  10  20  30  40  90  10  20  30  40	90

"----------------------------------------"

SELECT *
FROM 
MLD_BE101X.UUDQREP
WHERE DQD6CD = 'AA'

SELECT DQCWCD, DQD6CD, DQACST, COUNT(*)
FROM 
MLD_BE101.UUDQREP
GROUP BY DQCWCD, DQD6CD, DQACST
ORDER BY DQCWCD, DQD6CD, DQACST


UUDQREP Elementi sezione   

DQCWCD	CHAR	2		Cd servizio						DE			DI			MN			M2			NN			TE			TI
DQD6CD	CHAR	2		Cd sezione                  	AA          AA          AA          AA          AA          AA          AA
DQACST	NUMERIC	1	0	Nr elementi sezione         	2           2           2           1           2           2           2
DQAQTX	CHAR	8		Descr 1 elemento            	Zona Rec    Zona Rec    Zona Rec    Zona Ent    Zona Rec    Zona Rec    Zona Rec
DQARTX	CHAR	8		Descr 2 Elemento            	Zona Ent    Zona Ent    Zona Ent                Zona Ent    Zona Ent    Zona Ent
DQASTX	CHAR	8		Descr 3 Elemento            	                                                                        
DQAAAD	CHAR	8		Descr 4 Elemento            	                                                                        
DQA1CD	CHAR	3		Cd voce fattura             	AAA         AAA         AAA         ENT         AAA         AAA         AAA
DQBSST	CHAR	1		Sopprimere Voce se = 0      	                                                                        
DQQCV1	CHAR	50		PLEX Formato Desc Lin Tar   	#1 - #2     #1 - #2     #1 - #2     #1          #1 - #2     #1 - #2     #1 - #2
DQB0ST	CHAR	1		Flag Elementi Sezione 1     	                                                                        
DQQXSS	CHAR	1		Flag Elementi Sezione 2     	                                                                        
DQQ0SS	CHAR	1		Flag Elementi Sezione 3     	                                                                        
DQDGCD	CHAR	2		Cd Filiale Ult Aggiornam+   	11          11          11                      11          11          11
DQABVN	CHAR	10		Utente                      	NSSMARCELL  NSSMARCELL  MLDRODRIGU  MLDPORTOLE  NSSMARCELL  NSSMARCELL  NSSMARCELL
DQA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento     	1170330     1170330     1180912     1210604     1170330     1170525     1170330
DQBQST	CHAR	1		Stato record                	

"----------------------------------------"

UAJZREP Sequenza - secuencia Linee.Physic (S8 S1577289278 S1577446583)      NSSMARCO        

SELECT *
FROM 
MLD_BE101X.UAJZREP

JZAABD	CHAR	4		Cd linea					EX	NZ	REC	.	TBCN	TVLC	TMDR	TALC	TSEV	TBIL	TIRU	FI01	HU01
JZKNNB	DECIMAL	3	0	Sequenza - secuencia Linea  0   0   0   0   0       0       0       0       0       0       0       0       0

"----------------------------------------"

UETPREP Codici Merceologici I (S8 S1577287148 S1577446583)

SELECT *
FROM 
MLD_BE101X.UETPREP

TPVBCC	CHAR	3		Codice merce - mercancia ISTAT			001
TPVBTX	CHAR	35		Descrizione merce - mercancia ISTAT     ISTAT 001
TPDGCD	CHAR	2		Cd Filiale Ult Aggiornam    
TPABVN	CHAR	10		Utente                      			0
TPA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento
TPBQST	CHAR	1		Stato record

"----------------------------------------"

SELECT *
FROM 
MLD_BE101X.UUAKREP
ORDER BY AKBECD

UUAKREP Classi Merceologiche - mercancia. (S8 S1577291037 S1577446583)

AKBECD	CHAR	4		Cd Merceologica					ACC			ACEI		ACM	
AKATTX	CHAR	35		Descr Merceologica          	ACCESORIOS  ACEITUNAS   ACCESORIOS PARA MASCOTAS
AKD4CD	CHAR	2		Cd Categoria Merce - mercancia  			AE          
AKWOCD	CHAR	5		Ordinale                                            
AKFQQT	DECIMAL	5	3	Densità                     	0           0           0
AKKLCD	CHAR	3		Grado max di riempimento                            
AKWPTX	CHAR	10		Classe di pericolosità                              
AKD5CD	CHAR	2		Cd Categoria Tariffa                                
AKALCD	CHAR	2		Cd Assoggettamento                                  
AKVMCD	CHAR	7		Codice Commodity                                    
AKDGCD	CHAR	2		Cd Filiale Ult Aggiornam                            
AKABVN	CHAR	10		Utente                      	MLDFARRE    MLDAPEREZ   MLDJJIMENE
AKA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento     	1201113     1170822     1201001
AKBQST	CHAR	1		Stato record                

"----------------------------------------"

SELECT *
FROM 
MLD_BE101X.UCN9REP

UCN9REP Rapporti - Reporte - Informe. tab (S8 S1577288247 S1577446583)

N9VNCD	1	CHAR	6		Codice Rapporto -  Rap - Reporte - Informe				L/1800			L/1850			L/1950
N9R6TX	2	CHAR	25		Descr Rapporto -  Rap - Reporte - Informe              	ML = 1800 Kg    ML = 1850 Kg    ML = 1950 Kg
N9O0NB	3	DECIMAL	7	2	Coefficiente                							1800.00         1850.00         1950.00
N9QDSS	4	CHAR	2		Valore di Rapporto -  Rap - Reporte - Informe          	PL              PL              PL
N9BUST	5	CHAR	2		Valore per Cofficente       							ML              ML              ML
N9FTST	6	CHAR	1		Operatore                   							*               *               *
N9QLSS	7	CHAR	1		Flag Rapporto -  Rap - Reporte - Informe 1                                             
N9QMSS	8	CHAR	1		Flag Rapporto -  Rap - Reporte - Informe 2                                             
N9ABVN	9	CHAR	10		Utente                      							MLDRODRIGU      MLDRODRIGU      MLDRODRIGU
N9A5DT	10	DECIMAL	7	0	Dt Ultimo Aggiornamento     							1161202         1161202         1161202
N9RUST	11	CHAR	1		Stato Record Rapporto -  Rap - Reporte - Informe       


"----------------------------------------"
SELECT *
FROM 
MLD_BE101X.UUDOREP
WHERE DOD4CD = 'AE'

UUDOREP Categorie merce - mercancia.Physi (S8 S1577290427 S1577446583)      NSSMARCO        

1	DOD4CD		CHAR	2		Cd Categoria Merce - mercancia				AC			AL			CH			CO
2	DOAAAA		CHAR	25		Descr Categoria Merce - mercancia           ACCESORIOS  COMESTIBLES QUÍMICOS    CONFECCIONES
3	DODGCD		CHAR	2		Cd Filiale Ult Aggiornam        			01          01          01          01
4	DOABVN		CHAR	10		Utente                          			MLDAPEREZ   MLDRODRIGU  MLDRODRIGU  MLDRODRIGU
5	DOA5DT		DECIMAL	7	0	Dt Ultimo Aggiornamento         			1170314     1141202     1141202     1141202
6	DOBQST		CHAR	1		Stato record                    			A           A           A           A


"----------------------------------------"

SELECT *
FROM 
MLD_BE101X.UUD6REP
WHERE D6EBCD = '10'

UUD6REP Tipi - Tipo addebito - débito - adeudo. 

01	D6EBCD	CHAR	2		Cd addebito - débito - adeudo 			10				
02	D6BXTX	CHAR	50		Descr addebito - débito - adeudo        Escalado e importe por ML
03	D6CKTX	CHAR	15		Descr Abbr addebito - débito - adeudo   ML
04	D6GPST	CHAR	1		Tipo Maschera - Mascara              	1
05	D6DRTY	CHAR	1		Tipo Calcolo Elemento       			Q
06	D6CZTY	CHAR	2		Tipo Elemento Calcolato     			02
07	D6KPCD	CHAR	3		Tipo UM                     			ML
08	D6DGCD	CHAR	2		Cd Filiale Ult Aggiornam    			11
09	D6ABVN	CHAR	10		Utente                      			MLDRODRIGU
10	D6A5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento     			1161020
11	D6BQST	CHAR	1		Stato record                			

"----------------------------------------"

SELECT *
FROM 
MLD_BE101X.UFBPREP
WHERE BPEBCD = '10'

UFBPREP	Tipi - Tipo addebito - débito - adeudo in Lingua.                                		        

01	BPEBCD		CHAR	2		Cd addebito - débito - adeudo				10						10
02	BPAACD		CHAR	1		Cd Lingua               					1                       5
03	BPCMUX		CHAR	50		Descr addebito - débito - adeudo    		Escalado e importe x ML Escalado e importe x ML
04	BPCNUX		CHAR	15		Intestazione Colonna - Columna 1  			Hasta ML                Hasta ML
05	BPCOUX		CHAR	15		Intestazione Colonna - Columna 2  			Importe/ML              Importe/ML
06	BPCPUX		CHAR	15		Intestazione Colonna - Columna 3  			Importe/exp             Importe/exp
07	BPCQUX		CHAR	15		Intestazione Colonna - Columna 4  			Mínimo                  Mínimo
08	BPCRUX		CHAR	15		Intestazione Colonna - Columna 5  			Máximo                  Máximo
09	BPCSUX		CHAR	15		Intestazione Colonna - Columna 6  			Dto                     Dto

SELECT *
FROM MLD_BE101X.UUD6REP
JOIN MLD_BE101X.UFBPREP
  ON BPEBCD = D6EBCD
-- WHERE BPAACD = '1'


"----------------------------------------"

SELECT *
FROM 
MLD_BE101X.UUIMREP

UUIMREP	Regioni - Regiones. 

1	IML2CD		CHAR	4		Cd regione					AD	
2	IMAFTX		CHAR	35		Descr Regione               ANDORRA
3	IMDGCD		CHAR	2		Cd Filiale Ult Aggiornam    
4	IMABVN		CHAR	10		Utente                      NSSMARCELL
5	IMA5DT		DECIMAL	7	0	Dt Ultimo Aggiornamento     1170606
6	IMBQST		CHAR	1		Stato record                

"----------------------------------------"
SELECT *
FROM MLD_BE101X.UPD2REP
WHERE D2AFCD = 'ES'

UPD2REP Assegnazione Zone.  Asignación Zonas

01	D2AFCD	CHAR	3		Cd nazione						ES	ES		ES		ES		ES		ES		... 	ES
02	D2QBBR	DECIMAL	9	0	Nr Riga Assegnazione            1   2       3       4       5       6       ... 	10
03	D2MPCE	CHAR	10		Codice Postale Internazionale       01      02      03      04      05      ... 	08001
04	D2A9SG	CHAR	8		ID Codice Postale                                                           ... 	
05	D2AABD	CHAR	4		Cd Linea                                                                    ... 	
06	D2ANCA	CHAR	8		Cd Partenza Arrivo              ES  ES01    ES02    ES03    ES04    ES05    ... 	ES08001
07	D2M1ST	CHAR	1		Flag Inoltro                                                                ... 	
08	D2E2CA	CHAR	8		Cd Partenza Arrivo  Costi       ES  ES01    ES02    ES03    ES04    ES05    ... 	ES08001
09	D2NRSS	CHAR	1		Flag inoltro costi                                                          ... 	
10	D2KONB	DECIMAL	3	0	Sequenza Località               0   0       0       0       0       0       ... 	0

"----------------------------------------"

UGBSREP	Suddivisione Nazioni 

SELECT *
FROM 
MLD_BE101X.UGBSREP
WHERE BSD8SS = 'ST'
  AND BSAFCD = 'AD'  
  AND BSJ6NB = 11003 
   OR BSJ6NB = 12203
  AND BSAPCD = '293433'


01	BSD8SS	CHAR	2		Tipo Trasporto				ST
02	BSAFCD	CHAR	3		Cd nazione                  AD
03	BSJ6NB	DECIMAL	5	0	Progr Suddivisione          11003
04	BSU2ST	CHAR	1		Tipo Suddivisione Nazione   C
05	BSAPCD	CHAR	6		Cd Cliente                  009388
06	BSC3UX	CHAR	50		Descrizione Suddivisione    GRUPO MINOR 9000 SL TE 11003

"----------------------------------------"

UGBVREP	Suddivisione Nazioni 

SELECT *
FROM 
MLD_BE101X.UGBVREP
WHERE BVD8SS = 'ST'
  AND BVAFCD = 'AD'  
  AND BVJ6NB = 11003
  
SELECT *
FROM 
MLD_BE101X.UGBVREP
WHERE BVD8SS = 'ST'
  AND BVAFCD = 'AD'  
  AND BVJ6NB = 12203

01	BVD8SS	CHAR	2		Tipo Trasporto				ST		ST		ST		ST		ST		ST		ST		ST
02	BVAFCD	CHAR	3		Cd nazione                  AD    	AD      AD      AD      AD      AD      AD      AD
03	BVJ6NB	DECIMAL	5	0	Progr Suddivisione          11003   12203   12203   12203   12203   12203   12203   12203
04	BVJ8NB	DECIMAL	5	0	Progr Riga Suddivisione     1    	1       2       3       4       5       6       7
05	BVEWCQ	CHAR	8		CAP-Zona 1                  50    	AD700   AD1     AD2     AD3     AD4     AD5     AD6
06	BVEXCQ	CHAR	8		CAP-Zona 2                  50    	AD700   AD1     AD2     AD3     AD4     AD5     AD6
07	BVEYCQ	CHAR	8		Codice Elemento tariffa     Z001    009     009     009     009     009     009     009

SELECT *
FROM MLD_BE101X.UGBSREP
JOIN MLD_BE101X.UGBVREP
  ON BVD8SS = BSD8SS
 AND BVAFCD = BSAFCD
 AND BVJ6NB = BSJ6NB
WHERE BSD8SS = 'ST'
  AND BSAFCD = 'AD'  
  AND BSJ6NB = 11003 
  AND BSAPCD = '293433' 

SELECT *
FROM MLD_BE101X.UGBSREP
JOIN MLD_BE101X.UGBVREP
  ON BVD8SS = BSD8SS
 AND BVAFCD = BSAFCD
 AND BVJ6NB = BSJ6NB
WHERE BSD8SS = 'ST'
  AND BSAFCD = 'AD'  
  AND BSJ6NB = 11003 

SELECT *
FROM MLD_BE101X.UGBSREP
JOIN MLD_BE101X.UGBVREP
  ON BVD8SS = BSD8SS
 AND BVAFCD = BSAFCD
 AND BVJ6NB = BSJ6NB
WHERE BSD8SS = 'ST'
  AND BSAFCD = 'AD'  
  AND BSJ6NB = 12203 

"----------------------------------------"

SELECT *
FROM 
MLD_BE101X.UUGPREP

UUGPREP		Modo di trasporto.Phy (S8 S1577289791 S1577446583)

01	GPP01P	CHAR	1		Cd modo di trasporto		3						1					2						4				5
02	GPGETX	CHAR	35		Descr Modo di Trasporto     TRASPORTO SU STRADA     TRASPORTO MARITTIMO TRASPORTO PER FERROVIA  TRASPORTO AEREO SPEDIZIONI POSTALI
03	GPDGCD	CHAR	2		Cd Filiale Ult Aggiornam    01                      01                  01                      01              01
04	GPABVN	CHAR	10		Utente                      STS4                    STS4                STS4                    STS4            STS4
05	GPA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento     991223                  991223              991223                  991223          991223
06	GPBQST	CHAR	1		Stato record                                                                                    


"----------------------------------------"
SELECT *
FROM 
MLD_BE101X.UPC5REP

UPC5REP Frequenze Trasporto. Frecuencias de transporte

01	HOCR	CHAR	3		Codice Frequenza Trasporto				D				MO				TU					WE						TH					FR					SA					SU
02	ECV1	CHAR	50		Descrizione Frequenza Trasporto         CADA 10 DÍAS    Lunes - Monday  Martes - Tuesday    MIERCOLES - Wednesday   Jueves- Thursday    VIERNES - Friday    Sábado - Saturday   Domingo – Sunday
03	OPAUHA	DECIMAL	3	0	Nr Giorni Frequenza Trasporto           10              0               0                   0                       0                   0                   0                   0
04	OPAUIA	DECIMAL	3	0	Nr Ore Frequenza Trasporto              0               0               0                   0                       0                   0                   0                   0
05	OPAUJA	DECIMAL	3	0	Nr Minuti Frequenza Trasporto           0               0               0                   0                       0                   0                   0                   0
06	OPAUKA	CHAR	1		Giorni Frequenza Trasporto.Lunedi                       S                                                                                                                       
07	OPAULA	CHAR	1		Giorni Frequenza Trasporto.Martedi                                      S                                                                                                       
08	OPAUMA	CHAR	1		Giorni Frequenza Trasporto.Mercoledi                                                        S                                                                                   
09	OPAUNA	CHAR	1		Giorni Frequenza Trasporto.Giovedi                                                                                  S                                                           
10	OPAUOA	CHAR	1		Giorni Frequenza Trasporto.Venerdi                                                                                                      S                                       
11	OPAUPA	CHAR	1		Giorni Frequenza Trasporto.Sabato                                                                                                                           S                   
12	OPAUQA	CHAR	1		Giorni Frequenza Trasporto.Domenica                                                                                                                                             S


"----------------------------------------"

SELECT *
FROM 
MLD_BE101X.UPC6REP

UPC6REP Transit Time.    


01	HPCR	CHAR	3		Codice Transit Time			01		02		03		04		05		06		07		08		09		10		11
02	EDV1	CHAR	50		Descrizione Transit Time    1 DÍA   2 DÍAS  3 DÍAS  4 DÍAS  5 DÍAS  6 DÍAS  7 DÍAS  8 DÍAS  9 DÍAS  10 DÍAS 11 DÍAS
03	OPAUCA	DECIMAL	3	0	Giorni Minimo Durata        1       2       3       4       5       6       7       8       9       10      11
04	OPAUDA	DECIMAL	3	0	Ore Minimo Durata           0       0       0       0       0       0       0       0       0       0       0
05	OPAUEA	DECIMAL	3	0	Giorni Massimo Durata       1       0       0       0       0       0       0       0       0       0       0
06	OPAUFA	DECIMAL	3	0	Ore Massimo Durata          0       0       0       0       0       0       0       0       0       0       0

"----------------------------------------"

UBL8REP		UB	L8	REP			16				113			Tassazione -zdettaglio-3.        
UUEGREP		UU	EG	REP			17				111			Tassazione -zdettaglio-       
  
"----------------------------------------"
  
UBL7REP Tassazione -zdettaglio-2.      
SELECT *
FROM MLD_BE101.UBL7REP
WHERE L7ECCD = '011649'

1	L7AHCD	CHAR	2		Cd Filiale Tassazione				
2	L7ANAN	NUMERIC	4	0	Anno Tassazione
3	L7APPG	DECIMAL	6	0	Progr Tassazione
4	L7A1CD	CHAR	3		Cd Voce Fattura
5	L7MKNB	DECIMAL	3	0	Nr riga tassazione
6	L7MJC8	CHAR	8		Cd 1 Elemento
7	L7MKC8	CHAR	8		Cd 2 Elemento
8	L7F9CD	CHAR	8		Cd 3 Elemento
9	L7GACD	CHAR	8		Cd 4 Elemento
10	L7EBCD	CHAR	2		Cd addebito
11	L7DRTY	CHAR	1		Tipo Calcolo Elemento
12	L7CZTY	CHAR	2		Tipo Elemento Calcolato
13	L7MEVA	DECIMAL	13	2	Imp Voce Fattura Tariffa
14	L7A2QT	DECIMAL	11	2	Fino a
15	L7KAQT	DECIMAL	5	0	Fino a (1)
16	L7A3QT	DECIMAL	5	0	Fino a (2)
17	L7A8VA	DECIMAL	11	2	Imp Unitario (1) NON USARE
18	L7T8VO	DECIMAL	15	7	Imp Unitario (1) 15_7
19	L7BEVA	DECIMAL	11	2	Imp Unitario (2)
20	L7BFVA	DECIMAL	11	2	Imp Unitario (oltre)
21	L7BBVA	DECIMAL	9	2	Imp Fisso
22	L7ANPC	DECIMAL	7	3	Percentuale
23	L7A9VA	DECIMAL	9	2	Minimo Tassabile
24	L7BAVA	DECIMAL	11	2	Massimo Tassabile
25	L7KBQT	DECIMAL	5	0	Coefficiente di Moltiplicazione	
26	L7AMPC	DECIMAL	5	2	% Sconto
27	L7BCVA	DECIMAL	9	2	Imp GG nel Periodo
28	L7BDVA	DECIMAL	9	2	Imp GG Fuori Periodo
29	L7BGVA	DECIMAL	11	2	Oper Doganale
30	L7BHVA	DECIMAL	11	2	Oper Doganale c-o Cliente
31	L7BIVA	DECIMAL	11	2	Imp ogni Camion
32	L7BJVA	DECIMAL	11	2	Imp ogni Bolla
33	L7AQCD	CHAR	4		Cd Divisa
34	L7U6VA	DECIMAL	11	6	Cambio Listino
35	L7GNST	CHAR	1		Flag Reale Tassato
36	L7J1CD	CHAR	2		Cd Filiale Tariffa
37	L7QECD	CHAR	2		Cd Servizio Tariffa
38	L7D5CD	CHAR	2		Cd Categoria Tariffa
39	L7B6CD	CHAR	1		Cd Tp Tariffa
40	L7ECCD	CHAR	6		Cd Tariffa
41	L7D6CD	CHAR	2		Cd sezione
42	L7CMPG	DECIMAL	3	0	Nr Riga 2
43	L7AQSX	CHAR	2		Tipo Voce Calcolata
44	L7GRNB	DECIMAL	2	0	Progr Merce
45	L7UCCD	CHAR	4		Tipo Container
46	L7X8CQ	CHAR	3		Cd Voce Fattura Tariffa

"----------------------------------------"


UUB9REP Voci fattura.    

1	B9A1CD	CHAR	3		Cd Voce Fattura									
2	B9CTTX	CHAR	50		Descr Voce Fattura
3	B9CATX	CHAR	10		Descr Abbr Voce Fattura
4	B9RYST	CHAR	1		Voce in trascinamento
5	B9AMCD	CHAR	12		Cd Conto Contabile
6	B9CRCD	CHAR	12		Gen Pass Cd Conto Contab
7	B9ZZCE	CHAR	13		Cd Conto Analitica
8	B9CTCD	CHAR	13		Analitica passivita Cd c
9	B9RZST	CHAR	1		Voce Abil a Sconto Client
10	B9R0ST	CHAR	1		Voce Abil a Provv Vett
11	B9TUST	CHAR	1		Valoriz Raggrup Analitico
12	B9DESS	CHAR	1		Valuation Charge-Tax
13	B9DFSS	CHAR	1		Raggr Nolo x Rendiconto
14	B9DGSS	CHAR	1		Agent Carrier
15	B9DHSS	CHAR	1		Voce Nolo
16	B9D1TY	CHAR	1		Non consente aumento in %
17	B9D2TY	CHAR	1		Flag Voci Fattura 01
18	B9D3TY	CHAR	1		Flag Voci Fattura 02
19	B9D4TY	CHAR	1		Flag Voci Fattura 03
20	B9D5TY	CHAR	1		Flag Voci Fattura 04
21	B9D6TY	CHAR	1		Flag Voci Fattura 05
22	B9CHCC	CHAR	3		Cd Voce Fattura Raggr x Stampa
23	B9DGCD	CHAR	2		Cd Filiale Ult Aggiornam
24	B9ABVN	CHAR	10		Utente
25	B9A5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento
26	B9BQST	CHAR	1		Stato record


"----------------------------------------"

UBLMREP		Storico Liste di Carico.Phy (S8 S1577288798 S_235)    


     
SELECT *
FROM MLD_BE101.UBLMREP

-- 1505 - Transportistas ??
SELECT DISTINCT LMB0TX
FROM 
MLD_BE101.UBLMREP


SELECT LMB0TX, LMAHCD, LMACAN, COUNT(*) AS TOT
FROM 
MLD_BE101.
UBLMREP
GROUP BY LMB0TX, LMAHCD, LMACAN
ORDER BY LMB0TX, LMAHCD, LMACAN, TOT DESC

LMAHCD	1	CHAR	2		Cd filiale borderò
LMACAN	2	NUMERIC	4	0	Anno borderò
LMBUPG	3	DECIMAL	6	0	Progr Borderò
LMP0NB	4	DECIMAL	3	0	Progr Concarico
LMB0TX	5	CHAR	6		Cd Fornitore
LMBFST	6	CHAR	2		Tp bordero
LMC7DT	7	DECIMAL	7	0	Dt viaggio
LMCHCD	8	CHAR	6		Cd vettore
LMIPCD	9	CHAR	6		Cd Conducente
LMVGCE	10	CHAR	6		Cd Trasportatore Successivo
LMCFCD	11	CHAR	6		Cd mezzo
LMTARG	12	CHAR	20		Targa
LMCACD	13	CHAR	4		Cd tp mezzo
LMJACD	14	CHAR	6		Cd mezzo 2
LMZZAQ	15	CHAR	20		Targa 2
LML6CD	16	CHAR	4		Cd tp mezzo 2
LMAABD	17	CHAR	4		Cd Linea
LMUDCD	18	CHAR	3		Codice Compagnia Aerea
LMVLCD	19	CHAR	3		Codice Aeroporto
LMXRTX	20	CHAR	10		Numero Volo
LMQXNB	21	DECIMAL	8	0	Nr AWB
LMA0CC	22	CHAR	6		Codice Compagnia Navigazione
LMU4CD	23	CHAR	6		Codice Porto
LMU2CD	24	CHAR	6		Codice Nave
LMCLCC	25	CHAR	3		APT 1° Routing
LMDNCC	26	CHAR	3		Codice Compagnia 1° Routing
LMRATX	27	CHAR	10		Nr Volo 1° Routing
LMJ4DT	28	DECIMAL	7	0	Data Volo 1° Routing
LMCMCC	29	CHAR	3		APT 2° Routing
LMCNCC	30	CHAR	3		Codice Compagnia 2° Routing
LME3TX	31	CHAR	10		Nr Volo 2° Routing
LMJ5DT	32	DECIMAL	7	0	Data Volo 2° Routing
LMCOCC	33	CHAR	3		APT 3° Routing
LMCPCC	34	CHAR	3		Codice Compagnia 3° Routing
LMY9TX	35	CHAR	10		Nr Volo 3° Routing
LMJ6DT	36	DECIMAL	7	0	Data Volo 3° Routing
LMWNTY	37	CHAR	2		Stato Borderò
LMANDX	38	NUMERIC	8	0	Data Arrivo Prevista Terminal
LMA9TM	39	DECIMAL	6	0	Ora Arrivo Prevista Terminal
LMAODX	40	NUMERIC	8	0	Data Arrivo Effettiva Terminal
LMBATM	41	DECIMAL	6	0	Ora Arrivo Effettiva Terminal
LMAPDX	42	NUMERIC	8	0	Data Partenza Prevista LDC
LMBBTM	43	DECIMAL	6	0	Ora Partenza Prevista LDC
LMAQDX	44	NUMERIC	8	0	Data Partenza Effettiva LDC
LMBCTM	45	DECIMAL	6	0	Ora Partenza Effettiva LDC
LMARDX	46	NUMERIC	8	0	Data Inizio Previsto Carico
LMBDTM	47	DECIMAL	6	0	Ora Inizio Previsto Carico
LMASDX	48	NUMERIC	8	0	Data Inizio Effettivo Carico
LMBETM	49	DECIMAL	6	0	Ora Inizio Effettivo Carico
LMATDX	50	NUMERIC	8	0	Data Fine Carico
LMBFTM	51	DECIMAL	6	0	Ora Fine Carico
LMAWDX	52	NUMERIC	8	0	Data Inizio Previsto Scarico
LMBITM	53	DECIMAL	6	0	Ora Inizio Previsto Scarico
LMAXDX	54	NUMERIC	8	0	Data Inizio Effettivo Scarico
LMBJTM	55	DECIMAL	6	0	Ora Inizio Effettivo Scarico
LMAYDX	56	NUMERIC	8	0	Data Fine Scarico
LMBKTM	57	DECIMAL	6	0	Ora Fine Scarico
LMOJCR	58	CHAR	2		Cd Magazzino Cross  Docking
LMVHCE	59	CHAR	6		Porta Cross Docking Carico
LMVICE	60	CHAR	6		Porta Cross Docking Scarico
LMAUDX	61	NUMERIC	8	0	Data Arr Par Prevista Term Corr
LMBGTM	62	DECIMAL	6	0	Ora Arr Par Prevista Term Corr
LMAVDX	63	NUMERIC	8	0	Data Arr Par Effettiva Term Corr
LMBHTM	64	DECIMAL	6	0	Ora Arr Par Effettiva Term Corr
LMK8CC	65	CHAR	2		Trazione Cd filiale
LMCWCD	66	CHAR	2		Cd servizio
LMD5CD	67	CHAR	2		Cd Categoria Tariffa
LMB6CD	68	CHAR	1		Cd Tp Tariffa
LMECCD	69	CHAR	6		Cd Tariffa
LMK9CC	70	CHAR	2		Cd Filiale Competenze
LMLACC	71	CHAR	2		Cd Servizio Competenze
LMLBCC	72	CHAR	2		Cd Categoria Competenze
LMO0SS	73	CHAR	1		Cd Tp Tariffa Competenze
LMLCCC	74	CHAR	6		Cd Tariffa Competenze
LMO1SS	75	CHAR	1		Nolo a Carico Sped-Corr
LMO2SS	76	CHAR	1		Flag Storico LDC 02
LMO3SS	77	CHAR	1		Flag Storico LDC 03
LMWPTY	78	CHAR	1		Flag Storico LDC 04
LMWRTY	79	CHAR	1		Flag Storico LDC 05
LMWSTY	80	CHAR	1		Flag Storico LDC 06
LMWTTY	81	CHAR	1		Flag Storico LDC 07
LMWUTY	82	CHAR	1		Flag Storico LDC 08
LMWVTY	83	CHAR	1		Flag Storico LDC 09
LMWWTY	84	CHAR	1		Flag Storico LDC 10

"----------------------------------------"
  
UUB0REP	Vettori. tabl (S8 S1577290776 S1577446583)

-- No hay más de un registro por cada uno 
SELECT B0CHCD, count(B0CHCD)
FROM
MLD_BE101.UUB0REP
GROUP BY B0CHCD
HAVING count(B0CHCD) > 1


1	B0CHCD	CHAR	6		Cd vettore
2	B0BBRA	CHAR	35		Rag Soc
3	B0ARRA	CHAR	35		Ult Rag Soc
4	B0AHIN	CHAR	35		Indirizzo
5	B0ADCA	CHAR	8		CAP1
6	B0LOCA	CHAR	25		Località
7	B0AEPR	CHAR	2		Provincia
8	B0A2TX	CHAR	15		Codice ricerca
9	B0ATCD	CHAR	16		Cd fiscale
10	B0ALNB	CHAR	11		Partita IVA
11	B0AKNB	CHAR	20		Telefono
12	B0ADNB	CHAR	20		Telefax
13	B0A6TX	CHAR	20		Telex
14	B0A5TX	CHAR	20		Casella postale EDI
15	B0BWTX	CHAR	60		Note
16	B0AFCD	CHAR	3		Cd nazione
17	B0A3ST	CHAR	1		Tp vettore
18	B0A4PC	DECIMAL	5	2	Perc Provvigioni
19	B0SAST	CHAR	1		Tp arrotondamento
20	B0APCD	CHAR	6		Cd Cliente
21	B0B0TX	CHAR	6		Cd fornitore					-- este campo ya no existe en la tabla
22	B0K6TX	CHAR	15		Nr Iscrizione Albo  Trasp
23	B0DPDT	DECIMAL	7	0	Dt Iscrizione Albo  Trasp
24	B0WNTX	CHAR	60		Note vettori
25	B0W1TX	CHAR	60		Note 1
26	B0W2TX	CHAR	60		Note 2
27	B0W3TX	CHAR	60		Note 3
28	B0DGCD	CHAR	2		Cd Filiale Ult Aggiornam
29	B0ABVN	CHAR	10		Utente
30	B0A5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento
31	B0BQST	CHAR	1		Stato record
32	B0IOCD	CHAR	6		per bolla Cd vettore
33	B0INCD	CHAR	6		Cd Vett Titol Cond  Mezzo


UUEEREP	Tassazione -testata-.  

SELECT a.*
FROM MLD_BE101.UUEEREP a
WHERE a.EEAHCD ='20'
  AND a.EEAPCD = '005273'

001	EEAHCD	CHAR	2		Cd Filiale Tassazione
002	EEANAN	NUMERIC	4	0	Anno Tassazione
003	EEAPPG	DECIMAL	6	0	Progr Tassazione
004	EEJJSS	CHAR	2		Tipo Entità fatture
005	EETICD	CHAR	2		Cd filiale Fattura
006	EEKVSS	CHAR	2		Tipo Entità Fatture Fatt
007	EEB8PG	DECIMAL	6	0	Numero Fattura
008	EEEDDT	DECIMAL	7	0	Data Fattura
009	EEAWPG	DECIMAL	6	0	Nr fattura fornitore
010	EECMDT	DECIMAL	7	0	Dt fattura fornitore
011	EEG8ST	CHAR	1		Tp fattura
012	EEJ0CD	CHAR	2		Cd Filiale Spedizione
013	EEAAAN	NUMERIC	4	0	Anno Spedizione
014	EEAAPG	DECIMAL	6	0	Progr Spedizione
015	EEIACD	CHAR	2		Cd servizio 2
016	EEJVCD	CHAR	2		Cd resa 2
017	EEPQCD	CHAR	2		Cd Filiale Viaggio
018	EEC3PG	NUMERIC	4	0	Anno Viaggio
019	EEACPG	DECIMAL	6	0	Progr Viaggio
020	EEOKCD	CHAR	2		Cd filiale posizione
021	EEAZAN	NUMERIC	4	0	Anno Posizione
022	EEBEPG	DECIMAL	6	0	Progr Posizione
023	EEQICD	CHAR	2		Cd filiale borderò
024	EEACAN	NUMERIC	4	0	Anno borderò
025	EEBUPG	DECIMAL	6	0	Progr Borderò
026	EEP0NB	DECIMAL	3	0	Progr Concarico
027	EEGYST	CHAR	1		Tp fatturare a
028	EEV1TX	CHAR	15		Raggruppamento
029	EEV2TX	CHAR	15		Ordine di Stampa
030	EEAPCD	CHAR	6		Cd Cliente
031	EECHCD	CHAR	6		Cd vettore
032	EEAQCD	CHAR	4		Cd Divisa Tassazione
033	EEALCD	CHAR	2		Cd Assoggettamento
034	EECDPA	CHAR	3		Cd pagamento
035	EEKOCD	CHAR	2		Cd Sconto-Maggior 2
036	EEBDPC	DECIMAL	5	2	Perc Provvigioni 2
037	EEJ1CD	CHAR	2		Cd Filiale Tariffa
038	EECWCD	CHAR	2		Cd Servizio Tariffa
039	EED5CD	CHAR	2		Cd Categoria Tariffa
040	EEB6CD	CHAR	1		Cd Tp Tariffa
041	EEECCD	CHAR	6		Cd Tariffa
042	EEIJSS	CHAR	2		Tariffa Partic-Standard
043	EEIYQT	DECIMAL	10	3	Peso da tassare
044	EEBBQT	DECIMAL	5	0	Nr Rit-Cons
045	EEEAQT	DECIMAL	5	0	Km in Italia
046	EEEBQT	DECIMAL	5	0	Km all Estero
047	EEEFQT	DECIMAL	2	0	Qta camion
048	EEEGQT	DECIMAL	5	0	Qta capi
049	EEEHQT	DECIMAL	5	0	Magg Nr Colli in Boll Dog
050	EEEIQT	DECIMAL	5	0	Rimanenti Colli in  BolDog
051	EEEJQT	DECIMAL	3	0	Qta bolle doganali
052	EEEKQT	DECIMAL	3	0	Qta singoli formulario
053	EEELQT	DECIMAL	3	0	Qta operazioni doganali
054	EEEMQT	DECIMAL	3	0	Qta Mitt div in Bolla Dog
055	EEENQT	DECIMAL	3	0	Qta Oper Dog cto Cliente
056	EEDKVA	DECIMAL	11	2	Imp nolo Iva Assolta
057	EEA1VA	DECIMAL	13	2	Imp Diritti Liquidati
058	EEAZVA	DECIMAL	11	2	Imp Anticipata
059	EEDNVA	DECIMAL	13	2	Val Stat su Bolla Dogan
060	EESIST	CHAR	1		Flag scarico manuale 2
061	EEZ5ST	CHAR	1		Flag Passaggio a Magazzin
062	EEZ6ST	CHAR	1		Flag Addebito Assicurazione
063	EEEOVA	DECIMAL	11	6	Cambio di Tassazione
064	EECDDT	DECIMAL	7	0	Dt spedizione 2
065	EESGST	CHAR	1		Flag di elaborazione
066	EESLST	CHAR	1		Flag Elabora Trasfer
067	EECIDT	DECIMAL	7	0	Dt Competenza Spedizione
068	EEEASS	CHAR	1		Flag Ritassazione Si-No
069	EECTCC	CHAR	2		Cd filiale Anomalia
070	EEKSNB	NUMERIC	4	0	Anno Anomalie
071	EEBTPG	DECIMAL	6	0	Progr Anomalie
072	EEMCQT	DECIMAL	10	3	Peso Tassato
073	EED8SS	CHAR	2		Tipo Trasporto
074	EEH4SS	CHAR	2		Tipo Tassazione x Fattura
075	EEEVCC	CHAR	4		Divisa Importo da Stampare
076	EEJ1VA	DECIMAL	13	2	Imp Diritti Liquidati Iva
077	EEKGDT	DECIMAL	7	0	Data Entrata
078	EEKIDT	DECIMAL	7	0	Data Uscita
079	EEU9QT	DECIMAL	3	0	Qta Imballaggi
080	EEVAQT	DECIMAL	3	0	Qta Piombi
081	EEJVCQ	CHAR	4		Cd Merceologica Tassaz
082	EEVBQT	DECIMAL	7	0	Qta Colli Tassazione
083	EEVCQT	DECIMAL	10	3	Peso Lordo Tassazione
084	EEVDQT	DECIMAL	12	5	Peso Netto Tassazione
085	EEVEQT	DECIMAL	8	3	Metri Cubi Tassazione
086	EEVFQT	DECIMAL	7	2	Metri Lineari Tassazione
087	EEJTCQ	CHAR	2		Cd UM Tassazione
088	EEVHQT	DECIMAL	8	3	Qta UM Ult Tassazione
089	EEVGQT	DECIMAL	3	0	Qta Palette Tassazione
090	EEJUCQ	CHAR	4		Cd Divisa Merce Tassazion
091	EEBAVL	DECIMAL	13	2	Imp Valore Merce Tassaz
092	EEL0CQ	CHAR	2		Seconda Cd UM
093	EEV1QT	DECIMAL	13	5	Qta UM Ult Tassazione 2
094	EEL1CQ	CHAR	2		Terza Cd UM
095	EEV2QT	DECIMAL	13	5	Qta UM Ult Tassazione 3
096	EEL2CQ	CHAR	2		Quarta Cd UM
097	EEV3QT	DECIMAL	13	5	Qta UM Ult Tassazione 4
098	EEH0CC	CHAR	2		Cd Filiale Formulario
099	EEBOAN	NUMERIC	4	0	Anno Formulario
100	EECPPG	DECIMAL	6	0	Progr Formulario
101	EER6CC	CHAR	10		ID Richiesta
102	EEMLCR	CHAR	2		Accredito Cd Fil Fattura
103	EEQ0TY	CHAR	2		Accredito Tp Ent Fattura
104	EEL7PG	DECIMAL	6	0	Accredito Numero Fattura
105	EEPFDT	DECIMAL	7	0	Accredito Data Fattura
106	EEDGCD	CHAR	2		Cd Filiale Ult Aggiornam
107	EEABVN	CHAR	10		Utente
108	EEA5DT	DECIMAL	7	0	Dt Ultimo Aggiornamento
109	EEBQST	CHAR	1		Stato record

UUEGREP		Tassazione -zdettaglio-

SELECT a.*
FROM MLD_BE101.UUEGREP a
WHERE a.EGAHCD ='20'



001 EGAHCD	CHAR	2		Cd filiale
002 EGANAN	NUMERIC	4	0	Anno Tassazione
003 EGAPPG	DECIMAL	6	0	Progr Tassazione
004 EGA1CD	CHAR	3		Cd voce fattura
005 EGBLVA	DECIMAL	13	2	Imp Voce Fattura
006 EGEWQT	DECIMAL	15	6	Qta Calcolata in Tariffa
007 EGDOVA	DECIMAL	11	2	Imp Unitario 01
008 EGT7VO	DECIMAL	15	7	Imp Unitario 15_7
009 EGK9CD	CHAR	2		Cd Assoggett 7
010 EGZZAS	CHAR	50		Descr Voce Fattura 2
011 EGRVST	CHAR	1		Flag confermabile
012 EGDRTY	CHAR	1		Tipo Calcolo Elem
013 EGCZTY	CHAR	2		Tipo Elem Calcolato
014 EGKPCD	CHAR	3		Tp UM
015 EGRJVA	DECIMAL	13	2	Imp Voce Fattura Stampa
016 EGDGSS	CHAR	1		Agent Carrier
017 EGPFCR	CHAR	2		Cd Assoggettamento Origin

"----------------------------------------"


UPCWREP		UP	CW	REP	Rapporti - Reporte - Informe di Visita Contatti.

SELECT *
FROM MLD_BE101X.UPCWREP

WHERE HGAHCD = 11 
  AND HGAXAN = 2022

001	EZCQ	CHAR	2		Cd filiale Rapporto di Visita	11		11		11		11		11		11		11		11		11		11		11		11
002	AXAN	NUMERIC	4	0	Anno Rapporto di Visita         2022    2022    2022    2022    2022    2022    2022    2022    2022    2022    2022    2022
003	BDPG	DECIMAL	6	0	Progr Rapporto di Visita        56      57      58      59      60      61      64      73      75      85      98      106
004	APCD	CHAR	6		Cd Cliente                      058001  006342  165821  016984  006889  006115  195190  004651  008152  008082  265285  165821
005	K1PG	DECIMAL	3	0	Nr Riga Anag Clienti Contatti   1       1       1       1       1       1       1       1       1       1       1       1



UUHGREP		UU	HG	REP Rapporti - Reporte - Informe di Visita

SELECT *
FROM MLD_BE101X.UUHGREP
WHERE HGAHCD = 11 
  AND HGAXAN = 2022
  
001	HGAHCD		CHAR	2		Cd filiale
002	HGAXAN		NUMERIC	4	0	Anno rapporto di visita
003	HGBDPG		DECIMAL	6	0	Progr Rapporto di Visita
004	HGC0DT		DECIMAL	7	0	Dt rapporto di visita
005	HGGFCC		CHAR	2		Tipo Visita
006	HGAPCD		CHAR	6		Cd Cliente
007	HGEVRA		CHAR	35		Persona contattata
008	HGATCC		CHAR	4		Codice Commerciale
009	HGU2CE		CHAR	4		Codice Commeciale   Cliente
010	HGT4CD		CHAR	2		Cd azione commerciale
011	HGPYSS		CHAR	1		Cliente Nuovo
012	HGUEST		CHAR	1		Flag stampata
013	HGE3CQ		CHAR	6		Visita fatta Con Cd clien
014	HGC5UX		CHAR	25		Nominativo Soggett Visita
015	HGDGCD		CHAR	2		Cd Filiale Ult Aggiornam+
016	HGABVN		CHAR	10		Utente
017	HGA5DT		DECIMAL	7	0	Dt Ultimo Aggiornamento
018	HGBQST		CHAR	1		Stato record


UCQ4REP		UC	Q4	REP Tipi - Tipo di Visita.Physic (S8 S1577287871 S1577446583)

SELECT * 
FROM MLD_BE101.UCQ4REP

001 Q4GFCC 		CHAR	2		Tipo Visita					01				02					03					04				05							06						07					08					09
002 Q4U6TX 		CHAR	35		Descrizione Tipo Visita     VISITA PERSONAL VISITA TELEFONICA   LEADS SEGUIMIENTO   TELEMARKETING   VISITA CAMPAÑA PRESENCIAL   CAMPAÑA PROSPECCIÓN TLF INFORME COMERCIAL   CONTACTO VIA EMAIL  VISITA ON LINE
003 Q4JKSS 		CHAR	1		Stato rec Tipi Visita       

SELECT *
FROM MLD_BE101X.UUHHREP
WHERE HHAHCD = 11 
  AND HHAXAN = 2022

UUHHREP	 Rapporti - Reporte - Informe di Visita Traff 

001 HHAHCD	CHAR	2		Cd filiale					
002 HHAXAN	NUMERIC	4	0	Anno rapporto di visita
003 HHBDPG	DECIMAL	6	0	Progr Rapporto di Visita
004 HHCMPG	DECIMAL	3	0	nr riga 2
005 HHD8SS	CHAR	2		Tipo Trasporto
006 HHBPST	CHAR	1		Settore di traffico
007 HHCWCD	CHAR	2		Cd servizio
008 HHH3TX	CHAR	70		Descr Traffico
009 HHDVST	CHAR	1		Flag Caricam da Tabella

HHAHCD	HHAXAN	HHBDPG	HHCMPG	HHD8SS	HHBPST	HHCWCD	HHH3TX																		HHDVST
11		2022	2		1								Campaña Magreb, llamadas: [BR][BR]he hablado con secretaria me dijo que te
11		2022	2		2								nemos que comunicar para cualquier info con logistica@nofer.com via ma
11		2022	2		3								il. mail enviado

UPB6REP		UP	B6	REP Categorie Messaggi.  Categorias mensajerias - No importante

SELECT *
FROM MLD_BE101X.UPB6REP

001 OPMLCID		CHAR	6		ID Categoria Mail List				OFS				CMNINF			CMNIND				CMNWEB				CONF	CMNTAR					DOC
002 OPMLCDES	CHAR	35		Descrizione Categoria Mail List     Ofertas Spot    Comunicacion    Aviso de servicio   Comunicacion Web    Ferias  Aviso variacion tarifa  Documentos enviados

UCOGREP		UC	OG	REP	Commerciali.  (S8 S1577288214 S1577446583)

SELECT *
FROM MLD_BE101.UCOGREP
																																														MLD_BE101X
001	OGATCC	CHAR	4		Codice Commerciale			1011					2235			2127			SCEL		3506				9999			1006					1006
002	OGSFTX	CHAR	35		Nominativo                  YOLANDA DE LA CALLE     ISABEL BOKOKO   ISABEL BOKOKO   SCEL        AGATA PIWOWAR II    CORRESPONSALES  JUAN CORTELL			JUAN CORTELL
003	OGF8CD	CHAR	10		Cd utente                   MLDCALLE                MLDIBOKOKO      MLDIBOKOKO      MLDSCELIS   MLDMARIN            MLDFARRE        BAJA					MLDCORTELL
004	OGAHCD	CHAR	2		Cd filiale                                                          20                          20                  11              						
005	OGCYSS	CHAR	1		Commerciale Master          A                       A               A               5           T                   5               A						A
006	OGAUSS	CHAR	1		Stato record Commerciale                                                                                                            A

OGCYSS

A - Interno - Master + Tarifas Standard	
T - Interno - Gestión Tarifas Standard	
2 - Externo - Master	
5 - Externo - Master + Tarifas Standard	


-- UBMAREP	Tipi - Tipo Azioni Commerciali    

SELECT *
FROM MLD_BE101X.UBMAREP

001	MAT4CD	CHAR	2		Cd azione commerciale		01					02						03
002	MAPVTX	CHAR	25		Descr Azione Commerciale    MANDARE OFFERTA     OFFERTA SENZA IMPEGNO   CONTATTO TELEFONICO
003	MAPZSS	CHAR	1		Creazione Impegno           S                                       	S
004	MAYICQ	CHAR	6		NSC CalendarEventType       
005	MAE7ST	CHAR	1		Stato Rec Azione Commerc    
  

UPDHREP		UP	DH	REP Verifica Fatture Testata. Facturas de Compra

001	DHF6AN	NUMERIC	4	0	Anno Verifica Fatture
002	DHBBSG	DECIMAL	7	0	Progr Verifica Fatture
003	DHB0TX	CHAR	6		Cd Fornitore
004	DHL5NB	CHAR	10		Numero Documento Fornitore
005	DHPLDT	DECIMAL	7	0	Data Documento Fornitore
006	DHJJSS	CHAR	2		Tipo Entità fatture
007	DHRLTY	CHAR	1		Natura Movimento Verifica
008	DHAQCD	CHAR	4		Cd Divisa
009	DHABVA	DECIMAL	11	6	Cambio Fatturazione
010	DHAAVL	DECIMAL	11	2	Totale Imponibile
011	DHH6VA	DECIMAL	13	2	Totale Importo Fattura
012	DHCAVP	DECIMAL	11	2	Imponibile IRPF
013	DHCBVP	DECIMAL	11	2	Importo IRPF
014	DHRMTY	CHAR	1		Stato Verifica Fatture
015	DHRNTY	CHAR	1		Verifica da Approvare
016	DHMSPG	DECIMAL	1	0	Blocco Fattura
017	DHTITY	CHAR	1		Contestazione Fattura
018	DHAQVX	CHAR	10		Numero Documento Storno
019	DHPKDT	DECIMAL	7	0	Data Documento Storno
020	DHB7CD	CHAR	3		STSC Cd Causale Contabile
021	DHDYDT	DECIMAL	7	0	Data Registrazione
022	DHA8AN	NUMERIC	4	0	Anno Movimento Contabile
023	DHC5PG	DECIMAL	7	0	Numero Movimento Contabile
024	DHAJVN	CHAR	10		Utente creazione
025	DHG4DT	DECIMAL	7	0	Data creazione
026	DHQUNB	DECIMAL	4	0	Ora creazione
027	DHAKVN	CHAR	10		Utente Ultimo Aggiornamento
028	DHA5DT	DECIMAL	7	0	Data Ultimo Aggiornamento
029	DHQVNB	DECIMAL	4	0	Ora Ultimo Aggiornamento

SELECT * 
FROM MLD_BE101.UPDHREP
WHERE DHG4DT >= 

"----------------------------------------"








"----------------------------------------"

APCD = '057749'
ECCD = '011649'

APCD	UPAOREP		UPAO	REP
LNAPCD	UBLNREP		UBLN	REP
LNAPCD	ANALITIC	ANALITICA
O2APCD	UCO2REP		UCO2	REP
TBAPCD	UDTBREP		UDTB	REP
D8ECCD	UUD8REP		UUD8	REP
DDAPCD	UUDDREP		UUDD	REP
DWECCD	UUDWREP		UUDW	REP
SELECT *
FROM MLD_BE101.UUDWREP
DWECCD  = '011649'

B7APCD	URB7REP		URB7	REP
SGAPCD	UDSGREP		UDSG	REP
CGECCD	URCGREP		URCG	REP
OWAPCD	UCOWREP		UCOW	REP
OWECCD	UCOWREP		UCOW	REP
AFAPCD	AAAFREP		AAAF	REP
DXECCD	UUDXREP		UUDX	REP
IVAPCD	UUIVREP		UUIV	REP
F9ECCD	UIF9REP		UIF9	REP
DLAPCD	UPDLREP		UPDL	REP
DMAPCD	UPDMREP		UPDM	REP
EEAPCD	UUEEREP		UUEE	REP
EEECCD	UUEEREP		UUEE	REP
BSAPCD	UGBSREP		UGBS	REP
APCD	UPBBREP		UPBB	REP
O4APCD	UCO4REP		UCO4	REP
RGAPCD	UDRGREP		UDRG	REP
B4ECCD	UGB4REP		UGB4	REP
HGAPCD	UUHGREP		UUHG	REP
EZAPCD	UUEZREP		UUEZ	REP
EZECCD	UUEZREP		UUEZ	REP
APCD	UPCAREP		UPCA	REP
BAAPCD	UUBAREP		UUBA	REP
AEAPCD	AAAEREP		AAAE	REP
C7ECCD	UGC7REP		UGC7	REP
S5APCD	UDS5REP		UDS5	REP
APCD	UPBWREP		UPBW	REP
APCD	UPCWREP		UPCW	REP
BFAPCD	ABBFREP		ABBF	REP
KWECCD	UBKWREP		UBKW	REP
B0APCD	UUB0REP		UUB0	REP
OXAPCD	UCOXREP		UCOX	REP
FTAPCD	UHFTREP		UHFT	REP
QKECCD	UCQKREP		UCQK	REP
QMAPCD	UCQMREP		UCQM	REP
I8APCD	UUI8REP		UUI8	REP
JDAPCD	UUJDREP		UUJD	REP
QEECCD	UCQEREP		UCQE	REP
MBAPCD	UBMBREP		UBMB	REP
QRECCD	UCQRREP		UCQR	REP
NYAPCD	UCNYREP		UCNY	REP
S4APCD	UDS4REP		UDS4	REP
RYAPCD	UDRYREP		UDRY	REP
FAECCD	UUFAREP		UUFA	REP
JSAPCD	UUJSREP		UUJS	REP
APCD	UPAKREP		UPAK	REP
MZAPCD	UCMZREP		UCMZ	REP
RXAPCD	UDRXREP		UDRX	REP
S6APCD	UDS6REP		UDS6	REP
AHAPCD	UIAHCPP		UIAHCPP
APCD	UPCTREP		UPCT	REP
SFAPCD	UDSFREP		UDSF	REP
APCD	UPEHREP		UPEH	REP
APCD	LDISS00F	LDISS00F
Q7APCD	UCQ7REP		UCQ7	REP
EVAPCD	UPEVREP		UPEV	REP
RIAPCD	UDRIREP		UDRI	REP
D7APCD	UGD7REP		UGD7	REP
AVAPCD	UEAVCPP		UEAVCPP
APCD	UPAQREP		UPAQ	REP
DBAPCD	UGDBREP		UGDB	REP
A1APCD	MGA1REP		MGA1	REP
ECCD	UPDCREP		UPDC	REP
APCD	CAPRT00F	CAPRT00F
APCD	MGB2REP		MGB2	REP
OTAPCD	UCOTREP		UCOT	REP
BWAPCD	UGBWREP		UGBW	REP
BZAPCD	UPBZREP		UPBZ	REP
EYAPCD	UUEYREP		UUEY	REP


"----------------------------------------"
SELECT *
FROM qlikview.gest_lk_tipo_manifiesto;

id_tipo_manifiesto, desc_tipo_manifiesto

AE 	Llegada Export Terrestre
AI 	Llegada Import Terrestre
PE 	Salida Export Terrestre
AM 	Mar Importación
AN 	Llegadas Nacional
CA 	Entregas Aeropuerto
EA 	Aéreo Export
EM 	Mar Exportación
IA 	Aéreo Importación
IM 	Legadas Mar. Nacional
NM 	Salidas Mar. Nacional
PN 	Salidas Nacional
RA 	Recogidas Aeropuerto
RC 	Recogidas / Entregas
RT 	Recogidas Terminal
	
"----------------------------------------"

SELECT *
FROM qlikview.gest_lk_transporte;

id_transporte, desc_transporte

ST	Terrestre
MA	Maritimo
AE	Aereo
ZZ	Sin Definir

"----------------------------------------"
SELECT *
FROM qlikview.gest_lk_sector;

id_sector, desc_sector

E	Export
I	Import
N	Nacional
Z	Sin Definir

"----------------------------------------"


"----------------------------------------"

-- Maestro expediciones UBLLREP vs Cross Doking UPEEREP por Expedición
-- Terrestre Import 'TI'

-- SELECT  c.LLBQAN, c.LLBPAN, c.LLC4PG, d.EESFCQ, d.EEB7AN, d.EEG3PG
SELECT *
FROM MLD_BE101.UBLLREP c 
JOIN MLD_BE101.UPEEREP d
ON c.LLBQAN = d.EEM3CR
AND c.LLBPAN = d.EEGEAN
AND c.LLC4PG = d.EEMQPG
WHERE c.LLBQAN = 11
AND c.LLBPAN = 2021
AND c.LLCWCD = 'TI'

-- Cabecera de Missioni Cross Doking UPEDREP vs Missioni Cross Docking Dettaglio. UPEEREP por Movimiento

-- SELECT EDSFCQ, EDB7AN, EDG3PG, EDSRTY, EDQICD, EDACAN, EDBUPG, EDSSTY, EEB7AN, EEG3PG, EEP3NB, EES7TY, EEM3CR, EEGEAN, EEMQPG

SELECT * 
FROM MLD_BE101.UPEDREP a
JOIN MLD_BE101.UPEEREP b 
  ON b.EESFCQ = a.EDSFCQ 
 AND b.EEB7AN = a.EDB7AN 
 AND b.EEG3PG = a.EDG3PG 
WHERE a.EDSFCQ = 11
AND EDSRTY = 'P01'
LIMIT 100


-- Cabecera de Missioni Cross Doking UPEDREP vs Misiones - filiales 11,13, 15, 20, 22 UUCMREP por Movimiento

-- SELECT EDSFCQ, EDB7AN, EDG3PG, EDSRTY, EDQICD, EDACAN, EDBUPG, EDSSTY, CMAHCD, CMACAN, CMBUPG, CMBFST
SELECT *
FROM MLD_BE101.UPEDREP a 
JOIN MLD_BE101.UUCMREP b 
  ON a.EDQICD = b.CMAHCD
 AND a.EDACAN = b.CMACAN 
 AND a.EDBUPG = b.CMBUPG 
WHERE a.EDSFCQ = 11
AND a.EDB7AN = 2021
AND EDSRTY = 'P01'
LIMIT 100

-- Cabecera de Missioni Cross Doking UPEDREP vs Missioni Cross Docking Dettaglio. UPEEREP por Movimiento
-- vs Maestro Expediciones UBLLREP por Expedicion

SELECT c.LLBQAN, c.LLBPAN, c.LLC4PG, c.LLBGDT, c.LLCIDT, c.LLCWCD, EDSFCQ, EDB7AN, EDG3PG, EDSRTY, EDQICD, EDACAN, EDBUPG, EDSSTY, EEB7AN, EEG3PG, EEP3NB, EES7TY, EEM3CR, EEGEAN, EEMQPG
FROM MLD_BE101.UPEDREP a
JOIN MLD_BE101.UPEEREP b 
  ON b.EESFCQ = a.EDSFCQ 
 AND b.EEB7AN = a.EDB7AN 
 AND b.EEG3PG = a.EDG3PG 
JOIN MLD_BE101.UBLLREP c 
  ON c.LLBQAN = b.EEM3CR
 AND c.LLBPAN = b.EEGEAN
 AND c.LLC4PG = b.EEMQPG
WHERE a.EDSFCQ = 11
AND c.LLBPAN = 2021
AND c.LLCWCD = 'TI'
AND EDSRTY = 'P01'
LIMIT 100

-- Todas las expediciones de un Manifiesto
-- Cabecera de Missioni Cross Doking UPEDREP vs Missioni Cross Docking Dettaglio. UPEEREP por Movimiento

SELECT IOAHCD, IOACAN, IOBUPG, IOP0NB, IOB0TX, IODUDT, EESFCQ, EEB7AN, EEG3PG, EEP3NB, EES7TY, EEM3CR, EEGEAN, EEMQPG, EEXGBR, c.LLBQAN, c.LLBPAN, c.LLC4PG, c.LLBGDT, c.LLCWCD, LLAQQT, LLBBNB, LLPYNB, LLARQT, d.*
FROM MLD_BE101.UUIOREP a
JOIN MLD_BE101.UPEEREP b
  ON a.IOAHCD = b.EEQICD
 AND a.IOACAN = b.EEACAN
 AND a.IOBUPG = b.EEBUPG
JOIN MLD_BE101.UBLLREP c
  ON c.LLBQAN = b.EEM3CR
 AND c.LLBPAN = b.EEGEAN
 AND c.LLC4PG = b.EEMQPG
JOIN MLD_BE101.UPEDREP d
  ON b.EESFCQ = d.EDSFCQ 
 AND b.EEB7AN = d.EDB7AN 
 AND b.EEG3PG = d.EDG3PG
WHERE IOAHCD = 11 
  AND IOACAN = 2021
  AND IOBUPG = 43112
  AND EDSRTY = 'A01'


UUJSREP		UU	JS	REP			Fatture                                            - Facturas de Venta

001	JSAHCD	CHAR	2		Cd filiale
002	JSJJSS	CHAR	2		Tipo Entità fatture
003	JSB8PG	DECIMAL	6	0	Numero Fattura
004	JSEDDT	DECIMAL	7	0	Data Fattura
005	JSH6VA	DECIMAL	13	2	Totale Importo Fattura
006	JSAQCD	CHAR	4		Cd Divisa
007	JSJYST	CHAR	1		Flag Movim Contabilizzato
008	JSCDPA	CHAR	3		Cd pagamento
009	JSA4TX	CHAR	35		Banca appoggio
010	JSAPCD	CHAR	6		Cd Cliente
011	JSABVA	DECIMAL	11	6	Cambio Fatturazione
012	JSH4SS	CHAR	2		Tipo Tassazione x Fattura
013	JSABVN	CHAR	10		Utente
014	JSV2TX	CHAR	15		Ordine di Stampa
015	JSR6CC	CHAR	10		ID Richiesta
016	JSFXSS	CHAR	1		Clienti-Fornit-Entra
017	JSEKDT	DECIMAL	7	0	Dt inizio validità



UUJUREP		UU	JU	REP			Fatture Totali Aliquo (S8 S1577289293 S1577446583) - Facturas de venta - Importes IVA

001	JUAHCD	CHAR	2		Cd filiale
002	JUJJSS	CHAR	2		Tipo Entità fatture
003	JUB8PG	DECIMAL	6	0	Numero Fattura
004	JUEDDT	DECIMAL	7	0	Data Fattura
005	JUALCD	CHAR	2		Cd Assoggettamento
006	JUH7VA	DECIMAL	13	2	Imp Tot Assoggettamento
007	JUOBVA	DECIMAL	11	2	Importo Iva



"----------------------------------------"
-- Some Fields Descriptions
"----------------------------------------"

-- EDSRTY PLEX Tipo Missione CD (A01, A02, A03, A04, A06, D01, D02, I01, M01, P01, P02, P04, P05, P06, P07, P08, T01, T02, V01)

SELECT c.LLBQAN, c.LLBPAN, c.LLC4PG, c.LLBGDT, c.LLCIDT, c.LLCWCD, EDSFCQ, EDB7AN, EDG3PG, EDSRTY, EDQICD, EDACAN, EDBUPG, EDSSTY, EEB7AN, EEG3PG, EEP3NB, EES7TY, EEM3CR, EEGEAN, EEMQPG
FROM MLD_BE101.UPEDREP a
JOIN MLD_BE101.UPEEREP b 
  ON b.EESFCQ = a.EDSFCQ 
 AND b.EEB7AN = a.EDB7AN 
 AND b.EEG3PG = a.EDG3PG 
JOIN MLD_BE101.UBLLREP c 
  ON c.LLBQAN = b.EEM3CR
 AND c.LLBPAN = b.EEGEAN
 AND c.LLC4PG = b.EEMQPG
-- WHERE EDSRTY = 'A06'
ORDER BY LLC4PG
LIMIT 5

A01 = Llegada de recogida - Exp 11/21/145471
A02 = Llegada Corresponsal - Exp. 11/2021/243853
A03 = Llegada de Remitente
A04 = Llegada de Filial
A06  
D01 = Distribución (Oficina)
D02 = Distribución (Almacén)
I01 = Inventario
M01 = Posicionamiento a Almacén
P01 = Salida Export (Oficina)
P02 
P04 = Salida Nacional (Oficina)
P05 = Salida Nacional (Almacén)
P06 = Salida Vehículo Destinatario
P07
P08
T01 = Salida por Filial (Oficina)
T02
V01 = Regreso de Distribución

-- 
-- SELECT 
-- FROM
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- 


-- COALESCE function returns the first non-NULL expression in the specified list
COALESCE(a.referencia_origen_cliente, ''::character varying) AS b1bwtx,

"----------------------------------------"

-- Some Queries

"----------------------------------------"

Convertir fecha

LLBGDT = 1210331

2021/03/31 

2021 => 2021 - 1900 * 10000 = 1210000
03 => 03 * 100 = 300
31 => 31 = 31

1210000+300+31 = 1210331

1210331

121 => 121 + 1900 = 2021
03 => 03 = 03
31 => 31 = 31

2021/03/31

select to_date(trim(to_char(19000000+'1200825','99999999')),'YYYYMMDD') as FEC_NSS_WIN, 

select to_date(trim(TO_CHAR(CURRENT_DATE,'1YYMMDD')) as FEC_WIN_NSS


SUBSTRING(campo,6,2)||'/'||SUBSTRING(campo,4,2)||'/'||SUBSTRING(campo,2,2) AS FECHA,

"----------------------------------------"


SELECT LLBQAN||'-'||LLBPAN||'-'||LLC4PG AS EXP
FROM MLD_BE101.UBLLREP
LIMIT 10


SELECT LLOCCD, LLIBCD
FROM MLD_BE101.UBLLREP

SELECT CONCAT (LLBQAN, 
     CONCAT (' ', 
      CONCAT (LLBPAN,
       CONCAT (' ', LLC4PG)
      )
     )
    )
FROM MLD_BE101.UBLLREP
LIMIT 10

-- npi
SELECT LLOCCD, LLIBCD, LLOCCD-(LLIBCD*0.1) AS DIFF
FROM MLD_BE101.UBLLREP


SELECT LLCJRA, LLALIN, LLAQLO, UPPER(LLCJRA) AS UPP_LLCJRA, LOWER(LLALIN) AS LOW_LLALIN
FROM MLD_BE101.UBLLREP

LIMIT 10 

SELECT LLCJRA, LLALIN, LLAQLO, SUBSTR(LLCJRA, 1, 1) AS SUB_LLCJRA, SUBSTR(LLALIN, -1, 8) AS SUB_LLALIN, SUBSTR(LLAQLO, 4) AS SUB_LLAQLO
FROM MLD_BE101.UBLLREP

LIMIT 10 

SELECT LLCJRA, LLALIN, LLAQLO, LLA1IN, INSTR(LLCJRA, 'F') AS INS_LLCJRA, INSTR(LLALIN, 'Y', 7) AS INS_LLALIN, INSTR(LLAQLO, 'K', -1) AS INS_LLAQLO, INSTR(LLA1IN, 'A', 1, 3) AS INS_LLA1IN
FROM MLD_BE101.UBLLREP

LIMIT 10 


-- SI UN CAMPO ESTA EN EL OTRO Y VISCEVERSA la función INSTR devuelve 1
SELECT LLOCCD, LLIBCD, INSTR(LLOCCD, LLIBCD) AS INS_LLIBCD, INSTR(LLIBCD, LLOCCD) AS INS_LLOCCD
FROM MLD_BE101.UBLLREP

WHERE LLCWCD IN ( 'CI', 'CE', 'XE', 'XI' )

GROUP BY LLOCCD, LLIBCD
ORDER BY LLOCCD, LLIBCD
"----------------------------------------"


-- Queries de consulta utiles para el proceso: edicli_pp_ - whatever

INSERT - edicli_fichero_datos_proceso
SELECT DISTINCT
	codigo_intercambio_edi,
	entorno,
	file_origen,
	COUNT(DISTINCT referencia_origen_cliente)
FROM edis.edicli_fichero_cliente
WHERE codigo_intercambio_edi='101-178089' 
GROUP BY codigo_intercambio_edi,
		 entorno,
		 file_origen;


SELECT
peso, 
bultos, 
volumen,
((bultos::integer)*(peso::double PRECISION))::double precision AS peso_calculado,
(volumen::double precision) AS volumen_calculado


FROM edis.edicli_fichero_cliente
WHERE codigo_intercambio_edi = '101-SC1234' 
  AND entorno = 'BE101x' 
  AND file_origen = 'Report Part Load.xlsx' 

SELECT DISTINCT
            codigo_intercambio_edi,
            entorno,
            file_origen,
            referencia_origen_cliente,
            row_number() over (PARTITION BY file_origen) as nro_expedicion_incremental_asig              -- enúmera las filas 
FROM
edis.edicli_fichero_cliente 
WHERE codigo_intercambio_edi = '101-SC1234' 
  AND entorno = 'BE101' 
  AND file_origen = 'Report Part Load.xlsx' 
            
GROUP BY 
    codigo_intercambio_edi,
    entorno,
    file_origen,
    referencia_origen_cliente

SELECT 
 codigo_intercambio_edi,
 entorno,
 file_origen,
 referencia_origen_cliente,
 -- SUM(bultos::integer)::integer  AS nro_bulto_incremental_asig
 row_number() over (PARTITION BY file_origen) as nro_expedicion_incremental_asig              -- enúmera las filas 
FROM
 edis.edicli_fichero_cliente
WHERE
 codigo_intercambio_edi='101-SC1234' 
AND file_origen = 'Report Part Load.xlsx' 
GROUP BY 
 codigo_intercambio_edi,
 entorno,
 file_origen ,
 referencia_origen_cliente
ORDER BY
 codigo_intercambio_edi,
 entorno,
 file_origen ,
 referencia_origen_cliente


SELECT 
cod_cliente_edi, pais_origen, pais_iso
FROM
edis.cliente_pais_mapping

SELECT 
    codigo_intercambio_edi,
    entorno,
    file_origen,
    referencia_origen_cliente,
    SUM(bultos::integer)::integer  AS nro_bulto_incremental_asig
FROM
    edis.edicli_fichero_cliente
WHERE
    codigo_intercambio_edi='101-SC1234' 
AND file_origen = 'Report Part Load.xlsx' 
GROUP BY 
    codigo_intercambio_edi,
    entorno,
    file_origen ,
    referencia_origen_cliente
ORDER BY
    codigo_intercambio_edi,
    entorno,
    file_origen ,
    referencia_origen_cliente

SELECT 
cod_cliente_edi,
pais_destinatario,
linea_partida_pais
FROM edis.cliente_lineas_partida_pais

SELECT 
   c.l6aabd, C.l6ahcd, c.l6cwcd, c.l6cwcd, c.l6anca
FROM
   edis.edicli_parametros_fijos_intercambio_edi b,
   staging_beone.ubl6rep_dest c
WHERE b.filial_nss=c.l6ahcd 
  AND (c.l6cwcd=b.servicio OR c.l6cwcd='') 


SELECT
entorno,
l6anca,
l6ahcd,
l6cwcd,
l6cmpg,
l6aabd,
l6mwcr,
l6fecr,
l6b0tx,
l6ibcd,
l6occd,
l6gscd,
l6t5qt,
l6hkqr,
l6hiqr,
l6hjqr,
l6cavb,
l6ebst,
hashvalue,
last_action,
fecha_status,
es_transferido
FROM staging_beone.ubl6rep_dest

SELECT 
codigo_intercambio_edi, 
entorno_nss, 
filial_nss, 
servicio, 
incoterm, 
cod_cliente, 
contador_exped, 
trafico, 
sector, 
tipo_merc, 
descripcion_merc, 
linea_recogida, 
linea_partida_defecto, 
user_trafico, 
prefijo_etiquetas, 
tipo_generacion_etiqueta, 
usuario_notificacion, 
consulta_generacion_etiqueta, 
es_generar_etiquetas_zpl, 
plantilla_zpl, 
es_generar_etiquetas_pdf, 
report_etiquetas, 
es_notificar_ftp_etiquetas, 
direccion_ftp_etiquetas, 
es_notificar_email_etiquetas, 
email_etiquetas, 
consulta_mapeo_etiquetas
FROM edis.edicli_parametros_fijos_intercambio_edi
WHERE cod_cliente ='000185'
ORDER BY codigo_intercambio_edi, entorno_nss, filial_nss

SELECT DISTINCT email_etiquetas
FROM edis.edicli_parametros_fijos_intercambio_edi
ORDER BY email_etiquetas

Campo edis.edicli_parametros_fijos_intercambio_edi.consulta_generacion_etiqueta
SELECT
t1.LLBQAN
, t1.LLBPAN
, t1.LLC4PG
, tfil.ALAUTX
, t4.O2AHIN
, t4.O2LOCA
, t4.O2AKNB
, t4.O2AAEM
, t1.LLCJRA
, t1.LLDRRA
, t1.LLA1IN
, t1.LLA6LO
, t1.LLBGCA
, t1.LLA3PR
, t1.LLLNCD
, t6.EVAKNB
, t1.LLAQQT
, t1.LLBBNB
, t1.LLARQT
, t7.B1BWTX
, t1.LLGCCC
, t5.CND0TX
, t3.C3HUTX
, t8.DSAAAE
FROM EntornoNss.ubllrep t1
LEFT JOIN EntornoNss.uualrep tfil ON t1.LLBQAN=tfil.ALAHCD
LEFT JOIN EntornoNss.uco2rep t4 ON tfil.ALAPCD=t4.O2APCD
LEFT JOIN EntornoNss.uucnrep t5 ON t1.LLGCCC=t5.CNAABD
INNER JOIN EntornoNss.ugc3rep t3 ON t1.LLBQAN=t3.C3AHCD AND t1.LLBPAN=t3.C3AAAN AND t1.LLC4PG=t3.C3AAPG
LEFT JOIN EntornoNss.upevrep t6 ON t1.LLBQAN=t6.EVJSCD AND t1.LLBPAN=t6.EVAAAN AND t1.LLC4PG=t6.EVAAPG
INNER JOIN EntornoNss.uub1rep t7 ON t1.LLBQAN=t7.B1AHCD AND t1.LLBPAN=t7.B1AAAN AND t1.LLC4PG=t7.B1AAPG
LEFT JOIN EntornoNss.uudsrep t8 ON t1.LLBQAN=t8.DSAHCD AND t1.LLBPAN=t8.DSAAAN AND t1.LLC4PG=t8.DSAAPG and DSI0SS='D'

 SELECT pais_destinatario, cp_destinatario,
  CASE WHEN pais_destinatario='PT' THEN concat("substring"((cp_destinatario)::text, 1, 4),'-',"substring"((cp_destinatario)::text, 6, 3)) ELSE cp_destinatario END AS llg2ca,
  CASE WHEN pais_destinatario='PT' THEN "substring"((cp_destinatario)::text, 4, 4) ELSE cp_destinatario END AS llg2ca,
  CASE WHEN pais_destinatario='PT' THEN concat(btrim((pais_destinatario)::text), "substring"((cp_destinatario)::text, 1, 2)) END AS llg3ca,
  (((((date_part('year'::text, now()) - (1900)::double precision) * (10000)::double precision) + (((date_part('month'::text, now()))::integer * 100))::double precision) + ((date_part('day'::text, now()))::integer)::double precision))::integer AS b1a5dt
 FROM
  edis.edicli_fichero_cliente
  WHERE pais_destinatario='PT'

SELECT DISTINCT LLNRCE
FROM edis.edicli_nss_ubllrep
WHERE LLOCCD = '006159'
LIMIT 10

queries del proceso: edicli_pp_scelis

SELECT
peso, 
bultos, 
volumen,
((bultos::integer)*(peso::double PRECISION))::double precision AS peso_calculado,
(volumen::double precision) AS volumen_calculado


FROM edis.edicli_fichero_cliente
WHERE codigo_intercambio_edi = '101-SC1234' 
  AND entorno = 'BE101' 
  AND file_origen = 'Report Part Load.xlsx' 

SELECT DISTINCT
            codigo_intercambio_edi,
            entorno,
            file_origen,
            referencia_origen_cliente,
            row_number() over (PARTITION BY file_origen) as nro_expedicion_incremental_asig              -- enúmera las filas 
FROM edis.edicli_fichero_cliente 
WHERE codigo_intercambio_edi = '101-SC1234' 
  AND entorno = 'BE101' 
  AND file_origen = 'Report Part Load.xlsx' 
            
GROUP BY 
    codigo_intercambio_edi,
    entorno,
    file_origen,
    referencia_origen_cliente

SELECT 
 codigo_intercambio_edi,
 entorno,
 file_origen,
 referencia_origen_cliente,
 -- SUM(bultos::integer)::integer  AS nro_bulto_incremental_asig
 row_number() over (PARTITION BY file_origen) as nro_expedicion_incremental_asig              -- enúmera las filas 
FROM
 edis.edicli_fichero_cliente
WHERE
 codigo_intercambio_edi='101-SC1234' 
AND file_origen = 'Report Part Load.xlsx' 
GROUP BY 
 codigo_intercambio_edi,
 entorno,
 file_origen ,
 referencia_origen_cliente
ORDER BY
 codigo_intercambio_edi,
 entorno,
 file_origen ,
 referencia_origen_cliente


SELECT 
cod_cliente_edi, pais_origen, pais_iso
FROM
edis.cliente_pais_mapping

SELECT 
    codigo_intercambio_edi,
    entorno,
    file_origen,
    referencia_origen_cliente,
    SUM(bultos::integer)::integer  AS nro_bulto_incremental_asig
FROM
    edis.edicli_fichero_cliente
WHERE
    codigo_intercambio_edi='101-SC1234' 
AND file_origen = 'Report Part Load.xlsx' 
GROUP BY 
    codigo_intercambio_edi,
    entorno,
    file_origen ,
    referencia_origen_cliente
ORDER BY
    codigo_intercambio_edi,
    entorno,
    file_origen ,
    referencia_origen_cliente

SELECT 
cod_cliente_edi,
pais_destinatario,
linea_partida_pais
FROM edis.cliente_lineas_partida_pais

SELECT 
   c.l6aabd, C.l6ahcd, c.l6cwcd, c.l6cwcd, c.l6anca
FROM
   edis.edicli_parametros_fijos_intercambio_edi b,
   staging_beone.ubl6rep_dest c
WHERE b.filial_nss=c.l6ahcd 
  AND (c.l6cwcd=b.servicio OR c.l6cwcd='') 


SELECT
entorno,
l6anca,
l6ahcd,
l6cwcd,
l6cmpg,
l6aabd,
l6mwcr,
l6fecr,
l6b0tx,
l6ibcd,
l6occd,
l6gscd,
l6t5qt,
l6hkqr,
l6hiqr,
l6hjqr,
l6cavb,
l6ebst,
hashvalue,
last_action,
fecha_status,
es_transferido
FROM staging_beone.ubl6rep_dest

SELECT 
codigo_intercambio_edi, 
entorno_nss, 
filial_nss, 
servicio, 
incoterm, 
cod_cliente, 
contador_exped, 
trafico, 
sector, 
tipo_merc, 
descripcion_merc, 
linea_recogida, 
linea_partida_defecto, 
user_trafico, 
prefijo_etiquetas, 
tipo_generacion_etiqueta, 
usuario_notificacion, 
consulta_generacion_etiqueta, 
es_generar_etiquetas_zpl, 
plantilla_zpl, 
es_generar_etiquetas_pdf, 
report_etiquetas, 
es_notificar_ftp_etiquetas, 
direccion_ftp_etiquetas, 
es_notificar_email_etiquetas, 
email_etiquetas, 
consulta_mapeo_etiquetas
FROM edis.edicli_parametros_fijos_intercambio_edi
WHERE cod_cliente ='000185'
ORDER BY codigo_intercambio_edi, entorno_nss, filial_nss

SELECT DISTINCT filial_nss, trafico, contador_exped            
FROM edis.edicli_parametros_fijos_intercambio_edi


SELECT DISTINCT email_etiquetas
FROM edis.edicli_parametros_fijos_intercambio_edi
ORDER BY email_etiquetas

Campo edis.edicli_parametros_fijos_intercambio_edi.consulta_generacion_etiqueta
SELECT
t1.LLBQAN
, t1.LLBPAN
, t1.LLC4PG
, tfil.ALAUTX
, t4.O2AHIN
, t4.O2LOCA
, t4.O2AKNB
, t4.O2AAEM
, t1.LLCJRA
, t1.LLDRRA
, t1.LLA1IN
, t1.LLA6LO
, t1.LLBGCA
, t1.LLA3PR
, t1.LLLNCD
, t6.EVAKNB
, t1.LLAQQT
, t1.LLBBNB
, t1.LLARQT
, t7.B1BWTX
, t1.LLGCCC
, t5.CND0TX
, t3.C3HUTX
, t8.DSAAAE
FROM EntornoNss.ubllrep t1
LEFT JOIN EntornoNss.uualrep tfil ON t1.LLBQAN=tfil.ALAHCD
LEFT JOIN EntornoNss.uco2rep t4 ON tfil.ALAPCD=t4.O2APCD
LEFT JOIN EntornoNss.uucnrep t5 ON t1.LLGCCC=t5.CNAABD
INNER JOIN EntornoNss.ugc3rep t3 ON t1.LLBQAN=t3.C3AHCD AND t1.LLBPAN=t3.C3AAAN AND t1.LLC4PG=t3.C3AAPG
LEFT JOIN EntornoNss.upevrep t6 ON t1.LLBQAN=t6.EVJSCD AND t1.LLBPAN=t6.EVAAAN AND t1.LLC4PG=t6.EVAAPG
INNER JOIN EntornoNss.uub1rep t7 ON t1.LLBQAN=t7.B1AHCD AND t1.LLBPAN=t7.B1AAAN AND t1.LLC4PG=t7.B1AAPG
LEFT JOIN EntornoNss.uudsrep t8 ON t1.LLBQAN=t8.DSAHCD AND t1.LLBPAN=t8.DSAAAN AND t1.LLC4PG=t8.DSAAPG and DSI0SS='D'

SELECT pais_destinatario, cp_destinatario,
 CASE WHEN pais_destinatario='PT' THEN concat("substring"((cp_destinatario)::text, 1, 4),'-',"substring"((cp_destinatario)::text, 6, 3)) ELSE cp_destinatario END AS llg2ca,
 CASE WHEN pais_destinatario='PT' THEN "substring"((cp_destinatario)::text, 4, 4) ELSE cp_destinatario END AS llg2ca,
 CASE WHEN pais_destinatario='PT' THEN concat(btrim((pais_destinatario)::text), "substring"((cp_destinatario)::text, 1, 2)) END AS llg3ca,
 (((((date_part('year'::text, now()) - (1900)::double precision) * (10000)::double precision) + (((date_part('month'::text, now()))::integer * 100))::double precision) + ((date_part('day'::text, now()))::integer)::double precision))::integer AS b1a5dt
FROM
 edis.edicli_fichero_cliente
 WHERE pais_destinatario='PT'

SELECT DISTINCT LLNRCE
FROM edis.edicli_nss_ubllrep
WHERE LLOCCD = '006159'
LIMIT 10

SELECT
peso, 
(peso::double PRECISION) AS peso_double,
(peso::double PRECISION)::integer AS peso_integer,
round((peso::double PRECISION)) AS peso_double_round,
(round((peso::double PRECISION))):: integer AS peso_int_round,

bultos, 
bultos::double PRECISION AS bultos_double,
(bultos::double PRECISION)::integer AS bultos_int,

volumen,
(volumen::double PRECISION) AS volumen_double,
round((volumen::double PRECISION)) AS volumen_double_round,
(round((volumen::double PRECISION)))::integer AS volumen_int_round,

(bultos::double PRECISION)*(peso::double PRECISION) AS peso_double_calculado,
bultos::double PRECISION*(round((peso::double PRECISION))) AS peso_double_round_calculado,
(bultos::double PRECISION)::integer*(peso::double PRECISION)::integer AS peso_int_calculado,
(bultos::double PRECISION)::integer*(round((peso::double PRECISION))):: integer AS peso_int_round_calculado,

(((date_part('year'::text, now()))::double precision - 1900) * 10000) AS year,
((date_part('month'::text, now()))::double precision * 100) AS month,
(date_part('day'::text, now()))::double precision AS day,

-- result => fecha tipo integer
(((((date_part('year'::text, now()) - (1900)::double precision) * (10000)::double precision) + (((date_part('month'::text, now()))::integer * 100))::double precision) + ((date_part('day'::text, now()))::integer)::double precision))::integer AS c3a5dt

FROM edis.edicli_fichero_cliente
WHERE codigo_intercambio_edi = '101-SC1234' 
  AND entorno = 'BE101' 
  AND file_origen = 'Report Part Load.xlsx' 


"----------------------------------------"
-- MLD_BE101.

SELECT DISTINCT LLGSCD, LLDRRA, LLA6LO, LLBGCA, LLM7CE, LLNFCE, LLNJCE, LLNMCE, LLLNCD, LLHMCE, LLATCC, LLDECA, llddca, LLAKCD, LLAJQT, LLWQST, LLGCCC, LLBNDT, LLNQCE, LLNTCE, LLNRCE
FROM MLD_BE101.UBLLREP
WHERE LLOCCD = '006159'

SELECT b.*
FROM MLD_BE101.UBLLREP a 
JOIN MLD_BE101.UUCKREP b
  ON a.LLBQAN = b.CKAHCD
 AND a.LLBPAN = b.CKAAAN
 AND a.LLC4PG = b.CKAAPG
WHERE LLOCCD = '006159'                                                                                                     
  AND LLBPAN = 2017                                                                                                         
  AND LLC4PG = 103251 

SELECT DISTINCT CKGRNB
FROM MLD_BE101.UBLLREP a 
JOIN MLD_BE101.UUCKREP b
  ON a.LLBQAN = b.CKAHCD
 AND a.LLBPAN = b.CKAAAN
 AND a.LLC4PG = b.CKAAPG
WHERE LLOCCD = '006159'                                                                                                     
  AND LLBPAN = 2017                                                                                                         
  AND LLC4PG = 103251 

SELECT DISTINCT CKGRNB
FROM MLD_BE101.UUCKREP
WHERE CKAAAN = 2017                                                                                                         
  AND CKAAPG = 103251

SELECT a.*, b.*
FROM MLD_BE101.UBLLREP a 
JOIN MLD_BE101.UUCSREP b
  ON a.LLBQAN = b.CSAHCD
 AND a.LLBPAN = b.CSAAAN
 AND a.LLC4PG = b.CSAAPG
WHERE LLOCCD = '006159'                                                            
                       
SELECT a.*, b.*
FROM MLD_BE101.UBLLREP a 
JOIN MLD_BE101.UUCLREP b
  ON a.LLBQAN = b.CLAHCD
 AND a.LLBPAN = b.CLAAAN
 AND a.LLC4PG = b.CLAAPG
WHERE LLOCCD = '006159'                                                            

SELECT a.*, b.*
FROM MLD_BE101.UBLLREP a
JOIN MLD_BE101.UUCKREP b
ON CKAHCD = LLBQAN
AND CKAAAN = LLBPAN
AND CKAAPG = LLC4PG
WHERE LLOCCD = '006159'
  AND LLBPAN = 2021
  AND LLCWCD = 'TE'

SELECT LLDECA, LLDDCA, COUNT(LLC4PG)
SELECT CKGRNB, CKBECD, COUNT(LLC4PG)
FROM MLD_BE101.UBLLREP a
JOIN MLD_BE101.UUCKREP b
ON CKAHCD = LLBQAN
AND CKAAAN = LLBPAN
AND CKAAPG = LLC4PG
WHERE LLOCCD = '006159'
  AND LLBPAN = 2021
  AND LLCWCD = 'TE'
GROUP BY CKGRNB, CKBECD
GROUP BY LLDECA, LLDDCA

SELECT LLDECA, LLDDCA, COUNT(LLC4PG) AS TOT
FROM MLD_BE101.UBLLREP a
JOIN MLD_BE101.UUCKREP b
ON CKAHCD = LLBQAN
AND CKAAAN = LLBPAN
AND CKAAPG = LLC4PG
WHERE LLOCCD = '006159'
  AND LLBPAN = 2021
  AND LLCWCD = 'TE'
GROUP BY LLDECA, LLDDCA
ORDER BY TOT DESC

SELECT LLDDCA, COUNT(LLC4PG) AS TOT
FROM MLD_BE101.UBLLREP a
JOIN MLD_BE101.UUCKREP b
ON CKAHCD = LLBQAN
AND CKAAAN = LLBPAN
AND CKAAPG = LLC4PG
WHERE LLOCCD = '006159'
  AND LLBPAN = 2021
  AND LLCWCD = 'TE'
GROUP BY LLDDCA
ORDER BY TOT DESC

SELECT LLBQAN, LLCWCD, LLBPAN, COUNT(LLBQAN) AS BRCD
FROM MLD_BE101.UBLLREP
WHERE LLOCCD = '006159'
  AND LLBPAN = 2021
GROUP BY LLBQAN, LLCWCD, LLBPAN


SELECT LLBQAN, LLCWCD, LLBPAN, SUBSTR(LLC4PG,1,2) AS BRCD
FROM MLD_BE101.UBLLREP 
WHERE LLOCCD = '006159'
  AND LLBPAN = 2021
ORDER BY LLBQAN, LLCWCD, LLBPAN


SELECT LLBQAN, LLCWCD, COUNT((SUBSTR(LLC4PG,1,2))) AS BRCD
FROM MLD_BE101.UBLLREP 
WHERE LLOCCD = '006159'
  AND LLBPAN = 2021
GROUP BY LLBQAN, LLCWCD
ORDER BY ORDER BY LLBQAN, LLCWCD


SELECT a.*, b.*, c.*, d.*, e.*, f.*, g.*, i.*, j.*, k.*, m.*

FROM MLD_BE101.UBLLREP a

JOIN MLD_BE101.UUB1REP b
 ON B1AHCD = LLBQAN
AND B1AAAN = LLBPAN
AND B1AAPG = LLC4PG

-- Relación 1M
LEFT JOIN MLD_BE101.UUCKREP c
 ON CKAHCD = LLBQAN
AND CKAAAN = LLBPAN
AND CKAAPG = LLC4PG

-- Relación 1M
LEFT JOIN MLD_BE101.UGC3REP d
 ON C3AHCD = LLBQAN
AND C3AAAN = LLBPAN
AND C3AAPG = LLC4PG

JOIN MLD_BE101.UUCLREP e
 ON CLAHCD = LLBQAN
AND CLAAAN = LLBPAN
AND CLAAPG = LLC4PG

JOIN MLD_BE101.AABYCPP f
 ON BYAHCD = LLBQAN
AND BYAAAN = LLBPAN
AND BYAAPG = LLC4PG

JOIN MLD_BE101.UUDSREP g
 ON DSAHCD = LLBQAN
AND DSAAAN = LLBPAN
AND DSAAPG = LLC4PG

-- Relación 1M
JOIN MLD_BE101.UUDUREP i
 ON DUJSCD  = LLBQAN
AND DUAAAN  = LLBPAN
AND DUAAPG  = LLC4PG

JOIN MLD_BE101.UPAMREP j
 ON j.OP5FBA = LLBQAN
AND j.OP57AA = LLBPAN
AND j.OP57BA = LLC4PG

JOIN MLD_BE101.UPANREP k
 ON k.OP5FBA = LLBQAN
AND k.OP57AA = LLBPAN
AND k.OP57BA = LLC4PG

JOIN MLD_BE101.UPAOREP m
 ON m.OP5FBA = LLBQAN
AND m.OP57AA = LLBPAN
AND m.OP57BA = LLC4PG

WHERE LLOCCD = '006159'
  AND LLBPAN = 2021
  AND LLCWCD = 'TE'


SELECT a.*, h.*

FROM MLD_BE101.UBLLREP a

-- Relación 1M
LEFT JOIN MLD_BE101.UPEVREP h
 ON EVJSCD = LLBQAN
AND EVAAAN = LLBPAN
AND EVAAPG = LLC4PG

WHERE LLOCCD = '006159'
  AND LLBPAN = 2021
  AND LLCWCD = 'TE'

SELECT a.*, l.*

FROM MLD_BE101.UBLLREP a

-- Relación 1M
LEFT JOIN MLD_BE101.UUCSREP l
 ON CSAHCD = LLBQAN
AND CSAAAN = LLBPAN
AND CSAAPG = LLC4PG

WHERE LLOCCD = '006159'
  AND LLBPAN = 2021
  AND LLCWCD = 'TE'

-- SELECT a.*, h.*
-- 
-- FROM MLD_BE101.UBLLREP a
-- 
-- -- Relación 1M
-- LEFT JOIN MLD_BE101.UPEVREP h
--  ON EVJSCD = LLBQAN
-- AND EVAAAN = LLBPAN
-- 
-- 
-- WHERE LLOCCD = '006159'
--   AND LLBPAN = 2021
--   AND LLCWCD = 'TE'

-- Etiquetas ??

SELECT *
FROM MLD_BE101.UBLLREP
LEFT JOIN MLD_BE101.UUALREP  
 ON LLBQAN = ALAHCD

LEFT JOIN MLD_BE101.UCO2REP 
 ON ALAPCD = O2APCD

LEFT JOIN MLD_BE101.UUCNREP 
 ON LLGCCC = CNAABD
 
JOIN MLD_BE101.UGC3REP	
 ON LLBQAN = C3AHCD 
AND LLBPAN = C3AAAN 
AND LLC4PG = C3AAPG

LEFT JOIN MLD_BE101.UPEVREP 
 ON LLBQAN = EVJSCD 
AND LLBPAN = EVAAAN 
AND LLC4PG = EVAAPG

JOIN MLD_BE101.UUB1REP	
 ON LLBQAN = B1AHCD 
AND LLBPAN = B1AAAN 
AND LLC4PG = B1AAPG

LEFT JOIN MLD_BE101.UUDSREP 
 ON LLBQAN = DSAHCD 
AND LLBPAN = DSAAAN 
AND LLC4PG = DSAAPG 
AND DSI0SS='D'

WHERE LLOCCD = '006159'
  AND LLBPAN = 2021
  AND LLCWCD = 'TE'


SELECT
COALESCE(
( SELECT OGSFTX 
  FROM MLD_BE101.UCOGREP 
  WHERE OGATCC = $P{Comercial}  ),
'') AS NOMBRE,

DDAPCD AS COD_CLIENTE,

DDBBRA AS NOMBRE_CLIENTE,

COALESCE (
( SELECT SUM(LNKYVA) 
  FROM MLD_BE101.UBLNREP 
  WHERE LNAPCD = AA.DDAPCD 
    AND (LNLSNB =  $P{Year} -3)),
'0' ) AS F2018,

COALESCE(
( SELECT SUM(LNKYVA) 
  FROM MLD_BE101.UBLNREP 
  WHERE LNAPCD = AA.DDAPCD 
    AND (LNLSNB =    $P{Year} -2)),
'0') AS F2019,

COALESCE(
( SELECT SUM(LNKYVA) 
  FROM MLD_BE101.UBLNREP 
  WHERE LNAPCD = AA.DDAPCD 
    AND (LNLSNB =    $P{Year} -1)),
'0') AS F2020,

COALESCE(
( SELECT SUM(LNKYVA) 
  FROM MLD_BE101.UBLNREP 
  WHERE LNAPCD = AA.DDAPCD 
    AND( LNLSNB =     $P{Year} )) ,
'0') AS F2021

FROM MLD_BE101.UUDDREP AS AA

WHERE EXISTS ( SELECT * 
               FROM MLD_BE101.UPBBREP 
			   WHERE APCD = AA.DDAPCD 
			     AND ATCC =  $P{Comercial} )


ORDER BY DDBBRA

--<-------------------------------------------------------->
Cuando un código no es un cliente (por eso no sale en la tabla de clientes comerciales UCO2REP),
es una entidad, y hay que buscar en la tabla de entidades UUDDREP, NO todas las entidades son clientes comerciales.

Esta dos tablas son muy parecidas. (estos campos coinciden) 



SELECT O2APCD,DDAPCD, O2BBRA,DDBBRA, O2ARRA,DDARRA, O2AHIN,DDAHIN, O2ADCA,DDADCA, O2LOCA,DDLOCA, O2AEPR,DDAEPR, O2AGUX,DDA2TX, O2ATCD,DDATCD, O2ALNB,DDALNB, O2AKNB,DDAKNB, O2ADNB,DDADNB, O2A6TX,DDA6TX, O2AICD,DDAICD, O2CHTX,DDCHTX, O2AACD,DDBYCD, O2AFCD,DDAFCD, O2AQCD,DDAQCD, O2BATX,DDBATX, O2D3SS,DDD3SS, O2AICD,DDAICD, O2ATCC,DDATCC, O2ANUX,DDBWTX, O2ABVN,DDABVN, O2A5DT,DDA5DT, O2BQST,DDBQST
FROM MLD_BE101.UUDDREP

LEFT JOIN MLD_BE101.UCO2REP
  ON DDAPCD = O2APCD

LEFT JOIN MLD_BE101.UCO2REP
  ON DDAPCD = O2APCD

WHERE O2APCD = '004460' 

--<-------------------------------------------------------->

SELECT nombre
FROM
( SELECT DISTINCT entorno, ogsftx AS nombre 
  FROM beone.UCOGrep_dest 
  WHERE entorno = 'BE101'
    AND ogatcc = 'ESMO' ) ucog

--<-------------------------------------------------------->

SELECT v1.entorno, v1.hgatcc, t1.ogsftx
FROM beone.vw_UUHGrep_dest v1
LEFT JOIN beone.UCOGrep_dest t1
  ON v1.entorno = t1.entorno
 AND v1.hgatcc = t1.ogatcc

WHERE v1.hgc0dt >= 1210308
  AND v1.hgc0dt <= 1220308
  

-- == igual ==

SELECT v1.entorno, v1.hgatcc, t1.ogsftx
FROM beone.vw_UUHGrep_dest v1, beone.UCOGrep_dest t1
WHERE v1.entorno = t1.entorno
  AND v1.hgatcc = t1.ogatcc
  AND v1.hgc0dt >= 1210308
  AND v1.hgc0dt <= 1220308
  
--<-------------------------------------------------------->

SELECT v1.entorno, v1.hgatcc, 

(SELECT DISTINCT t1.ogsftx
 FROM beone.UCOGrep_dest t1
 WHERE v1.entorno = t1.entorno
   AND v1.hgatcc = t1.ogatcc) AS nombre

FROM beone.vw_UUHGrep_dest v1

WHERE v1.hgc0dt >= 1210308
  AND v1.hgc0dt <= 1220308

--<-------------------------------------------------------->





-- PostgreSQL

CREATE TABLE edis.weather (
    city            varchar(80),
    temp_lo         int,           -- low temperature
    temp_hi         int,           -- high temperature
    prcp            real,          -- precipitation
    date            date
);
CREATE TABLE edis.cities (
    name            varchar(80),
    location        point
);
INSERT INTO edis.weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');
INSERT INTO edis.weather (city, temp_lo, temp_hi, prcp, date)
	 VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');
INSERT INTO weather (date, city, temp_hi, temp_lo)
	 VALUES ('1994-11-29', 'Hayward', 54, 37);
INSERT INTO edis.cities 
	 VALUES ('San Francisco', '(-194.0, 53.0)');	
	 
DROP TABLE edis.tablename;

--<-------------------------------------------------------->

-- testing
-- https://www.postgresql.org/docs/current/sql-copy.html
COPY edis.weather FROM '/home/user/weather.txt';

weather.txt
INSERT INTO edis.weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');
--<-------------------------------------------------------->

SELECT * 
FROM edis.weather;

SELECT city, temp_lo, temp_hi, prcp, date 
FROM edis.weather;

SELECT city, (temp_hi+temp_lo)/2 AS temp_avg, date 
FROM edis.weather;

SELECT * 
FROM edis.weather;
WHERE city = 'San Francisco' 
  AND prcp > 0.0;
  
SELECT * 
FROM edis.weather;
ORDER BY city;

SELECT * 
FROM edis.weather;
ORDER BY city, temp_lo;

SELECT DISTINCT city
FROM edis.weather;

SELECT DISTINCT city
FROM edis.weather;
ORDER BY city;

SELECT * 
FROM edis.weather
JOIN edis.cities 
  ON city = name;

--<-------------------------------------------------------->

are identical

SELECT weather.city, weather.temp_lo, weather.temp_hi, weather.prcp, weather.date, cities.location
FROM edis.weather
JOIN edis.cities 
  ON weather.city = cities.name;
	
SELECT *
FROM edis.weather, edis.cities
WHERE city = name;

--<-------------------------------------------------------->

SELECT *
FROM edis.weather
LEFT OUTER JOIN edis.cities 
  ON weather.city = cities.name;

SELECT w1.city, w1.temp_lo AS low, w1.temp_hi AS high,
       w2.city, w2.temp_lo AS low, w2.temp_hi AS high
FROM edis.weather w1 
JOIN edis.weather w2
  ON w1.temp_lo < w2.temp_lo 
 AND w1.temp_hi > w2.temp_hi;
 
SELECT w1.city, w1.temp_lo AS low, w1.temp_hi AS high, w2.city, w2.temp_lo AS low, w2.temp_hi AS high
FROM edis.weather w1 
JOIN edis.weather w2
  ON w1.temp_lo < w2.temp_lo 
 AND w1.temp_hi > w2.temp_hi;
 
SELECT *
FROM edis.weather
RIGHT OUTER JOIN edis.cities 
   ON weather.city = cities.name;
   
SELECT *
FROM edis.weather w 
JOIN edis.cities c 
  ON w.city = c.name;
  
SELECT max(temp_lo) 
FROM edis.weather

SELECT city 
FROM edis.weather
WHERE temp_lo = (SELECT max(temp_lo) 
                 FROM edis.weather);
				 
SELECT city, max(temp_lo)
FROM edis.weather
GROUP BY city;

SELECT city, max(temp_lo)
FROM edis.weather
GROUP BY city
HAVING max(temp_lo) < 40;

SELECT city, max(temp_lo)
FROM edis.weather
GROUP BY city
HAVING max(temp_lo) >= 0;

SELECT city, temp_lo
FROM edis.weather
WHERE temp_lo = (SELECT max(temp_lo) AS maxima
                 FROM edis.weather)
GROUP BY city, temp_lo
HAVING temp_lo >= 0

--<-------------------------------------------------------->
Ctrl + Alt + Shift + B 

<?xml version="1.0" encoding="UTF-8" ?>
<jdbcDataAdapter class="net.sf.jasperreports.data.jdbc.JdbcDataAdapterImpl">
	<name>NSS - Produccion</name>
	<driver>com.ibm.as400.access.AS400JDBCDriver</driver>
	<username>MLDDBUSER</username>
	<password>G0KOSH73O6</password>
	<savePassword>true</savePassword>
	<url>jdbc:as400://novadb1.novasystems.it</url>
	<database/>
	<serverAddress/>
	<classpath>C:\jaspersoftstudio\jt400.jar</classpath>
</jdbcDataAdapter>

--<-------------------------------------------------------->

<?xml version="1.0" encoding="UTF-8" ?>
<jdbcDataAdapter class="net.sf.jasperreports.data.jdbc.JdbcDataAdapterImpl">
	<name>BEONE</name>
	<driver>com.ibm.as400.access.AS400JDBCDriver</driver>
	<username>MLDDBUSER</username>
	<password>G0KOSH73O6</password>
	<savePassword>true</savePassword>
	<url>jdbc:as400://NOVADB1.NOVASYSTEMS.IT:IASP01</url>
	<database/>
	<serverAddress/>
	<classpath>C:\jaspersoftstudio\jt400.jar</classpath>
</jdbcDataAdapter>

--<-------------------------------------------------------->

<?xml version="1.0" encoding="UTF-8" ?>
<jdbcDataAdapter class="net.sf.jasperreports.data.jdbc.JdbcDataAdapterImpl">
	<name>DATALAKE</name>
	<driver>org.postgresql.Driver</driver>
	<username>postgres</username>
	<password>kafka789</password>
	<savePassword>true</savePassword>
	<url>jdbc:postgresql://vmodalix.MOLDTRANS.COM:5432/datalake?ssl=true&amp;sslfactory=org.postgresql.ssl.NonValidatingFactory</url>
	<database/>
	<serverAddress/>
</jdbcDataAdapter>

--<-------------------------------------------------------->

<?xml version="1.0" encoding="UTF-8" ?>
<jdbcDataAdapter class="net.sf.jasperreports.data.jdbc.JdbcDataAdapterImpl">
	<name>NSS - Desarrollo</name>
	<driver>com.ibm.as400.access.AS400JDBCDriver</driver>
	<username>MLDTEST</username>
	<password>G0KOSH73O6</password>
	<savePassword>true</savePassword>
	<url>jdbc:as400://novadb1.novasystems.it</url>
	<database/>
	<serverAddress/>
	<classpath>C:\jaspersoftstudio\jt400.jar</classpath>
</jdbcDataAdapter>

--<-------------------------------------------------------->



--<-------------------------------------------------------->

SELECT *
FROM MLD_BE101.UUAFREP

--- Carlos

-- UGC9REP	WorkFlow - Tipi Event (S8 S1577286521 S1577494800)
SELECT *
FROM MLD_BE101.
UGC9REP
WHERE
C9ESUX	
LIKE '%Llegad%'

C9H6CQ	C9ESUX	C9ELSX	C9EMSX	C9JZSX	C9ENSX	C9EOSX	C9JTSX	C9JUSX	C9JVSX	C9JWSX	C9JXSX	C9JYSX	C9A1CD	C9R8CQ	C9LYSX	C9M9SX	C9ABVN	C9A5DT	C9BQST
S00002	Confirma Llegada Mercancia		S	1				S								0008	ELVIS	1180410
SSU030	Llegada Prevista		S	1				S			S					0035	BEONE	1160907
SSU150	Llegada Prevista a Terminal Corresponsal		S	1				S			S					0039	BEONE	1160907
SSU160	Llegada Real a Terminal Corresponsal		S	1				S			S					0040	BEONE	1160907
SSU630	Llegada Prevista		S	1				S								0035	MLDESANTA	1200611


-- UPEZREP	WorkFlow - Eventi Status Descr.
SELECT *
FROM MLD_BE101.
UPEZREP
WHERE
ESUX	
LIKE '%Llegad%'


OP4U3A	R7CQ	OP50MA	AACD	ESUX
STDEXP	DPTINT	7	5	Llegada a Corresponsal

-- UPAHREP	WorkFlow - Tipi Evento in Lingua.
SELECT *
FROM MLD_BE101.
UPAHREP
WHERE
ESUX	
LIKE '%Llegad%'

H6CQ	AACD	ESUX
SSU150	2	Llegada Prevista a Terminal Corresponsal
SSU160	2	Llegada Real a Terminal Corresponsal
SSU160	5	Llegada Real a Terminal Corresponsal
SSU150	5	Llegada Prevista a Terminal Corresponsal

SELECT 
A.CMAHCD AS FILIALM,
SUBSTR(TO_CHAR(A.CMDUDT,'0000000'),3,2) AS ANYO,
SUBSTR(TO_CHAR(A.CMDUDT,'0000000'),5,2) AS MES,
B. DUPMCD AS RESULTADO,
D.IQTATX AS ESTADO,
C.LLGCCC AS SALIDA,
SUM(1) AS PARTIDAS,
SUM(C.LLAQQT) AS BULTOS,
SUM(C.LLBBNB) AS KILOS
FROM MLD_BE101X.UUCMREP A
LEFT JOIN MLD_BE101X.UUDUREP B ON A.CMAHCD = B.DUPQCD AND A.CMACAN = B.DUACAN AND A.CMBUPG = B.DUBUPG
LEFT JOIN MLD_BE101X.UBLLREP C ON B.DUAAPG = C.LLC4PG AND B.DUAAAN = C.LLBPAN AND B.DUJSCD = C.LLBQAN
LEFT JOIN MLD_BE101X.UUIQREP D ON B.DUPMCD = D.IQPMCD
WHERE A.CMBFST = 'RC'
AND A.CMAHCD = 13 AND A.CMDUDT >= 1200101  AND A.CMDUDT <= 1200126
GROUP BY CMAHCD, SUBSTR(TO_CHAR(A.CMDUDT,'0000000'),3,2), SUBSTR(TO_CHAR(A.CMDUDT,'0000000'),5,2), DUPMCD, IQTATX, LLGCCC
ORDER BY  CMAHCD, SUBSTR(TO_CHAR(A.CMDUDT,'0000000'),3,2),SUBSTR(TO_CHAR(A.CMDUDT,'0000000'),5,2), DUPMCD, IQTATX, LLGCCC


"----------------------------------------"
Looking for
"----------------------------------------"
EDSRTY  PLEX Tipo Missione CD

-- UCMWREP	Tipi Container.
-- UUB1REP	Sped. (S8 S1577290761 S1577446583)	199.576	Maestro Expediciones 1
-- UDRNREP	Sped Merce Dettaglio.Physica (S8 S1577287718 S_46)	155.623	OJO,ES FULL
-- UUF4REP	CMR testata.
-- UCQOREP	Sped Mare Container.
-- UUC8CPP	Sts parametri.Physica (S8 S1577290545 S1577446583)
-- UUJDREP	Sped Ritiri.	
-- UBMBREP	Impegni commerciali        
-- UDRSREP	Borderò x Corr CNTR.
-- UCOSREP	Sped Handling Informa (S8 S1577288163 S1577446583)
-- UDRPREP	Polizze di Carico Testata.
-- UETZREP	Polizze di Carico Tipo.
-- UPBZREP	Anag Clienti Dati Depositan (S8 S1577813968 S_572)
-- UUFSREP	Parametri x Mov Conta (S8 S1577289919 S1577446583)
-- UDS2REP	Funzioni STS per Driv (S8 S1577287340 S1577446583)
No Data Returned -- UUHRREP	Documenti Elettronici (STS).

-- UBLNREP	Movimenti Analitici
-- UDTBREP	Documenti Richiesti        
-- UCOWREP	Offerte Spot               	
-- UGCQREP	Elementi Sezione Tentat    	
-- UCQMREP	Sped Aereo                 	
-- UUDQREP	Elementi sezione           	
-- UPECREP	PLEX Porte Cross Docking   	

"----------------------------------------"
Expediciones linea CD
"----------------------------------------"
MLD_BE101.UUIOREP a
MLD_BE101.UBLNREP b
MLD_BE101.UUDDREP c
MLD_BE101.UBLLREP d


-- UUIOREP	borderò - (manifiesto) x Corr.

-- IOAHCD	Cd filiale borderò - (manifiesto)
-- IOACAN	Anno borderò - (manifiesto)
-- IOBUPG	Progr borderò - (manifiesto)
-- IOP0NB	Progr Concarico
-- IOBFST	Tp borderò - (manifiesto)'
-- IOEIST	Flag tp lista borderò - (manifiesto)'
-- IODUDT	Data Viaggio
-- IOB0TX	Cd Corrispondente
-- IOAABD	Cd Linea
-- IOQDCD	Cd 1° Cassa Mobile
-- IOYETX	Sigla 1° Cassa Mobile
-- IOQGCD	Cd 2° Cassa Mobile
-- IOYFTX	Sigla 2° Cassa Mobile
-- IOBWTX	Note
-- IORVCO	Rifer Corrispondente
-- IOC3DT	Dt Riferimenti
-- IOF6ST	Flag consegna diretta
-- IOD9SS	Flag Invio Dati
-- IOA2SX	borderò - (manifiesto) Esitato
-- IOA3SX	Inviati Dati FHL Aereo
-- IOA4SX	Flag Palette Lavorate
-- IOA5SX	Creato Conto Sociale Bord
-- IOA6SX	Flag borderò - (manifiesto) x Corrispondente 05
-- IOWJTY	Flag borderò - (manifiesto) x Corrispondente 06
-- IOWKTY	Flag borderò - (manifiesto) x Corrispondente 07
-- IOWLTY	Flag borderò - (manifiesto) x Corrispondente 08
-- IOWMTY	Flag borderò - (manifiesto) x Corrispondente 09
-- IOWOTY	Flag borderò - (manifiesto) x Corrispondente 10
-- IOCACD	Cd tp mezzo
-- IOL6CD	Cd tp mezzo 2
-- IOAUDX	Data Arr Par Prevista Term Corr
-- IOBGTM	Ora Arr Par Prevista Term Corr
-- IOAVDX	Data Arr Par Effettiva Term Corr
-- IOBHTM	Ora Arr Par Effettiva Term Corr
-- IOGJDT	Data Partenza Prevista
-- IOKDDT	Data Arrivo Prevista
-- IODXDT	Data Carico
-- IOKRCR	Cd Divisa Trazione
-- IOHXVA	Imp Trazione

-- UBLNREP	Movimenti Analitici  
      
-- LNCFAN	Anno Movimento      Analitica
-- LNC7PG	Nr Registrazione
-- LNC8PG	Progr Registrazione
-- LNF4ST	Flag Costo-Ricavo
-- LNF2ST	Tipo Movimento      Contabile
-- LNLSNB	Anno di Competenza
-- LNIUNB	Mese di Competenza
-- LNTICD	Cd filiale Fattura
-- LNJJSS	Tipo Entità fatture
-- LNL4NB	Nr Protocollo
-- LNEZDT	Dt Protocollo
-- LNL5NB	Nr Documento Fornitore - Proveedor
-- LNAKDT	Dt documento
-- LNZZCE	Cd Conto Analitica
-- LNA1CD	Cd voce fattura
-- LNAMCD	Cd Conto Contabile
-- LNAPCD	Cd  
-- LNB0TX	Cd Fornitore - Proveedor
-- LNKXVA	Importo Previsionale DP
-- LNKYVA	Importo Consuntivo DP
-- LNGCVA	Importo Previsionale DS
-- LNGDVA	Importo Consuntivo DS
-- LNT5ST	Tipo Movimento
-- LNBQAN	Cd Filiale Spediz-Posiz
-- LNBPAN	Anno Spedizione-Posizione
-- LNC4PG	Progr Spediz-Posizione
-- LNOKCD	Cd filiale posizione
-- LNAZAN	Anno Posizione
-- LNBEPG	Progr Posizione
-- LNQICD	Cd filiale borderò - (manifiesto)
-- LNACAN	Anno borderò - (manifiesto)
-- LNBUPG	Progr borderò - (manifiesto)
-- LNP0NB	Progr Concarico
-- LNKYCQ	Cd Filiale Entrata Magaz
-- LNC4AN	Anno Entrata Magaz
-- LNHKPG	Progr Entrata Magaz
-- LND8SS	Tipo Trasporto
-- LNCWCD	Cd   servizio
-- LNBPST	Settore di traffico
-- LNTFCD	Cd filiale Competenza
-- LNAABD	Cd   linea
-- LNAQCD	Cd   Divisa
-- LNNHVA	Cambio Movim Previsionale
-- LNNIVA	Importo Previs in Valuta
-- LNMSCR	Cd Divisa Importo Cons
-- LNNJVA	Cambio Movim Consuntivo
-- LNNKVA	Importo Consun in Valuta
-- LNA8AN	Anno Movimento Contabile
-- LNC5PG	Numero Movimento Contab
-- LNC6PG	Progr nel Movimento
-- LNF1ST	Flag Movim Consolidato
-- LNF3ST	Flag Movimento Esploso
-- LNO7SS	RCD Modific Dopo Chiusura
-- LNF6AN	Anno Controllo Fatture
-- LNBBSG	Progr Controllo Fatture
-- LNB4VN	Utente Verifica
-- LNROTY	Movimento da Validare
-- LNMRCR	Codice Esito Attivita
-- LNS1CE	PLEX Societa
-- LNNZCE	PLEX ID Categoria Classif
-- LNN0CE	PLEX ID Caratteristica Cl
-- LNN1CE	PLEX ID Attributo Classif
-- LNK4CC	Centro di Attività
-- LNKKCD	Cd Raggruppamento
-- LNCFCD	Cd mezzo
-- LNPQCD	Cd Filiale Viaggio
-- LNC3PG	Anno Viaggio
-- LNACPG	Progr Viaggio
-- LNEASS	Flag Ritassazione Si-No
-- LNO8SS	Movimento Indiretto
-- LNO9SS	Flag Analitica 02
-- LNPASS	Flag Analitica 03
-- LNRTTY	Flag Analitica 04
-- LNRUTY	Flag Analitica 05
-- LNRVTY	Flag Analitica 06
-- LNRWTY	Flag Analitica 07
-- LNRXTY	Flag Analitica 08
-- LNRYTY	Flag Analitica 09
-- LNRZTY	Flag Analitica 10
-- LNRPTY	Flag Analitica 11
-- LNRQTY	Flag Analitica 12
-- LNRSTY	Flag Analitica 13
-- LNR5TY	Flag Analitica 14
-- LNR6TY	Flag Analitica 15
-- LNLFCC	Mov Originale Cd Filiale
-- LNCLAN	Mov Originale Anno Movim
-- LNEYPG	Mov Originale Nr Registr
-- LNEZPG	Mov Originale Progr Regis
-- LNAJVN	Utente creazione
-- LNG4DT	Data creazione
-- LNQUNB	Ora  creazione
-- LNAKVN	Utente Ultimo Aggiornam
-- LNA5DT	Dt Ultimo Aggiornamento
-- LNQVNB	Ora Ultimo Aggiornamento

-- UUDDREP	Anag Clienti. (S8 S1577290537 S1577446583)

-- DDAPCD	Cd Cliente
-- DDBBRA	Rag Soc
-- DDARRA	Ult Rag Soc
-- DDAHIN	Indirizzo
-- DDADCA	CAP1
-- DDLOCA	Località
-- DDAEPR	Provincia
-- DDA2TX	Codice ricerca
-- DDATCD	Cd fiscale
-- DDALNB	Partita IVA
-- DDAKNB	Telefono
-- DDADNB	Telefax
-- DDA6TX	Telex
-- DDA5TX	Casella postale EDI
-- DDBWTX	Note
-- DDAFCD	Cd nazione
-- DDAQCD	Cd Divisa
-- DDBYCD	Cd lingua nazionale
-- DDCHTX	Persona da contattare
-- DDBATX	Cd status cliente
-- DDDICD	Cd Cliente Fatturare a
-- DDAICD	Cd Categoria Cliente
-- DDAUCD	Unità Valore Merce
-- DDAONB	Valore Unità Merce
-- DDBECD	Cd Merceologica
-- DDBNCD	Esclus Cliente da   Selez
-- DDB0TX	Cd Fornitore - Proveedor
-- DDANCA	Cd Partenza Arrivo
-- DDM1ST	Flag Inoltro
-- DDAABD	Cd linea
-- DDCDZN	Cd zona distribuzione
-- DDDFCD	Cd Fornitore - Proveedor 2
-- DDHZCD	Cd Cliente Deposit  Merce
-- DDJUST	Flag cliente depositante
-- DDBGTX	Priorità Evasione   Consegn
-- DDE4ST	Invio informazioni  EDI
-- DDMZST	Tipo Conto Sociale
-- DDM0ST	Flag stampa ordine  ritiro
-- DDM2ST	Tp Fatturare a cliente
-- DDKKCD	Cd Raggruppamento
-- DDE5ST	Flag tp richiesta   fondi
-- DDE8ST	Flag Trasp Merce    Volumin
-- DDE9ST	GG Franchigia Giacenza
-- DDATCC	Codice Commerciale
-- DDDMSS	Esigenza di prenotazione
-- DDDNSS	Esclusione Restit Vincolo
-- DDDOSS	Tipo incasso vincolo
-- DDDPSS	Tipo pagamento vincolo
-- DDDQSS	Sollecito giacenza
-- DDD2SS	Particolarità Serv-Fil
-- DDD3SS	Ulteriori Ind R-C
-- DDPPNB	Ora-Min Apertura Mattina
-- DDPQNB	Ora-Min Chiusura Mattina
-- DDPRNB	Ora-Min Apertura Pomerigg
-- DDPSNB	Ora-Min Chiusura Pomerigg
-- DDARNB	GG Chiusura nella Settim
-- DDDRSS	Mattino-Pomeriggio
-- DDD5SS	GG Chiusura nella Settim2
-- DDD4SS	Mattino-Pomeriggio 2
-- DDPTNB	GG chiusura nell'anno 1
-- DDPUNB	GG chiusura nell'anno 2
-- DDPVNB	GG chiusura nell'anno 3
-- DDPWNB	GG chiusura nell'anno 4
-- DDD6SS	Cliente contabile
-- DDDSSS	Dati Intrastat
-- DDDTSS	Tipo Tassazione Cliente
-- DDDUSS	Tipo Cliente-Fornitore - Proveedor
-- DDDVSS	Esclusione da Fatturaz
-- DDDWSS	Dati commerciali
-- DDDXSS	Intestatario Vincolo
-- DDDYSS	Sospensione Iva x   Dogana
-- DDDZSS	Obb Copertura Assicurat
-- DDD0SS	Flag cliente 9
-- DDD1SS	Flag cliente 10
-- DDDGCD	Cd Filiale Ult Aggiornam
-- DDABVN	Utente
-- DDA5DT	Dt Ultimo Aggiornamento
-- DDBQST	Stato record



SELECT DISTINCT DUAABD
FROM MLD_BE101.UUDUREP
B3A
TR01
A01
NL01
DE03
V10A
FR04
BE01
GB06
A04
LT01
IT07
V1B
DE01
V1C
BCN1
B4A
MLHO
B2B
GB01
B5B
PT02
V2A
V2C
CH02
B006
B2A
B1A
CZ01
V1A
FR99
FR01
AT01
B5A
MZ7
B2C
B3B
GR01
B997
B003
MDR1
MZ1
PT01
A02
FR07
SE01
MDRL
SI01
IT12
MZ2
VLOT
IT01
MA01
IT99
V2B
VLC1
B4B
BPAR
V006
MZ9
M004
FR02
B4G
MZ6
IT02
HR01
M009
SEV1
B1B
RS01
B005
FR03
PL01
B998
GB04
V004
V005
IT05
B4D
IT08
DE02
B008
XX01
RE01
BG01
MZ10
DE99
ALC1
MD01
B996
IT04
AT99
M003
X001
S006
B999
CH01
B004
YYYY
NAC1
B4C
NL99
FR10
GB03
B1C
B4F
S003
VCC
PT99
MZ5
A03
MZ3
S999
MZ8
DK01
S005
A999
IE01
CH03
GB05
LG99
MA02
B4E
XADU
B009
DE04
B3C
B010
IT13
IT03
TN01
RO01
RS99
V999
FR05
GB99
RS02
PL99
M006
SZ41
FR11
BE99
VEXP
S004
UNOP
XAIR
M008
CH99
FR09
IT11
GR99
A003
M007
AD01
HR99
HU99
SK01
EXP
S007
BG99
RO99
A004
V007
MA99
B011
MZ4
B012
DK99
TN02
GE99
SE99
TR99
IE99
V3D
NO99
XXXX
S008
UA99
CZ99
XMAR
ZZZZ
CAN1
LT99
ITSU
DE05
M999
B015
HUBZ
LPA1
FR12
SI02
DEHA
SI99
B990
B014
V3F
TEST
ITAT
SK99
PL02
LV99
FI99
LU99
..2
SZ04
FRML
DEFR
DEES
M010
HUBM
IR99
GB02
BCN2
DESU
ITVE
JA01
OT01
B017
DE06
EE99
GR02
BCN3
B016
V008
IT10
MZ20
M001
V009
DE07
ITTO
POR1
FRRH
BEX1
DERH
B018
FRCA
ITEM
ITPI
ITLO
B019
FR06
VZ3
MT01
IT14
IT16
RAO1
IT15
B021
B022
B023
AFR1
TCI1
A997
DE08
B024
LPA
PL03
FR14
FR15
DK02
GB07
PL04
PL05
PL06
FR16
FRNO
FR17
RU01
POL1
PL07
FR18
BE02
NL03
B025
CAN3
FRIP
SZ14
FR20
DE10
SZ21
MA03
SZ23
SZ11
DECE
UC
SZ18
M011
CAN2
DK03
V001
GB1P
ES46
FR21
L5A
L7A
SZ29
L1A
T1A
T2A
L6A
IN99
L4A
T3A
T4A
T5A

"----------------------------------------"


Tassazione TABLES

UBL7REP		UB	L7	REP			46				196			Tassazione -zdettaglio-2.                               NSSMARCO        Tasables por tasacion y concepto
UBL8REP		UB	L8	REP			16				113			Tassazione -zdettaglio-3.                               NSSMARCO        
UCQ0REP		UC	Q0	REP			7				76			Tassazione -zdettagli (S8 S1577287900 S1577446583)      NSSMARCO        
UUEEREP		UU	EE	REP			109				402			Tassazione -testata-.                                   MARCO           Cabecera Tasaciones
UUEGREP		UU	EG	REP			17				111			Tassazione -zdettaglio-                                 MARCO           Detalle Tasaciones
UUF2REP		UU	F2	REP			5				72			Tassazione -note-.Phy (S8 S1577289876 S1577446583)      NSSMARCO     

"----------------------------------------"

Actualización de tasas de carburante - GLPI - Base de conocimiento - http://vmglpi/glpi/index.php?redirect=%2Ffront%2Fknowbaseitem.php
 
OJO - MLD_BE101 y MLD_BE104
 
Comprobaciones previas:

Cantidad de elementos de Carburante en las tarifas de VENTA   



 
 
nuevos datos con los que actualizar las tasas de carburante a partir del próximo 1 de AGOSTO 2021 en las tarifas de transporte terrestre [TI / TE / NN]

Tasa Carburante GENERAL:  Pasa del 6.65 % actual, al 7.30 %
Tasa Carburante REDUCIDA: Pasa del 2.5 % actual, al  2.75 % 

"Elementos de carburante: 'TCA' y 'TCN' "

-- 1. Selecciona todas las tarifas de venta R - VENTA 
   cuya fecha de inicio de validez D0EKDT este entre 01/05/2019 y 31/07/2021 y 
   la fecha vigente D0ELDT sea = 0 y 
   el porcentaje D0ANPC = al de la última actualización

SELECT *
FROM MLD_BE101.UUDWREP A 
JOIN MLD_BE101.UUD0REP B 
  ON A.DWEACD = B.D0EACD
WHERE DWB6CD = 'R' 
  AND DWARCD IN ('TCA','TCN') 
  AND D0EKDT >= '1190501' 
  AND D0EKDT <= '1210731' 
  AND D0ELDT = '0' 
  AND D0ANPC = 6.65

-- 2. Actualiza la fecha vigente D0ELDT a 31/07/2021 en el el catalogo de tarifas. 
UPDATE MLD_BE101.UUD0REP
SET
D0ELDT='1210731'
WHERE D0EACD IN 
	( SELECT DWEACD 
	  FROM MLD_BE101.UUDWREP
	  WHERE DWB6CD = 'R' 
	    AND DWARCD IN ('TCA','TCN') ) 
		AND D0EKDT >= '1190501' 
		AND D0EKDT <= '1210731' 
		AND D0ELD T = '0' 
		AND D0ANPC = 6.65

-- 3. Busca posibles registros duplicados antes de hacer el INSERT (ya han insertado las tarifas ??)

SELECT D0EACD, D0EKDT, D0A2QT, D0ANPC, D0A9VA, D0BAVA, D0AMPC, D0FKSS, D0FMSS, D0ELDT
FROM MLD_BE101.UUD0REP
WHERE D0EACD IN (SELECT DWEACD 
				 FROM MLD_BE101.UUDWREP
				 WHERE DWB6CD = 'R' 
				   AND DWARCD IN ('TCA','TCN')) 
  AND D0EKDT >= '1190501' 
  AND D0EKDT <= '1220201' 
  AND D0ELDT ='0' 
  AND D0ANPC = 7.30 

-- 4. Inserta las nuevas tasas con los criterios solicitados

INSERT INTO MLD_BE101.UUD0REP
(D0EACD,D0EKDT,D0A2QT,D0ANPC,D0A9VA,D0BAVA,D0AMPC,D0FKSS,D0FMSS,D0ELDT)
SELECT
D0EACD,
'1220201' AS D0EKDT,
D0A2QT,
'8.60' AS D0ANPC,
D0A9VA,
D0BAVA,
D0AMPC,
D0FKSS,
D0FMSS,
'0' AS D0ELDT
FROM MLD_BE101.UUD0REP
WHERE D0EACD IN (SELECT DWEACD FROM MLD_BE101.UUDWREP
WHERE DWB6CD = 'R' AND DWARCD IN ('TCA','TCN')) AND D0EKDT>='1190501' AND D0EKDT<='1210731' AND D0ELDT='1210731' AND D0ANPC=6.65 AND D0EACD NOT IN (17029884,21017959,21048181)





"----------------------------------------"

	AA Flete 				AAA Flete
	AB Flete x Bultos 		AAA Flete
	AE Entregas 			ENT ENTREGA
	AR Recogidas 			REC Recogida
	A1 Entregas x Bultos 	ENT ENTREGA
	L2 Vinculo 				VNC Vinculación mercancía
	VE Eventos 				LAR Largos especiales
	VE Eventos 				ADR ADR suplemento
	XN Cargos por país 		CMR Seguro C.M.R
	XN Cargos por país 		DAE Despacho aduana export
	XN Cargos por país 		DAI Despacho aduana import
	XN Cargos por país 		TNS Transito
	XN Cargos por país 		SEG Seguro s/valor
	ZN Cargos por país 		TCA Tasa carburante

"----------------------------------------"


N.P.I. cambio_tasas_carburante
('TI', 'TE', 'NN')
 	       
TI - TIR IMPORT			
TE - TIR EXPORT  		
NN - NACIONAL 

00 - VARIOS

R - VENTA               
C - COSTES PROVEEDOR
O - OFERTA CLIENTE
S - PROFITS SHARE
G - ALMACENAJES
T - GENERAL CLIENTES

SELECT D8AHCD, D8CWCD, D8D5CD, D8B6CD, COUNT(*) 
FROM 
MLD_BE101.UUD8REP
GROUP BY D8AHCD, D8CWCD, D8D5CD, D8B6CD
ORDER BY D8AHCD, D8CWCD, D8D5CD, D8B6CD   

                               
D8AHCD	D8CWCD		D8D5CD		D8B6CD	COUNT(*)
FILIAL 	SERVICIO 	CATEGORIA 	TIPO 	TARIFAS

11		AE			00			O		1
11		AE			00			R		4
11		AI			00			R		2
11		DE			00			R		1
11		DS			00			T		1
11		J2			00			R		1
11		ME			00			R		14
11		MI			00			R		1
11		MN			00			C		1
11		MN			00			O		4
11		MN			00			R		206
11		MN			00			T		1
11		M1			00			O		1
11		M1			00			R		10
11		M2			00			O		1
11		M2			00			R		4
11		M2			00			T		3
11		M3			00			R		1
11		NN			00			C		30
11		NN			00			O		1
11		NN			00			R		750
11		NN			00			T		16
11		TE			00			C		120
11		TE			00			O		17
11		TE			00			R		1572
11		TE			00			S		4
11		TE			00			T		32
11		TI			00			C		84
11		TI			00			O		1
11		TI			00			R		1045
11		TI			00			S		4
11		TI			00			T		7
13		AE			00			R		1
13		LG			00			R		1
13		LG			00			T		1
13		MN			00			C		1
13		MN			00			R		19
13		M1			00			C		8
13		M1			00			O		2
13		M1			00			R		1
13		NN			00			C		29
13		NN			00			R		261
13		TE			00			C		70
13		TE			00			R		584
13		TE			00			S		2
13		TI			00			C		59
13		TI			00			R		429
13		TI			00			S		2
20		AE			00			C		2
20		AE			00			R		2
20		AI			00			R		1
20		CN			00			R		2
20		DE			00			R		1
20		DI			00			R		2
20		LG			00			R		1
20		ME			00			C		2
20		ME			00			O		1
20		ME			00			R		12
20		MI			00			R		4
20		MN			00			C		2
20		MN			00			O		2
20		MN			00			R		453
20		M1			00			C		4
20		M1			00			O		1
20		M1			00			R		17
20		M2			00			C		3
20		M2			00			R		27
20		M3			00			R		2
20		NN			00			C		23
20		NN			00			R		594
20		NS			00			R		1
20		TE			00			C		82
20		TE			00			O		1
20		TE			00			R		1219
20		TE			00			S		5
20		TE			00			T		8
20		TI			00			C		51
20		TI			00			O		1
20		TI			00			R		674
20		TI			00			S		4
22		AE			00			R		1
22		ME			00			R		3
22		MN			00			C		1
22		MN			00			R		275
22		NN			00			C		8
22		NN			00			R		36
22		TE			00			C		39
22		TE			00			O		2
22		TE			00			R		949
22		TE			00			T		1
22		TI			00			C		41
22		TI			00			R		216
25		AE			00			R		2
25		AI			00			R		1
25		ME			00			C		1
25		MN			00			C		4
25		MN			00			R		102
25		M1			00			R		5
25		M2			00			R		39
25		NN			00			C		14
25		NN			00			R		34
25		NN			00			T		9
25		TE			00			C		4
25		TE			00			R		94
25		TE			00			T		30
25		TI			00			C		3
25		TI			00			R		102
25		TI			00			T		14
35		MN			00			C		1
35		MN			00			O		1
35		MN			00			R		14
35		M3			00			R		1
35		NN			00			C		4
35		NN			00			R		1
36		AE			00			R		1
36		MN			00			R		14
36		NN			00			C		4
36		TE			00			R		1
37		AE			00			R		1
37		NN			00			R		16
37		TE			00			R		1                                      
                                                
SELECT D8AHCD FILIAL, D8CWCD SERVICIO, D8D5CD CATEGORIA, D8B6CD TIPO, COUNT(*) TARIFAS
FROM 
MLD_BE101.UUD8REP
WHERE D8CWCD IN ('TI', 'TE', 'NN')
GROUP BY D8AHCD, D8CWCD, D8D5CD, D8B6CD
ORDER BY D8AHCD, D8CWCD, D8D5CD, D8B6CD

FILIAL	SERVICIO	CATEGORIA	TIPO	TARIFAS
11		NN			00			C		30
11		NN			00			O		1
11		NN			00			R		750
11		NN			00			T		16
11		TE			00			C		120
11		TE			00			O		17
11		TE			00			R		1572
11		TE			00			S		4
11		TE			00			T		32
11		TI			00			C		84
11		TI			00			O		1
11		TI			00			R		1045
11		TI			00			S		4
11		TI			00			T		7
13		NN			00			C		29
13		NN			00			R		261
13		TE			00			C		70
13		TE			00			R		584
13		TE			00			S		2
13		TI			00			C		59
13		TI			00			R		429
13		TI			00			S		2
20		NN			00			C		23
20		NN			00			R		594
20		TE			00			C		82
20		TE			00			O		1
20		TE			00			R		1219
20		TE			00			S		5
20		TE			00			T		8
20		TI			00			C		51
20		TI			00			O		1
20		TI			00			R		674
20		TI			00			S		4
22		NN			00			C		8
22		NN			00			R		36
22		TE			00			C		39
22		TE			00			O		2
22		TE			00			R		949
22		TE			00			T		1
22		TI			00			C		41
22		TI			00			R		216
25		NN			00			C		14
25		NN			00			R		34
25		NN			00			T		9
25		TE			00			C		4
25		TE			00			R		94
25		TE			00			T		30
25		TI			00			C		3
25		TI			00			R		102
25		TI			00			T		14
35		NN			00			C		4
35		NN			00			R		1
36		NN			00			C		4
36		TE			00			R		1
37		NN			00			R		16
37		TE			00			R		1    


----------------------------------------------------


SELECT 
A.LMB0TX AS TRANSPORTISTA,  
B0BBRA AS NOMBRE,
SUBSTR(LMC7DT,2,2) AS ANYO,
SUBSTR(LMC7DT,4,2) AS MES,
SUBSTR(LMC7DT,6,2) AS DIA,
A.LMBFST,
CASE WHEN A.LMBFST ='AN' 
	 THEN 'LLEGADA' 
	 ELSE 'SALIDA' 
END AS SERVICIO,
A.LMAHCD||'/'||SUBSTR(A.LMACAN,3,2)||'/'||A.LMBUPG AS MANIFIESTO,
A.LMC7DT AS FECHAMANIF,
E.LNBQAN||'/'||SUBSTR(E.LNBPAN,3,2)||'/'||E.LNC4PG AS EXPEDICION,
D.LLCWCD AS TIPOSERVICIO,
CASE WHEN A.LMBFST = 'AN' 
	 THEN (CASE WHEN C.CLAPCD IS NULL 
				THEN D.LLOCCD 
				ELSE C.CLAPCD 
		   END) 
		   ELSE ( CASE WHEN C.CLAPCD IS NULL 
					   THEN D.LLGSCD 
				  ELSE C.CLAPCD 
				  END ) 
	 END AS CODIGO,
CASE WHEN A.LMBFST = 'AN' THEN (CASE WHEN C.CLBBRA IS NULL THEN D.LLCJRA ELSE C.CLBBRA END) ELSE ( CASE WHEN C.CLBBRA IS NULL THEN D.LLDRRA ELSE C.CLBBRA END ) END AS DESCRIPCION,
CASE WHEN A.LMBFST = 'AN' THEN (CASE WHEN C.CLLOCA IS NULL THEN D.LLAQLO ELSE C.CLLOCA END) ELSE ( CASE WHEN C.CLLOCA IS NULL THEN D.LLA6LO ELSE C.CLLOCA END ) END AS POBLACION,
CASE WHEN A.LMBFST = 'AN' THEN (CASE WHEN C.CLADCA IS NULL THEN D.LLAICA ELSE C.CLADCA END) ELSE ( CASE WHEN C.CLADCA IS NULL THEN D.LLBGCA ELSE C.CLADCA END ) END AS CODPOS,
D.LLAQQT AS BULTOS,
D.LLBBNB AS KILOS,
D.LLARQT AS M3,
Y.CKASQT AS ML,
E.LNKXVA AS COSTE
	 FROM MLD_BE101.	UBLM	REP A
LEFT JOIN MLD_BE101.	UUB0	REP B ON B.B0CHCD = A.LMCHCD 
LEFT JOIN MLD_BE101.	UBLN	REP E ON E.LNQICD = A.LMAHCD AND E.LNACAN = A.LMACAN  AND  E.LNBUPG =A.LMBUPG   AND E.LNB0TX =A.LMB0TX
LEFT JOIN MLD_BE101.	UUCL	REP C ON C.CLAHCD = E.LNBQAN AND C.CLAAAN = E.LNBPAN AND  C.CLAAPG = E.LNC4PG 
LEFT JOIN MLD_BE101.	UBLL	REP D ON D.LLBQAN = E.LNBQAN AND D.LLBPAN = E.LNBPAN AND  D.LLC4PG = E.LNC4PG 
LEFT JOIN MLD_BE101.	UUCK	REP Y ON Y.CKAHCD = D.LLBQAN AND Y.CKAAAN = D.LLBPAN AND  Y.CKAAPG = D.LLC4PG 



WHERE  A.LMC7DT >=  $P{FDN}  AND A.LMC7DT<= $P{FHN} AND A.LMB0TX = $P{COD_TRANSPORTISTA}  AND A.LMBFST=   $P{SALIDA_PN_LLEGADA_AN}]]>


------------------------------------------

LN	B0TX	UBLN		UBLN
LN	B0TX	ANALITICA
L6	B0TX	UBL6		
AL	B0TX	UUAL		
DD	B0TX	UUDD		
DU	B0TX	UUDU		
OY	B0TX	UCOY		
IO	B0TX	UUIO		
LM	B0TX	UBLM		UBLM
DH	B0TX	UPDH		
OW	B0TX	UCOW		
NK	B0TX	UCNK		
RG	B0TX	UDRG		
N5	B0TX	UCN5		
BA	B0TX	UUBA		
KW	B0TX	UBKW		
B0	B0TX	UUB0		UUB0
I8	B0TX	UUI8		
FA	B0TX	UUFA		
LR	B0TX	UBLR		
CN	B0TX	UUCN		
MZ	B0TX	UCMZ		
OJ	B0TX	UCOJ		
Q7	B0TX	UCQ7		
KZ	B0TX	UBKZ		
DI	B0TX	UPDI		
KF	B0TX	UAKF		
RJ	B0TX	UDRJ		


UUCL
UBLL	
UUCK	


==========================================
SELECT a.*, b.*, c.*
FROM MLD_BE101.UUIOREP a
JOIN MLD_BE101.UBLNREP b 
  ON b.LNQICD = a.IOAHCD 
 AND b.LNACAN = a.IOACAN 
 AND b.LNBUPG = a.IOBUPG 
 AND b.LNB0TX = a.IOB0TX 
 
JOIN MLD_BE101.UUDDREP c 
  ON c.DDAPCD = a.IOB0TX 
LEFT JOIN MLD_BE101.UBLLREP d 
  ON b.LNBQAN = d.LLBQAN 
 AND b.LNBPAN = d.LLBPAN 
 AND b.LNC4PG = d.LLC4PG 

WHERE IOAHCD = 11
  AND IOACAN = 2022
  AND IOBUPG = '031587'
  
ORDER BY a.IODUDT, a.IOAHCD, a.IOACAN, a.IOBUPG
	
	
------------------------------------------

A.iodudt AS FECHAM,
(A.IOAHCD || '/' || A.IOACAN || '/' || A.IOBUPG) AS MANIFIESTO,
  (B.LNBQAN || '/' || B.LNBPAN || '/' || B.LNC4PG) AS PARTIDA,
		B.lncwcd AS SERVICIO,
	B.lnbpst AS TRAFICO,
	A.iob0tx AS TRANSPORTISTA,
	C.ddbbra AS NOMBRE,
	B.lna1cd AS ENTREGAREC,
	B.lnniva AS IMPORTE,
	D.llaqqt AS BULTOS,
	D.llbbnb AS KILOS,
	D.llarqt AS M3

	
------------------------------------------	
FROM MLD_BE101.UUIOREP A
LEFT JOIN MLD_BE101.UUDUREP B ON B.DUPQCD = A.IOAHCD AND B.DUACAN = A.IOACAN AND B.DUBUPG = A.IOBUPG
LEFT JOIN MLD_BE101.UUDDREP C ON C.DDAPCD = A.IOB0TX
LEFT JOIN MLD_BE101.UBLLREP D ON D.LLBQAN = B.DUJSCD AND D.LLBPAN = B.DUAAAN AND D.LLC4PG = B.DUAAPG 
LEFT JOIN MLD_BE101.UBLNREP F ON F.LNBQAN = D.LLBQAN  AND F.LNBPAN = D.LLBPAN  AND F.LNC4PG = D.LLC4PG  AND LNF4ST='C'
LEFT JOIN MLD_BE101.UUDDREP E ON E.DDAPCD = F.LNB0TX
LEFT JOIN MLD_BE101.UUB9REP EE ON EE.B9A1CD = F.LNA1CD

------------------------------------------	

SELECT 
    c.*, e.*, a.*, b.*, f.* 
FROM 
    /*CABECERA TASACION*/
    beone.uueerep_dest a 
    JOIN
    /*DETALLE1 TASACIÓN*/
    beone.uuegrep_dest b ON a.entorno=b.entorno and a.EEAHCD = b.EGAHCD AND a.EEANAN = b.EGANAN AND a.EEAPPG = b.EGAPPG 
    LEFT JOIN 
	
    /* EXPEDICIONES */
    beone.ubllrep_dest c ON a.entorno=c.entorno and a.EEJ0CD = c.LLBQAN AND a.EEAAAN = c.LLBPAN AND a.EEAAPG = c.LLC4PG 
    LEFT JOIN
    /* REFERENCIAS EXPEDICION*/
    (SELECT ENTORNO,dsahcd,DSAAAN,DSAAPG,DSAPCD,
                substring(array_to_string(array_agg(dsaaae),','),1,1000) as referencia
            FROM
                beone.uudsrep_dest a
            group by ENTORNO,dsahcd,DSAAAN,DSAAPG,DSAPCD) e ON a.entorno=e.entorno and a.EEAHCD = e.DSAHCD AND a.EEANAN = e.DSAAAN AND a.EEAAPG = e.DSAAPG AND A.EEAPCD=E.DSAPCD
    LEFT JOIN
    /*INCOTERMS*/
    beone.uuebrep_dest f ON a.entorno = f.entorno AND c.LLEDCD = f.EBEDCD    
WHERE  a.EEAHCD = $P{Filial} AND a.EEAPCD = $P{Ref_Cliente} AND a.EEB8PG = $P{Factura} and eeeddt>0 AND eejjss <> '' 
ORDER BY c.LLCIDT, a.EEAAPG ASC


UUEEREP A 
UUEGREP B ON A.ENTORNO=B.ENTORNO AND A.EEAHCD = B.EGAHCD AND A.EEANAN = B.EGANAN AND A.EEAPPG = B.EGAPPG 
UBLLREP C ON A.ENTORNO=C.ENTORNO AND A.EEJ0CD = C.LLBQAN AND A.EEAAAN = C.LLBPAN AND A.EEAAPG = C.LLC4PG 
UUDSREP A
UUEBREP F ON A.ENTORNO = F.ENTORNO AND C.LLEDCD = F.EBEDCD    




------------------------------------------	

SELECT 
    a.eeb8pg as Factura, a.eeeddt as Fecha_Factura, c.llaqqt as Bultos, c.llbbnb as Peso, referencia,
    g.jsh6va as Importe,c.llarqt AS M3
FROM 
    beone.uueerep_dest a 
  
    LEFT JOIN 
     beone.uujsrep_dest g ON a.entorno=g.entorno and a.eeahcd = g.jsahcd and a.eeb8pg =g.jsb8pg and a.eeeddt = g.jseddt
    LEFT JOIN 
     beone.ubllrep_dest c ON a.entorno=c.entorno and a.EEJ0CD = c.LLBQAN AND a.EEAAAN = c.LLBPAN AND a.EEAAPG = c.LLC4PG 
    LEFT JOIN
      (SELECT ENTORNO,dsahcd,DSAAAN,DSAAPG,DSAPCD,
                substring(array_to_string(array_agg(dsaaae),','),1,1000) as referencia
            FROM
                beone.uudsrep_dest a
            group by ENTORNO,dsahcd,DSAAAN,DSAAPG,DSAPCD) e ON a.entorno=e.entorno and a.EEAHCD = e.DSAHCD AND a.EEANAN = e.DSAAAN AND a.EEAAPG = e.DSAAPG AND A.EEAPCD=E.DSAPCD
    LEFT JOIN
       beone.uuebrep_dest f ON a.entorno = f.entorno AND c.LLEDCD = f.EBEDCD    
WHERE  a.EEAHCD = '11' AND a.EEAPCD = '013502' AND a.EEB8PG = $P{Factura} and eeeddt>0 AND eejjss <> '' 
ORDER BY c.LLCIDT, a.EEAAPG ASC


UUEEREP A 
UUJSREP G ON A.ENTORNO=G.ENTORNO AND A.EEAHCD = G.JSAHCD AND A.EEB8PG =G.JSB8PG AND A.EEEDDT = G.JSEDDT
UBLLREP C ON A.ENTORNO=C.ENTORNO AND A.EEJ0CD = C.LLBQAN AND A.EEAAAN = C.LLBPAN AND A.EEAAPG = C.LLC4PG 
UUDSREP A
UUEBREP F ON A.ENTORNO = F.ENTORNO AND C.LLEDCD = F.EBEDCD    

==========================================

Costes_Proveedor_Manifiestos_Fechas.jrxml
 
SELECT DISTINCT 
C.DDAPCD AS COD_CORR, 
C.DDBBRA AS CORRESPONSAL,
A.IOAHCD AS FILIALM, 
A.IOACAN AS EJERM, 
A.IOBUPG AS MANIFIESTO,
  IODUDT AS FECHAM,
D.LLBQAN AS FILIALP, 
D.LLBPAN AS EJERP, 
D.LLC4PG AS PARTIDA,
D.LLBGDT AS FECHA_PARTIDA, 
  LNB0TX AS COD_PROVEEDOR, 
E.DDBBRA AS PROVEEDOR,
LNA1CD AS COD_CON, 
EE.B9CTTX AS CONCEPTO,
LNKXVA AS IMP_PROV, 
LNKYVA AS IMP_EFEC

FROM MLD_BE101.UUIOREP A
JOIN MLD_BE101.UUDUREP B ON B.DUPQCD = A.IOAHCD AND B.DUACAN = A.IOACAN AND B.DUBUPG = A.IOBUPG
JOIN MLD_BE101.UUDDREP C ON C.DDAPCD = A.IOB0TX
JOIN MLD_BE101.UBLLREP D ON D.LLBQAN = B.DUJSCD AND D.LLBPAN = B.DUAAAN AND D.LLC4PG = B.DUAAPG 
JOIN MLD_BE101.UBLNREP F ON F.LNBQAN = D.LLBQAN  AND F.LNBPAN = D.LLBPAN  AND F.LNC4PG = D.LLC4PG  AND LNF4ST='C'
JOIN MLD_BE101.UUDDREP E ON E.DDAPCD = F.LNB0TX
JOIN MLD_BE101.UUB9REP EE ON EE.B9A1CD = F.LNA1CD

WHERE IOAHCD = $P{Filial}  
  AND IODUDT >= $P{FDN}  
  AND IODUDT <= $P{FHN}   
  AND IOB0TX = $P{Ref_Proveedor} 
ORDER BY C.DDAPCD, C.DDBBRA,A.IOAHCD, A.IOACAN,A.IOBUPG,D.LLBQAN, D.LLBPAN, D.LLC4PG


==========================================
Peña, Carlos
Vie 11/02/2022 18:31

Estas son las tablas que habria que utilizar. 

ok - 	 UBLLREP - Expediciones
ok - 	 UBLNREP - mov. analiticos
	ko - UUDUREP - tracking
ok - 	 UUIOREP - Manifiestos - linea y el transportista para unir con UUDUREP
	ko - UUDDREP - Entidades
	ko - UCO2REP - Clientes comerciales
ok - 	 UUB0REP - Transportistas



SELECT B0CHCD, B0BBRA, B0ARRA, B0ADCA, B0APCD
FROM MLD_BE101.UUB0REP
WHERE B0BBRA LIKE '%WIRZ%'

SELECT B0CHCD, B0BBRA, B0ARRA, B0ADCA, B0APCD
FROM MLD_BE101.UUB0REP
WHERE B0ADCA = '800764'




SELECT *
FROM MLD_BE101.UUDDREP
WHERE DDAPCD = 001642

DDAPCD,
DDB0TX,
DDANCA,
DDM1ST,
DDAABD,


---

SELECT *
FROM MLD_BE101.UBLLREP
WHERE LLBQAN = '11'
  AND LLBPAN = 2022
  AND LLC4PG = 301736

LLBQAN	LLBPAN	LLC4PG	LLBGDT	LLCIDT	LLCWCD	LLEDCD	LLOCCD	LLCJRA	LLALIN	LLAQLO	LLAICA	LLAMPR	LLM6CE	LLNECE	LLNICE	LLD9QR	LLEAQR	LLNNCE	LLLXCD	LLHBTX	LLGSCD	LLDRRA	LLA1IN	LLA6LO	LLBGCA	LLA3PR	LLM7CE	LLNFCE	LLNJCE	LLEBQR	LLECQR	LLNMCE	LLLNCD	LLIBCD	LLHMCE	LLATCC	LLDECA	LLDDCA	LLBECD	LLAQQT	LLBBNB	LLPYNB	LLARQT	LLASNB	LLAKCD	LLAJQT	LLKTVA	LLSBVA	LLSCVA	LLSDVA	LLSEVA	LLV5VO	LLV6VO	LLKUVA	LLSFVA	LLSGVA	LLSHVA	LLSIVA	LLV7VO	LLV8VO	LLM1ST	LLWQST	LLBPST	LLD8SS	LLDBSS	LLUDCD	LLQXNB	LLDICC	LLDHCC	LLVJCD	LLVKCD	LLSAVA	LLG0CC	LLG1CC	LLWTTX	LLQYNB	LLU4CD	LLG2CC	LLA0CC	LLU2CD	LLGCCC	LLEFSS	LLBNDT	LLK7CC	LLK6CC	LLOKCD	LLAZAN	LLBEPG	LLGSTY	LLGTTY	LLBXVN	LLN5DT	LLA1TM	LLBYVN	LLN6DT	LLA2TM	LLI7CR	LLI8CR	LLG2CA	LLNQCE	LLNRCE	LLNTCE	LLEDQR	LLEEQR	LLNSCE	LLKTCQ	LLG3CA	LLKVCQ	LLKUCQ	LLKSCQ	LLI9CR	LLFMAN	LLK8PG	LLOFBR	LLGUTY	LLN7DT	LLJECR	LLNZCE	LLN0CE	LLN1CE	LLKKCD	LLG1SS	LLN8DT	LLN9DT	LLPMCD	LLOADT
11	2022	301736	1220209	1220210	NN	PP	011424	CREACIONES DE VELOURS IND. SA	LLOBREGAT 21-25 P.I. STA. MARGARITA	TERRASSA	08223			B		0	0	ES	ES			TAPICERIAS TURIA, S.L.	SALVADOR CARBO, S/N	BENETUSSER	46910					0	0	ES	ES	011424	009655	GBCN	ES08223	ES46910		1	22.000	22.000	.036	0		0	0	0	0	0	0	0	0	0	0	0	0	0	0	0		S	N	ST	WB		0					0				0					NAC1		1220210	11	11		0	0				0	0		0	0			46910				0	0		ES	ES46910				20	2022	31148	1	C	1220210	V1C	BU	BCN-VLC				0	1220209	C0	1220210



SELECT *
FROM MLD_BE101.UUIOREP
WHERE IOAHCD = '11'
  AND IOACAN = 2022	 
  AND IOBUPG = '31587'

IOAHCD	IOACAN	IOBUPG	IOP0NB	IOBFST	IOEIST	IODUDT	IOB0TX	IOAABD	IOQDCD	IOYETX	IOQGCD	IOYFTX	IOBWTX	IORVCO	IOC3DT	IOF6ST	IOD9SS	IOA2SX	IOA3SX	IOA4SX	IOA5SX	IOA6SX	IOWJTY	IOWKTY	IOWLTY	IOWMTY	IOWOTY	IOCACD	IOL6CD	IOAUDX	IOBGTM	IOAVDX	IOBHTM	IOGJDT	IOKDDT	IODXDT	IOKRCR	IOHXVA
11		2022	31587	1		PN		D		1220209	001015	VLC1							0		S													0	0	0	0	0	0	0		0

SELECT *
FROM MLD_BE101.UUB0REP
WHERE B0APCD = '001015'

SELECT *
FROM MLD_BE101.UUDUREP
WHERE DUJSCD = 11
  AND DUAAAN = 2022
  AND DUAAPG = 301736
  
DUJSCD	DUAAAN	DUAAPG	DUB6NB	DUGJST	DUA8ST	DUAMDT	DUHWNB	DUAABD	DUPQCD	DUACAN	DUBUPG	DUP0NB	DUBAST	DUPMCD	DUBGTX	DUETST	DUABCD	DUA9ST	DUBPST	DUCWCD	DUAHCD	DUEEDT	DUKMNB	DULRST	DUN4ST	DUN9ST	DUOKCD	DUAZAN	DUBEPG	DUKNNB	DUKONB	DUKPNB	DUEHCD	DUDBSS	DUGPDT	DUD7SS	DUD8SS	DUVLCD	DUCJCC	DUCKCC	DUCLCC	DUUDCD	DURATX	DUCMCC	DUCNCC	DUE3TX	DUCOCC	DUCPCC	DUY9TX	DUU4CD	DUCQCC	DUCRCC	DUA0CC	DUU2CD	DUU3CD	DUB0TX
11		2022	301736	1		R		R		0		0		B2A		11		2022	31596	1				0				N	NN	11	0	0	S	N			0	0	0	500	0		WB	1220209		ST
11		2022	301736	2		P		S		1220209	0		VLC1	11		2022	31587	1				0				N	NN	11	1220209	0	S	N			0	0	0	500	0		WB	0	S	ST
11		2022	301736	3		A		S		1220209	0		BCN1	20		2022	31143	1				0				N	NN	20	1220210	0	N	N			0	0	0	0	0		WB	1220210		ST
11		2022	301736	4		C		S		1220209	0		V1C		20		2022	31148	1		C0		0				N	NN	20	1220210	0	S	N			0	0	1	500	0		WB	1220210	S	ST


---



SELECT *
FROM MLD_BE101.UBLLREP
WHERE LLBQAN = '11'
  AND LLBPAN = 2022
  AND LLC4PG = 205399
  
LLBQAN	LLBPAN	LLC4PG	LLBGDT	LLCIDT	LLCWCD	LLEDCD	LLOCCD	LLCJRA						LLALIN		LLAQLO		LLAICA		LLAMPR		LLM6CE		LLNECE	LLNICE		LLD9QR		LLEAQR	LLNNCE	LLLXCD	LLHBTX	LLGSCD	LLDRRA	LLA1IN	LLA6LO	LLBGCA	LLA3PR	LLM7CE	LLNFCE	LLNJCE	LLEBQR	LLECQR	LLNMCE	LLLNCD	LLIBCD	LLHMCE	LLATCC	LLDECA	LLDDCA	LLBECD	LLAQQT	LLBBNB	LLPYNB	LLARQT	LLASNB	LLAKCD	LLAJQT	LLKTVA	LLSBVA	LLSCVA	LLSDVA	LLSEVA	LLV5VO	LLV6VO	LLKUVA	LLSFVA	LLSGVA	LLSHVA	LLSIVA	LLV7VO	LLV8VO	LLM1ST	LLWQST	LLBPST	LLD8SS	LLDBSS	LLUDCD	LLQXNB	LLDICC	LLDHCC	LLVJCD	LLVKCD	LLSAVA	LLG0CC	LLG1CC	LLWTTX	LLQYNB	LLU4CD	LLG2CC	LLA0CC	LLU2CD	LLGCCC	LLEFSS	LLBNDT	LLK7CC	LLK6CC	LLOKCD	LLAZAN	LLBEPG	LLGSTY	LLGTTY	LLBXVN	LLN5DT	LLA1TM	LLBYVN	LLN6DT	LLA2TM	LLI7CR	LLI8CR	LLG2CA	LLNQCE	LLNRCE	LLNTCE	LLEDQR	LLEEQR	LLNSCE	LLKTCQ	LLG3CA	LLKVCQ	LLKUCQ	LLKSCQ	LLI9CR	LLFMAN	LLK8PG	LLOFBR	LLGUTY	LLN7DT	LLJECR	LLNZCE	LLN0CE	LLN1CE	LLKKCD	LLG1SS	LLN8DT	LLN9DT	LLPMCD	LLOADT
11		2022	205399	1220211	1220211	CI		EX		241916	APERAM STAINLESS SERVICES	Dieselsrt 5	Sersheim	74372					DE0000XZ	BW		48.961680	9.014490	DE		DE		006492	APERAM STAINLESS SERVICES & SOLUTIO	P.I. CAN CALDERON	VILADECANS	08840		ES000BQN	B	CT	41.316010	2.020200	ES	ES	006492	080764	2259	DE74	ES08840	100	2	25280.000	25280.000	80.000	0		0	0	0	0	0	0	0	0	0	0	0	0	0	0	0		S	I	ST	WB		0					0				0					DESU		0	11	11		0	0				0	0		0	0			74372	DE0000XZ	BW		48.961680	9.014490		DE	DE74				11	2022	10589	1	A	1220211	B997	BU					0	1220211		0



SELECT DUJSCD, DUAAAN, DUAAPG, DUAABD, DUPQCD, DUACAN, DUBUPG
FROM MLD_BE101.UUDUREP
WHERE DUJSCD = 11
  AND DUAAAN = 2022
  AND DUAAPG = 205399

DUJSCD	DUAAAN	DUAAPG	DUB6NB	DUGJST	DUA8ST	DUAMDT	DUHWNB	DUAABD	DUPQCD	DUACAN	DUBUPG	DUP0NB	DUBAST	DUPMCD	DUBGTX	DUETST	DUABCD	DUA9ST	DUBPST	DUCWCD	DUAHCD	DUEEDT	DUKMNB	DULRST	DUN4ST	DUN9ST	DUOKCD	DUAZAN	DUBEPG	DUKNNB	DUKONB	DUKPNB	DUEHCD	DUDBSS	DUGPDT	DUD7SS	DUD8SS	DUVLCD	DUCJCC	DUCKCC	DUCLCC	DUUDCD	DURATX	DUCMCC	DUCNCC	DUE3TX	DUCOCC	DUCPCC	DUY9TX	DUU4CD	DUCQCC	DUCRCC	DUA0CC	DUU2CD	DUU3CD	DUB0TX
11		2022	205399	1		A		C		1220211	0		B997	11		2022	10589	1			0				I	CI	11	1220211	0	N	N			0	0	0	5	0		WB	0		ST
11		2022	205399	2		O		L		1220211	0		B997					0	0	0			0				I	CI	11	0	0	N	N			0	0	0	0	0		WB	0		ST


SELECT *
FROM MLD_BE101.UUIOREP
WHERE IOAHCD = '11'
  AND IOACAN = 2022	 
  AND IOBUPG = '10589'
  
IOAHCD	IOACAN	IOBUPG	IOP0NB	IOBFST	IOEIST	IODUDT	IOB0TX	IOAABD	IOQDCD	IOYETX	IOQGCD	IOYFTX	IOBWTX	IORVCO	IOC3DT	IOF6ST	IOD9SS	IOA2SX	IOA3SX	IOA4SX	IOA5SX	IOA6SX	IOWJTY	IOWKTY	IOWLTY	IOWMTY	IOWOTY	IOCACD	IOL6CD	IOAUDX	IOBGTM	IOAVDX	IOBHTM	IOGJDT	IOKDDT	IODXDT	IOKRCR	IOHXVA
11		2022	10589	1		AI		D		1220211	080764	B997							0															0	0	0	0	0	0	0		0


SELECT *
FROM MLD_BE101.UUB0REP
WHERE B0APCD = '800764'

SELECT *
FROM MLD_BE101.UUCNREP	
WHERE CNAABD = 'B997'

CNAABD	CND0TX				CNB0TX	CNHUNB	CNAFCD	CNDGCD	CNABVN		CNA5DT	CNBQST
B997	LOTES INTERNACIONAL	080764	0		UE		I		NSSMARCELL	1170517


SELECT *
FROM MLD_BE101.UBLNREP

WHERE LNF4ST = 'C'
  AND LNQICD = '11'
  AND LNACAN = '2022'
  AND LNBUPG = 10589

LNAHCD	LNCFAN	LNC7PG	LNC8PG	LNF4ST	LNF2ST	LNLSNB	LNIUNB	LNTICD	LNJJSS	LNL4NB	LNEZDT	LNL5NB	LNAKDT	LNZZCE			LNA1CD	LNAMCD		LNAPCD	LNB0TX	LNKXVA	LNKYVA	LNGCVA	LNGDVA	LNT5ST	LNBQAN	LNBPAN	LNC4PG	LNOKCD	LNAZAN	LNBEPG	LNQICD	LNACAN	LNBUPG	LNP0NB	LNKYCQ	LNC4AN	LNHKPG	LND8SS	LNCWCD	LNBPST	LNTFCD	LNAABD	LNAQCD	LNNHVA		LNNIVA	LNMSCR	LNNJVA	LNNKVA	LNA8AN	LNC5PG	LNC6PG	LNF1ST	LNF3ST	LNO7SS	LNF6AN	LNBBSG	LNB4VN	LNROTY	LNMRCR	LNS1CE	LNNZCE	LNN0CE	LNN1CE	LNK4CC	LNKKCD	LNCFCD	LNPQCD	LNC3PG	LNACPG	LNEASS	LNO8SS	LNO9SS	LNPASS	LNRTTY	LNRUTY	LNRVTY	LNRWTY	LNRXTY	LNRYTY	LNRZTY	LNRPTY	LNRQTY	LNRSTY	LNR5TY	LNR6TY	LNLFCC	LNCLAN	LNEYPG	LNEZPG	LNAJVN	LNG4DT	LNQUNB	LNAKVN	LNA5DT	LNQVNB
11		2022	32235	1		C		TB		2022	2						0		0				0		600070000001A	AAA		600070000001		296908	1000.00	0		1000.00	0		P		11		2022	205399	11		0		0		11		2022	10589	1				0		0		ST		CI		I		11		B997	EUR		1.000000	1000.00	EUR		0		0		0		0		0		E		M	0	0												0	0	S					S												0	0	0	MLDMORENO	1220214	1658	MLDMORENO	1220214	1658


SELECT *
FROM MLD_BE101.UUB0REP
WHERE B0APCD = '296908'


B0CHCD	B0BBRA	B0ARRA	B0AHIN	B0ADCA	B0LOCA	B0AEPR	B0A2TX	B0ATCD	B0ALNB	B0AKNB	B0ADNB	B0A6TX	B0A5TX	B0BWTX	B0AFCD	B0A3ST	B0A4PC	B0APCD	B0K6TX	B0DPDT	B0FZST	B0HNCD	B0CSTZ	B0CTTZ	B0CUTZ	B0DGCD	B0ABVN	B0A5DT	B0BQST
ARDAR	ARDAR SPOLKA Z O O		UL SLONECZNA	63-300	SUCHORZEW		ARDAR SPOLKA Z		PL608011515	0048518206009					PL	P	0	296908		0							MLDMORENO	1220214


LNB0TX = B0APCD

-----------

IOAHCD	IOACAN	IOBUPG	IOP0NB	IOBFST	IOF6ST	IOD9SS	IOA2SX	IOAABD	IOB0TX	LLHMCE	LNB0TX	LLBQAN	LLBPAN	LLC4PG	IODUDT	LLBGDT	LLCIDT	LLCWCD	LLEDCD	LLOCCD	LNQICD	LNACAN	LNBUPG	IMPORTEPREVISIONALEDP	IMPORTECONSUNTIVOEFECTIVODP	IMPORTOPREVISIONALEDS	IMPORTOPREVISINVALUTA	DIVISA	IMPORTOCONSUNINVALUTA
11		2021	11261	1		AI				B997					080764	080764	007749	11		2021	210735	1210330	1210331	1210330	CI	EX	255886	11	2021	11261	200.00	200.00	200.00	200.00	EUR	200.00
11		2021	11261	1		AI				B997					080764	080764	264782	11		2021	210735	1210330	1210331	1210330	CI	EX	255886	11	2021	11261	1250.00	1250.00	1250.00	1250.00	EUR	1250.00

-----------

SELECT *
FROM MLD_BE101.UUB0REP
WHERE B0APCD IN ( '007749', '264782')

Select * from "segunda_tabla" where "campo_referenciado" not in (select id
from "primera_tabla")



SELECT LLOCCD, LLIBCD
FROM MLD_BE101.UBLLREP

GROUP BY LLOCCD, LLIBCD
ORDER BY LLOCCD, LLIBCD


SELECT LLOCCD, LLIBCD, INSTR(LLOCCD, LLIBCD) AS INS_LLIBCD
FROM MLD_BE101.UBLLREP

LIMIT 10 



estructura de base de datos en producción:

 pg_dump --host localhost --port 5432 -U postgres  --format plain --schema-only  -f  tmp/productionv1.sql dell
estructura de base de datos en desarrollo:

pg_dump --host localhost --port 5432 -U postgres  --format plain --schema-only  -f  tmp/developer2.sql dell
Cuando ya tengas las bases de datos exportadas se le dice a apgdiff que detecte los cambios realizados para aplicarlos en producción, ejemplo:

java -jar apgdiff-2.4.jar productionv1.sql developer2.sql > cambios.sql
como sabes apgdiff esta hecho en java una vez lo ejecutes tendrias el archivo cambios.sql con los cambios donde solo seria agregarlos donde quieras


SELECT TITULO, PRECIO,CANTIDAD, PRECIO*CANTIDAD
FROM LIBROS;


UPDATE LIBROS SET PRECIO=PRECIO-(PRECIO*0.1);

SELECT 5/0;

SELECT 
FROM MLD_BE101.UBLLREP



SELECT LLCJRA, LLALIN, LLAQLO, LLA1IN, LLA1IN, INSTR(LLCJRA, 'F') AS INS_LLCJRA, INSTR(LLALIN, 'Y', 7) AS INS_LLALIN, INSTR(LLAQLO, 'K', -1) AS INS_LLAQLO, INSTR(LLA1IN, 'A', 1, 3) AS INS_LLA1IN, SUBSTR(LLA1IN,
      INSTR(LLA1IN, '|')+1,
      INSTR(LLA1IN, '|', 1, 2)-INSTR(LLA1IN, '|')-1
      )
FROM MLD_BE101.UBLLREP

LIMIT 10 

1. ASIGNACIÓN A UNA VARIABLE DEL DÍA DE MAÑANA:

   L_FECHA := SYSDATE + 1;

2. SUMAR A LA HORA ACTUAL DOS HORAS:

   L_FECHA := SYSDATE + 2/24;

3. RESTAR A LA HORA ACTUAL 12 MINUTOS:

   L_FECHA := SYSDATE + 12/(60*24);

4. RESTAR A LA HORA ACTUAL 25 SEGUNDOS:

   L_FECHA := SYSDATE + 25/(60*60*24);

1. SUMAR DOS MESES A LA FECHA ACTUAL:

   L_FECHA := ADD_MONTHS(SYSDATE, 2);

2. RESTAR SEIS MESES A LA FECHA ACTUAL:

   L_FECHA := ADD_MONTHS(SYSDATE, -6);

3. RESTAR UN MES AL 27 DE FEBRERO:

   L_FECHA := ADD_MONTHS 
              (TO_DATE('27-FEB-2012', 'DD-MON-YYYY'), -1);
   RESULTADO: 27-ENE-2012

4. SUMAR UN MES AL 30 DE ABRIL:

   L_FECHA := ADD_MONTHS 
              (TO_DATE('30-ABR-2012', 'DD-MON-YYYY'), 1);
   RESULTADO: 31-MAY-2012

5. RESTAR UN MES AL 29 DE FEBRERO (EN UN AÑO BISIESTO):

   L_FECHA := ADD_MONTHS
              (TO_DATE('29-FEB-2012', 'DD-MON-YYYY'), -1);
   RESULTADO: 31-ENE-2012

6. SUMAR UN MES AL 31 DE MARZO:

   L_FECHA := ADD_MONTHS
              (TO_DATE('31-MAR-2012', 'DD-MON-YYYY'), 1);
   RESULTADO: 30-ABR-2012

7. ENCONTRAR EL SIGUIENTE MIÉRCOLES A LA FECHA ACTUAL:

   L_FECHA := NEXT_DAY(SYSDATE, 'MIÉ');
   O
   L_FECHA := NEXT_DAY(SYSDATE, 'MIÉRCOLES');

8. ENCONTRAR EL ULTIMO DÍA DEL MES CORRESPONDIENTE A LA
   FECHA ACTUAL:

   L_FECHA := LAST_DAY(SYSDATE);

1. OBTENER LA FECHA DE HOY PERO CON EL TIEMPO A 00:00:00:

   L_FECHA := TRUNC(SYSDATE);

2. OBTENER EL PRIMER DÍA DEL MES DEL DÍA ACTUAL:

   L_FECHA := TRUNC(SYSDATE, 'MM');

3. OBTENER EL PRIMER DÍA DEL CUARTO DE MES DEL DÍA ACTUAL:

   L_FECHA := TRUNC(SYSDATE, 'Q');

4. OBTENER EL PRIMER DÍA DEL AÑO DEL DÍA ACTUAL:

   L_FECHA := TRUNC(SYSDATE, 'Y');
   

(SYSDATE);						21-FEB-12
(SYSTIMESTAMP);					21-FEB-12 19.21.17.437000000 AM -05:00
(SYSDATE - SYSTIMESTAMP)        -000000000 00:00:00.437000000

TO_CHAR (SYSDATE,  'Day, DD "de" Month "de" YYYY'))		-- Martes   , 21 de Febrero    de 2012



-- Manifiestos
SELECT 
*
FROM MLD_BE101.UUIOREP
WHERE IOAHCD = 11 
  AND IOACAN = 2021
  AND IOBUPG IN (43112, 14838)
  
-- Expediciones
SELECT 
*
FROM MLD_BE101.UBLLREP
WHERE LLBQAN = 11
  AND LLBPAN = 2021
  AND LLC4PG IN (145471, 243416)
  
  
-------------------


SELECT LLBQAN, LLBPAN, LLC4PG, LLBGDT, LLCIDT, LLCWCD, LLEDCD, LLOCCD, LLHMCE, LLI9CR, LLFMAN, LLK8PG
FROM MLD_BE101.UBLLREP
WHERE LLCWCD IN ( 'CI', 'CE', 'XE', 'XI' )
  AND LLBQAN  = '11'
  AND LLBPAN BETWEEN 2021 AND 2022
  
SELECT DISTINCT LLHMCE
FROM MLD_BE101.UBLLREP
WHERE LLCWCD IN ( 'CI', 'CE', 'XE', 'XI' )
  AND LLBQAN  = '11'
  AND LLBPAN BETWEEN 2021 AND 2022

  
LLHMCE
080764
001022
192907
001050
001024
001009
013144
001041
223385
011185
023064
001007

001066
001056
081347
001063
001062
231574
259341
081358
167303
003771
248785
016576


SELECT COUNT(*)
FROM MLD_BE101.UUIOREP a
JOIN MLD_BE101.UBLLREP b
  ON IOAHCD = LLI9CR
 AND IOACAN = LLFMAN
 AND IOBUPG = LLK8PG

WHERE LLHMCE = '080764'
  AND IOAHCD = '11'
  
00001
15581