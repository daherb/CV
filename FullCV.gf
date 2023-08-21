abstract FullCV = CV ** {
  oper
    Name          : String = "Herbert Lange" ;
    Myself            : Author = (NewAuthor "Herbert" "Lange") ;
--    Position      : String = "" ;
    Mail          : String = "contact (AT) hackerbrau.se" ;
    Webpage       : MaybeString = Just "https://hackerbrau.se" ;
    Github        : MaybeString = Just "daherb" ;
    Linkedin      : MaybeString = Just "herbert-l-2474638a/" ;
    Gitlab        : MaybeString = Nothing ;
    StackOverflow : MaybeString = Nothing ;
    Twitter       : MaybeString = Just "pietaetskirsche" ;
    Skype         : MaybeString = Nothing ;
    Reddit        : MaybeString = Nothing ;
    LastUpdated   : Date = MonthYear October 2021 ;
    Degrees       : ListDegree =
      (ConsDegree (NewDegree PhDDegree UniGot {- University of Gothenburg -}
		     (NewAddress Gothenburg Sweden)
		     (NewDate 9 March 2021)
		     "Learning Language (with) Grammars: From Teaching Latin to Learning Domain-Specific Grammars" {- Thesis title -}
	 )
      (ConsDegree (NewDegree LicentiateDegree UniGot {- University of Gothenburg -}
		     (NewAddress Gothenburg Sweden)
		     (NewDate 21 November 2018)
		     "Computer-Assisted Language Learning with Grammars. A Case Study on Latin Learning" {- Thesis title -}
	 )
      (ConsDegree (NewDegree MagisterDegree LMU {- Ludwig-Maximilians-University Munich -}
		     (NewAddress Munich Germany)
		     (NewDate 17 July 2014)
		     "Implementierung einer Lateingrammatik im Grammatical Framework" {- Thesis title -}
	 )
	 BaseDegree))) ;
    Educations     : ListEducation =
      (ConsEducation (NewEducation PhDEducation UniGot {- University of Gothenburg -}
			(NewAddress Gothenburg Sweden)
			(NewDate 24 August 2015) (NewDate 18 September 2020)
			(ConsSupervisor (NewSupervisor "Peter Ljunglöf" MainSupervisor)
			(ConsSupervisor (NewSupervisor "Koen Claessen" CoSupervisor)
			(ConsSupervisor (NewSupervisor "Aarne Ranta" Examiner) BaseSupervisor)))
			PhDDescription)
      (ConsEducation (NewEducation ErasmusEducation TCD {- Trinity College Dublin -}
			(NewAddress Dublin Ireland)
			(NewDate 20 September 2010) (NewDate 27 May 2011)
			BaseSupervisor
			ErasmusDescription)
      (ConsEducation (NewEducation MagisterEducation LMU {- Ludwig-Maximilians-University Munich -}
			(NewAddress Munich Germany)
			(NewDate 1 October 2008) (NewDate 30 September 2014)
			(ConsSupervisor (NewSupervisor "Hans Leiss" MainSupervisor) BaseSupervisor)
			MagisterDescription)
      BaseEducation))) ;
    Jobs     : ListJob =
      (ConsJob (NewJob ResearcherJob IDSCompany {- Leibniz-Institute for the German Language -}
		  (NewAddress Mannheim Germany)
		  (NewDate 1 March 2022) Now
		  IDSJobDescription)
      (ConsJob (NewJob ResearcherJob (UniCompany UniHH) {- University of Hamburg -}
		  (NewAddress Hamburg Germany)
		  (NewDate 1 June 2021) (NewDate 30 November 2022)
		  UniHHJobDescription)
      (ConsJob (NewJob ResearcherJob (UniCompany UniGot) {- University of Gothenburg -}
		  (NewAddress Gothenburg Sweden)
		  (NewDate 24 August 2015) (NewDate 18 September 2020)
		  UniGotJobDescription)
      (ConsJob (NewJob SESysAdminJob {- Software engineer and system administrator -} FreelancerCompany
		  (NewAddress Munich Germany)
		  (NewDate 1 April 2015) (NewDate 31 May 2015)
		  FreelancerJobDescription)
      (ConsJob (NewJob SoftwareEngineerJob GlanosCompany {- Glanos Gmbh -}
		  (NewAddress Munich Germany)
		  (NewDate 1 November 2014) (NewDate 31 January 2015)
		  GlanosJobDescription)
      (ConsJob (NewJob StudentAssistantJob GermanistikLMUCompany {- Institute for German Philology, Ludwig-Maximilians University Munich -}
		  (NewAddress Munich Germany)
		  (NewDate 15 November 2011) (NewDate 31 December 2011)
		  GermanistikJobDescription)
      (ConsJob (NewJob StudentAssistantJob ITZCompany {- IT-Centre for Languages and Literature, Ludwig-Maximilians University Munich -}
		  (NewAddress Munich Germany)
		  (NewDate 1 February 2009) (NewDate 31 October 2014)
		  ITZJobDescription)
	 BaseJob))))))) ;
    Publications : ListPublication =
      (ConsPublication (ConferencePublication
			  (BaseAuthor Myself)
			     "Metadata Formats for Learner Corpora: Case Study and Discussion"
			     "Proceedings of the 11th Workshop on NLP for Computer Assisted Language Learning"
			     (NewAddress LouvainLaNeuve Belgium)
			     (OnlyYear 2022)
			     (Just "Linköping University Press") -- Publisher
			     Nothing --Series
			     Nothing -- Volume
			     (Just "108--113") -- Pages
			     Nothing
			     (Just "https://aclanthology.org/2022.nlp4call-1.11.pdf")
			     Published)
      (ConsPublication (ConferencePublication
			  (ConsAuthor Myself (BaseAuthor (NewAuthor "Jocelyn" "Aznar")))
			  "RefCo and its Checker: Improving Language Documentation Corpora’s Reusability Through a Semi-Automatic Review Process"
			  "Proceedings of the 13th Language Resources and Evaluation Conference (LREC)"
			  (NewAddress Marseille France)
			  (OnlyYear 2022)
			  (Just "European Language Resources Association") -- Publisher
			  Nothing -- Series
			  Nothing -- Volume
			  (Just "2721--2729") -- Pages
			  Nothing -- DOI
			  (Just "https://aclanthology.org/2022.lrec-1.291") -- Url
			  Published
	 )
      (ConsPublication (JournalPublication
			  (ConsAuthor Myself (BaseAuthor (NewAuthor "Peter" "Ljunglöf")))
			  "Learning Domain-Specific Grammars From a Small Number of Examples" -- Title
			  "Natural Language Processing in Artificial Intelligence" -- Book title
			  "Springer International Publishing" -- Publisher
			  (NewAddress Cham Switzerland)
			  (OnlyYear 2021)
			  "Studies in Computational Intelligence (SCI)" -- Series
			  "939" -- Volume
			  (Just "105-138") -- Pages
			  (Just "10.1007/978-3-030-63787-3_4") -- DOI
			  Nothing  -- Url
			  Published
	 )
      (ConsPublication (ProceedingsPublication
			   (ConsAuthor (NewAuthor "David" "Alfter") (ConsAuthor (NewAuthor "Elena" "Volodina") (ConsAuthor (NewAuthor "Ildikó" "Pilán") (ConsAuthor Myself (BaseAuthor (NewAuthor "Lars" "Borin")))))) -- Editors
			   "Proceedings of the 9th Workshop on Natural Language Processing for Computer Assisted Language Learning" -- book title
			   "Linköping University Electronic Press"
			   (NewAddress Linkoping Sweden)
			   (OnlyYear 2020)
			   "Linköping Electronic Conference Proceedings" -- series
			   "175" -- volume
			   (Just "45") -- pages
			   (Just "10.3384/ecp20175") -- doi
			   Published
	 )
      (ConsPublication (ThesisPublication
			  (BaseAuthor Myself)
			  "Learning Language (with) Grammars: From Teaching Latin to Learning Domain-Specific Grammars" -- Title
			  (NewDepartment "Department of Computer Science and Engineering" UniGot) -- School
			  (NewAddress Gothenburg Sweden)
			  (OnlyYear 2020) -- Date
			  PhDThesis
			  (Just "http://hdl.handle.net/2077/65453") -- Url
			  Published
	 )
	 
      (ConsPublication (ConferencePublication
			  (ConsAuthor Myself (BaseAuthor (NewAuthor "Peter" "Ljunglöf")))
			  "Learning Domain-specific Grammars from a Small Number of Examples"
			  "Proceedings of the 12th International Conference on Agents and Artificial Intelligence - Volume 1: NLPinAI"
			  (NewAddress Valetta Malta)
			  (OnlyYear 2020)
			  (Just "INSTICC. SciTePress") -- Publisher
			  Nothing -- Series
			  Nothing -- Volume
			  (Just "422–430") -- Pages
			  (Just "10.5220/0009371304220430") -- DOI
			  Nothing -- Url
			  Published
	 )
      (ConsPublication (ProceedingsPublication
			   (ConsAuthor (NewAuthor "David" "Alfter") (ConsAuthor (NewAuthor "Elena" "Volodina") (ConsAuthor (NewAuthor "Lars" "Borin") (ConsAuthor (NewAuthor "Ildikó" "Pilán") (BaseAuthor Myself))))) -- Editors
			   "Proceedings of the 8th Workshop on Natural Language Processing for Computer Assisted Language Learning" -- book title
			   "Linköping University Electronic Press"
			   (NewAddress Linkoping Sweden)
			   (OnlyYear 2019)
			   "NEALT Proceedings Series " -- series
			   "39" -- volume
			   (Just "99") -- pages
			   Nothing -- DOI
			   Published
	 )	  
       (ConsPublication (ConferencePublication
			   (BaseAuthor Myself)
			   "An Open-Source Computational Latin Grammar: Overview and Evaluation"
			   "Proceedings of the 20th International Colloquium on Latin Linguistics (ICLL 2019)"
			   (NewAddress Madrid Spain)
			   (OnlyYear 2021)
			   (Just "Ediciones Clásicas") -- Publisher
			   Nothing -- Series
			   Nothing -- Volume
			   (Just "559-578") -- Pages
			   Nothing -- DOI
			   Nothing -- Url
			   Published
	  )
      (ConsPublication (ConferencePublication
			  (ConsAuthor Myself (BaseAuthor (NewAuthor "Peter" "Ljunglöf")))
			  "Demonstrating the MUSTE Language Learning Environment"
			  "Proceedings of the 7th Workshop on NLP for Computer Assisted Language Learning (NLP4CALL 2018) at SLTC, 7th November 2018"
			  (NewAddress Stockholm Sweden)
			  (OnlyYear 2020)
			  (Just "Linköping University Electronic Press")
			  Nothing -- Series
			  Nothing -- Volume
			  (Just "41–46") -- Pages
			  Nothing -- DOI
			  (Just "https://www.aclweb.org/anthology/W18-7105") -- Url
			  Published
	 )
      (ConsPublication (ThesisPublication
			  (BaseAuthor Myself)
			  "Computer-Assisted Language Learning with Grammars. A Case Study on Latin Learning"
			  (NewDepartment "Department of Computer Science and Engineering" UniGot) -- School
			  (NewAddress Gothenburg Sweden)
			  (OnlyYear 2018)
			  LicentiateThesis
			  (Just "https://gup.ub.gu.se/file/207536")
			  Published
	 )
      (ConsPublication (ConferencePublication
			  (ConsAuthor Myself (BaseAuthor (NewAuthor "Peter" "Ljunglöf")))
			  "Putting Control into Language Learning"
			  "Proceedings of the Sixth International Workshop on Controlled Natural Languages"
			  (NewAddress Maynooth Ireland)
			  (OnlyYear 2018)
			  (Just "IOS Press") -- Publisher
			  (Just "Frontiers in Artificial Intelligence and Applications") -- Series
			  (Just "304") -- Volume
			  (Just "61-70") -- Pages
			  (Just "10.3233/978-1-61499-904-1-61") -- DOI
			  Nothing -- Url
			  Published
	 )
      (ConsPublication (ConferencePublication
			  (ConsAuthor Myself (BaseAuthor (NewAuthor "Peter" "Ljunglöf")))
			  "MULLE: A Grammar-based Latin Language Learning Tool to Supplement the Classroom Setting"
			  "Proceedings of the 5th Workshop on Natural Language Processing Techniques for Educational Applications (NLPTEA '18) at ACL"
			  (NewAddress Melbourne Australia)
			  (OnlyYear 2018)
			  (Just "Association for Computational Linguistics") -- Publisher
			  Nothing -- Series
			  Nothing -- Volume
			  (Just "108-112") -- Pages
			  (Just "10.18653/v1/W18-3715") -- DOI
			  (Just "http://aclweb.org/anthology/W18-3715") -- Url
			  Published
	 )
      (ConsPublication (ConferencePublication
			  (BaseAuthor Myself)
			  "Implementation of a Latin Grammar in Grammatical Framework"
			  "Proceedings of the 2nd International Conference on Digital Access to Textual Cultural Heritage (DATeCH2017)"
			  (NewAddress Gottingen Germany)
			  (OnlyYear 2017)
			  (Just "Association for Computing Machinery") -- Publisher
			  Nothing -- Series
			  Nothing -- Volume
			  (Just "97-102")
			  (Just "10.1145/3078081.3078108") -- DOI
			  Nothing -- Url
			  Published
	    )
      (ConsPublication (ThesisPublication
			(BaseAuthor Myself)
			"Erstellen einer Grammatik für das Lateinische im \"Grammatical Framework\""
			  (NewDepartment "Centrum für Informations- und Sprachverarbeitung" LMU)
			(NewAddress Munich Germany)
			(OnlyYear 2013)
			MastersThesis
			Nothing
			Published
	 )
      BasePublication)))))))))))))) ;
    Presentations    : ListPresentation =
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "The Hith-Hikers Guide to Artificial Intelligence - BBC Basic Version"
			   "Updateringar - Update Computer Club Uppsala"
			   Online
			   (OnlyYear 2022) -- 20221112
			   (NonAcademic FullTalk)
			   (Just "https://wiki.dfupdate.se/projekt:updateringar")
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "Semi-automatic quality assurance for audiovisual corpus data"
			   "CLT Seminar. University of Gothenburg"
			   (NewAddress Gothenburg Sweden)
			   (OnlyYear 2022) -- 20221020
			   (Academic SeminarPresentation)
			   Nothing
	)
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "Demonstrating an Automatic Gloss Checker for Annotated Corpora"
			   "Language Documentation and Archiving during the Decade of Indigenous LanguagesConference and training sessions"
			   (NewAddress Berlin Germany)
			   (OnlyYear 2022) -- 20221005
			   (Academic ConferencePresentation)
			   Nothing
	 )
      (ConsPresentation (NewPresentation
			   (ConsAuthor Myself (BaseAuthor (NewAuthor "Jocelyn" "Aznar"))) -- Speaker
			   "Training Session: Improving Corpus Quality in Language Documentation : Introduction to QUEST and the RefCo process"
			   "Language Documentation and Archiving during the Decade of Indigenous LanguagesConference and training sessions"
			   Online
			   (OnlyYear 2022) -- 20221004
			   (Academic ConferencePresentation)
			   Nothing
	 )
      (ConsPresentation (NewPresentation
			   (ConsAuthor Myself (BaseAuthor (NewAuthor "Jocelyn" "Aznar"))) -- Speaker
			   "RefCo and its Checker: Improving Language Documentation Corpora's Reusability Through a Semi-Automatic Review Process"
			   "Language Resoures and Evaluation Conference (LREC)"
			   (NewAddress Marseille France)
			   (OnlyYear 2022) -- 20220622
			   (Academic ConferencePresentation)
			   Nothing
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "MULLE: A grammar-based language learning tool"
			   "Seminar on Language Technology for Education in the South African languages"
			   Online
			   (OnlyYear 2022) -- 20220615
			   (Academic SeminarPresentation)
			   Nothing
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "Type theory and meaning in linguistics"
			   "rC3 - remote Chaos Experience"
			   Online
			   (OnlyYear 2020)
			   (NonAcademic FullTalk)
			   (Just "https://media.ccc.de/v/rc3-232856-type_theory_and_meaning_in_linguistics")
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "A Type-Theoretic Approach to Generating Pictures and Descriptions"
			   "8th Swedish Language Technology Conference"
			   (NewAddress Gothenburg Sweden)
			   (OnlyYear 2020)
			   (Academic ConferencePresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "Learning Domain-specific Grammars from Examples"
			   "CLASP Seminar, University of Gothenburg"
			   (NewAddress Gothenburg Sweden)
			   (OnlyYear 2020)
			   (Academic SeminarPresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "Learning Domain-specific Grammars from a Small Number of Examples"
			   "Special Session NLPinAI, 12th International Conference on Agents and Artificial Intelligence"
			   (NewAddress Valetta Malta)
			   (OnlyYear 2020)
			   (Academic ConferencePresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "Using Dependent Types in GF"
			   "Functional Programming Winter Meeting, Chalmers University of Technology"
			   (NewAddress Gothenburg Sweden)
			   (OnlyYear 2020)
			   (Academic SeminarPresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "Empirical Evaluation of a Computational Latin Grammar"
			   "20th International Colloquium on Latin Linguistics"
			   (NewAddress LasPalmas CanaryIslands)
			   (OnlyYear 2019)
			   (Academic ConferencePresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "A short history of end-user programming"
			   "Update mini conference"
			   (NewAddress Uppsala Sweden)
			   (OnlyYear 2019)
			   (NonAcademic FullTalk)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "Computer-Assisted Language Learning for Latin"
			   "Latin Seminar, Uppsala University"
			   (NewAddress Uppsala Sweden)
			   (OnlyYear 2019)
			   (Academic SeminarPresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "Restricting Grammars to Reduce Ambiguity"
			   "Functional Programming Seminar, Chalmers University of Technology"
			   (NewAddress Gothenburg Sweden)
			   (OnlyYear 2019)
			   (Academic SeminarPresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself) -- Speaker
			   "MULLE for Latin: Computer-Generated Translation Exercises for Latin"
			   "Workshop on Digital Approaches to Teaching Historical Languages"
			   (NewAddress Berlin Germany)
			   (OnlyYear 2019)
			   (Academic ConferencePresentation)
			   (Just "https://www.projekte.hu-berlin.de/en/callidus-en/DAtTeL-workshop/digital-approaches-to-teaching-historical-languages-dattel") -- Url
	 )
      (ConsPresentation (NewPresentation
			   (ConsAuthor Myself (BaseAuthor (NewAuthor "Peter" "Ljunglöf")))-- Speaker
			   "Demonstrating the MUSTE Language Learning Environment"
			   "7th Workshop on Natural Language Processing for Computer-Assisted Language Learning at the Swedish Language Technology Conference (SLTC)"
			   (NewAddress Stockholm Sweden)
			   (OnlyYear 2018)
			   (Academic PosterPresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself)-- Speaker
			   "MULLE: A grammar-based Latin language learning tool to supplement the classroom setting"
			   "5th Workshop on Natural Language Processing Techniques for Educational Applications"
			   (NewAddress Melbourne Australia)
			   (OnlyYear 2018)
			   (Academic PosterPresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself)-- Speaker
			   "Computational Linguistics vs. Natural Language Processing - A bit of a rant"
			   "Free Society Conference and Nordic Summit (FSCONS)"
			   (NewAddress Oslo Norway)
			   (OnlyYear 2018)
			   (NonAcademic LightningTalk)
			   (Just "https://youtu.be/Xrb3ULik1vc?t=3127") -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself)-- Speaker
			   "Let's talk about Old Computer; Or: Why old computers are cool, why we should care, and stuff I discovered"
			   "Free Society Conference and Nordic Summit (FSCONS)"
			   (NewAddress Oslo Norway)
			   (OnlyYear 2018)
			   (NonAcademic LightningTalk)
			   (Just "https://youtu.be/_C5QUuU2vic?t=1386") -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself)-- Speaker
			   "Implementation of a Latin Grammar in Grammatical Framework"
			   "2nd International Conference on Digital Access to Textual Cultural Heritage"
			   (NewAddress Gottingen Germany)
			   (OnlyYear 2017)
			   (Academic ConferencePresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself)-- Speaker
			   "A Latin Language Learning Application"
			   "Latin Seminar, University of Gothenburg"
			   (NewAddress Gothenburg Sweden)
			   (OnlyYear 2017)
			   (Academic SeminarPresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself)-- Speaker
			   "From Word-based text editing to language learning"
			   "Dublin Computational Linguistics Research Seminar, Trinity College Dublin"
			   (NewAddress Dublin Ireland)
			   (OnlyYear 2017)
			   (Academic SeminarPresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself)-- Speaker
			   "From Word-based text editing to language learning"
			   "Postgraduate Seminar in Computer Science, National University of Ireland"
			   (NewAddress Maynooth Ireland)
			   (OnlyYear 2017)
			   (Academic SeminarPresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself)-- Speaker
			   "MUSTE - Behind the scenes"
			   "REMU Research Seminar, University of Gothenburg"
			   (NewAddress Gothenburg Sweden)
			   (OnlyYear 2017)
			   (Academic SeminarPresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself)-- Speaker
			   "Implementation of a Latin Grammar in Grammatical Framework"
			   "6th Swedish Language Technology Conference (SLTC)"
			   (NewAddress Umea Sweden)
			   (OnlyYear 2016)
			   (Academic PosterPresentation)
			   Nothing -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself)-- Speaker
			   "SHRDLU - Ein Programm das natürliche Sprache versteht"
			   "Vintage Computing Festival Berlin (VCFB)"
			   (NewAddress Berlin Germany)
			   (OnlyYear 2016)
			   (NonAcademic FullTalk)
			   (Just "https://media.ccc.de/v/vcfb2016_-_52_-_en_-_medientheater_-_201610031530_-_shrdlu_-_herbert_lange") -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself)-- Speaker
			   "Vintage Computing"
			   "Free Society Conference and Nordic Summit (FSCONS)"
			   (NewAddress Gothenburg Sweden)
			   (OnlyYear 2015)
			   (NonAcademic LightningTalk)
			   (Just "https://youtu.be/8mSVMY74sOY?t=660") -- Url
	 )
      (ConsPresentation (NewPresentation
			   (BaseAuthor Myself)-- Speaker
			   "Grammatical Framework"
			   "Mehrvorträgewagen, muCCC Munich Hackerspace"
			   (NewAddress Munich Germany)
			   (OnlyYear 2013)
			   (NonAcademic FullTalk)
			   Nothing -- Url
	 )
	 BasePresentation
	 ))))))))))))))))))))))))))))) ;
    TeachingDuties : ListTeachingDuty =
      (ConsTeachingDuty (NewTeachingDuty TeachingAssistant ConcurrentProgramming ChalmersAndUniGot
			   (BaseTerm (NewTerm Spring (OnlyYear 2019))))
      (ConsTeachingDuty (NewTeachingDuty TeachingAssistant ArtificialIntelligence ChalmersAndUniGot
			   (ConsTerm (NewTerm Spring (OnlyYear 2018)) (BaseTerm (NewTerm Spring (OnlyYear 2019)))))
      (ConsTeachingDuty (NewTeachingDuty TeachingAssistant ComputationalSyntax (UniVenue UniGot)
			   (ConsTerm (NewTerm Spring (OnlyYear 2017)) (ConsTerm (NewTerm Spring (OnlyYear 2018)) (ConsTerm (NewTerm Spring (OnlyYear 2019)) (BaseTerm (NewTerm Spring (OnlyYear 2020)))))))
      (ConsTeachingDuty (NewTeachingDuty Tutor GFForPythonProgrammers GFSummerSchoolRiga
			   (BaseTerm (NewTerm NoSemester (MonthYear August 2017))))
      (ConsTeachingDuty (NewTeachingDuty TeachingAssistant FunctionalProgramming ChalmersAndUniGot
			   (ConsTerm (NewTerm Autumn (OnlyYear 2016)) (ConsTerm (NewTerm Autumn (OnlyYear 2017)) (ConsTerm (NewTerm Autumn (OnlyYear 2018)) (BaseTerm (NewTerm Autumn (OnlyYear 2019)))))))
      (ConsTeachingDuty (NewTeachingDuty TeachingAssistant DatabasesCourse ChalmersAndUniGot
			   (ConsTerm (NewTerm Autumn (OnlyYear 2015)) (ConsTerm (NewTerm Spring (OnlyYear 2016)) (ConsTerm (NewTerm Autumn (OnlyYear 2016)) (ConsTerm (NewTerm Spring (OnlyYear 2017)) (ConsTerm (NewTerm Autumn (OnlyYear 2017)) (BaseTerm (NewTerm Autumn (OnlyYear 2018)))))))))
      (ConsTeachingDuty (NewTeachingDuty Tutor IntroductionToGF TaCoSMunich
			   (BaseTerm (NewTerm NoSemester (MonthYear May 2015))))
      (ConsTeachingDuty (NewTeachingDuty Tutor ScientificWritingInLaTeX (CompanyVenue ITZCompany)
			   (BaseTerm (NewTerm NoSemester (MonthYear February 2014))))
      (ConsTeachingDuty (NewTeachingDuty TeachingAssistant LogicAndModeltheoreticSemantics CISLMU
			   (BaseTerm (NewTerm Summer (OnlyYear 2012))))
      (ConsTeachingDuty (NewTeachingDuty TeachingAssistant CorpusAndUnixTools CISLMU
			   (BaseTerm (NewTerm Summer (OnlyYear 2011))))
      BaseTeachingDuty)))))))))) ; 
    Grants : ListGrant =
      (ConsGrant (NewGrant TravelGrant "Grammatical Framework Summer School" (NewAddress Gozo Malta) "Centre for Language Technology, University of Gothenburg" (OnlyYear 2015))
      (ConsGrant (NewGrant TravelGrant "Grammatical Framework Summer School" (NewAddress Frauenchiemsee Germany) "Volkswagenstiftung" (OnlyYear 2013))
      (ConsGrant (NewGrant ErasmusGrant "Trinity College" (NewAddress Dublin Ireland) "European Union" (OnlyYear 2010))
      BaseGrant))) ;
    ConferenceInvolvements : ListConferenceInvolvement =
      (ConsConferenceInvolvement (NewConferenceInvolvement "Co-Organizer" "9th Workshop on Natural Language Processing for Computer-Assisted Language Learning" (NewAddress Gothenburg Sweden) (OnlyYear 2020))
      (ConsConferenceInvolvement (NewConferenceInvolvement "Co-Organizer" "8th Workshop on Natural Language Processing for Computer-Assisted Language Learning" (NewAddress Turku Finland) (OnlyYear 2019))
      (ConsConferenceInvolvement (NewConferenceInvolvement "Co-Chair Logic and Computation" "European Summerschool in Logic, Language and Information Student Session" (NewAddress Toulouse France) (OnlyYear 2017))
      BaseConferenceInvolvement))) ;
    PeerReviews : ListPeerReview =
      (ConsPeerReview (NewPeerReview "11th Workshop on Natural Language Processing for Computer-Assisted Language Learning" (OnlyYear 2022))
      (ConsPeerReview (NewPeerReview "10th Workshop on Natural Language Processing for Computer-Assisted Language Learning" (OnlyYear 2021))
      (ConsPeerReview (NewPeerReview "7th International Workshop on Controlled Natural Languages" (OnlyYear 2021))
      (ConsPeerReview (NewPeerReview "8th Swedish Language Technology Conference post-proceedings" (OnlyYear 2021))
      (ConsPeerReview (NewPeerReview "9th Workshop on Natural Language Processing for Computer-Assisted Language Learning" (OnlyYear 2020))     
      (ConsPeerReview (NewPeerReview "8th Workshop on Natural Language Processing for Computer-Assisted Language Learning" (OnlyYear 2019))
      (ConsPeerReview (NewPeerReview "5th Workshop on Natural Language Processing Techniques for Educational Applications" (OnlyYear 2018))
	 BasePeerReview))))))) ;
    OtherInvolvements : ListOtherInvolvement =
      (ConsOtherInvolvement (NewOtherInvolvement GraduateCouncilGU (OnlyYear 2018) (OnlyYear 2020))
      (ConsOtherInvolvement (NewOtherInvolvement PhDCouncilCSE (OnlyYear 2016) (OnlyYear 2020))
      (ConsOtherInvolvement (NewOtherInvolvement StudentCouncilCIS (OnlyYear 2012) (OnlyYear 2013))
      BaseOtherInvolvement))) ;
    Skills   : ListSkillCategory =
      (ConsSkillCategory (NewSkillCategory
			    Programming_Languages
			    (ConsSkill (NewSkill Agda BasicKnowledge)
			    (ConsSkill (NewSkill Basic BasicExperience)
			    (ConsSkill (NewSkill C_Cpp {- C/C++ -} BasicExperience)
			    (ConsSkill (NewSkill Coq BasicKnowledge)
			    (ConsSkill (NewSkill Erlang BasicKnowledge)
			    (ConsSkill (NewSkill Grammatical_Framework Expert)
			    (ConsSkill (NewSkill Haskell Expert)
			    (ConsSkill (NewSkill HTML_CSS {- HTML/CSS -} ProfessionalExperience)
			    (ConsSkill (NewSkill Java ProfessionalExperience)
			    (ConsSkill (NewSkill JavaScript ProfessionalExperience)
			    (ConsSkill (NewSkill LISP BasicExperience)
			    (ConsSkill (NewSkill Pascal BasicExperience)
			    (ConsSkill (NewSkill Perl BasicExperience)
			    (ConsSkill (NewSkill Prolog BasicExperience)
			    (ConsSkill (NewSkill Python ProfessionalExperience)
			    (ConsSkill (NewSkill Ruby BasicKnowledge)
			    (ConsSkill (NewSkill SML BasicExperience)
			    BaseSkill
			    )))))))))))))))))
	 )
      (ConsSkillCategory (NewSkillCategory
			    Operating_Systems
			    (ConsSkill (NewSkill Atari_TOS BasicKnowledge)
			    (ConsSkill (NewSkill Gentoo_Linux Expert)
			    (ConsSkill (NewSkill BeOS_Haiku {-BeOS/Haiku -} BasicKnowledge)
			    (ConsSkill (NewSkill FreeBSD_NetBSD {- FreeBSD/NetBSD -} BasicExperience)
			    (ConsSkill (NewSkill IRIX BasicExperience)
			    (ConsSkill (NewSkill MacOS_Classic BasicExperience)
			    (ConsSkill (NewSkill MacOS_X BasicExperience)
			    (ConsSkill (NewSkill MS_DOS {- MS-DOS -} BasicExperience)
			    (ConsSkill (NewSkill OpenVMS BasicKnowledge)
			    (ConsSkill (NewSkill OS_2 {- OS/2 -} BasicKnowledge)
			    (ConsSkill (NewSkill RISC_OS BasicKnowledge)
			    (ConsSkill (NewSkill Windows ProfessionalExperience)
			    BaseSkill
			    ))))))))))))
	 )
      (ConsSkillCategory (NewSkillCategory
			    IT_Other
			    (ConsSkill (NewSkill Constraint_Programming BasicExperience)
			    (ConsSkill (NewSkill Formal_Languages ProfessionalExperience)
			    (ConsSkill (NewSkill GNU_make BasicExperience)
			    (ConsSkill (NewSkill Icinga_Nagios {- Icinga/Nagios -} BasicExperience)
			    (ConsSkill (NewSkill LaTeX ProfessionalExperience)
			    (ConsSkill (NewSkill Machine_Learning BasicKnowledge)
			    (ConsSkill (NewSkill MS_Office ProfessionalExperience)
			    (ConsSkill (NewSkill Parser_Combinators ProfessionalExperience)
			    (ConsSkill (NewSkill Property_Based_Testing ProfessionalExperience)
			    (ConsSkill (NewSkill Software_Defined_Radio BasicExperience)
			    (ConsSkill (NewSkill Databases ProfessionalExperience)
			    (ConsSkill (NewSkill Version_Control_Systems ProfessionalExperience)
			    BaseSkill
			    ))))))))))))
	 )
      (ConsSkillCategory (NewSkillCategory
			    Languages
			    (ConsSkill (NewSkill English Expert)
			    (ConsSkill (NewSkill Esperanto BasicExperience)
			    (ConsSkill (NewSkill French BasicKnowledge)
			    (ConsSkill (NewSkill German Expert)
			    (ConsSkill (NewSkill Irish BasicKnowledge)
			    (ConsSkill (NewSkill Italian BasicKnowledge)
			    (ConsSkill (NewSkill Latin BasicExperience)
			    (ConsSkill (NewSkill Medieval_German BasicKnowledge)
			    (ConsSkill (NewSkill Spanish BasicKnowledge)
			    (ConsSkill (NewSkill Swedish ProfessionalExperience)
			    BaseSkill
			    ))))))))))
	 )
      (ConsSkillCategory (NewSkillCategory
			    Computational_Linguistics
			    (ConsSkill (NewSkill Controlled_Natural_Languages Expert)
			    (ConsSkill (NewSkill Discourse_Representation_Theory BasicExperience)
			    (ConsSkill (NewSkill Formal_Syntax Expert)
			    (ConsSkill (NewSkill Lexical_Semantics BasicExperience)
			    (ConsSkill (NewSkill Montague_Grammars ProfessionalExperience)
			    (ConsSkill (NewSkill Resource_Grammar_Development Guru)
			    (ConsSkill (NewSkill Universal_Dependencies BasicExperience)
			    (ConsSkill (NewSkill Type_Theoretic_Semantics BasicExperience)
			    BaseSkill
			    ))))))))
	 )
      (ConsSkillCategory (NewSkillCategory
			    Research_and_Generic
			    (ConsSkill (NewSkill Data_Analysis ProfessionalExperience)
			    (ConsSkill (NewSkill Experiment_Design BasicExperience)
			    (ConsSkill (NewSkill Independent_Work Expert)
			    (ConsSkill (NewSkill Problem_Solving Expert)
			    (ConsSkill (NewSkill Project_Management ProfessionalExperience)
			    (ConsSkill (NewSkill Public_Presentation ProfessionalExperience)
			    (ConsSkill (NewSkill Research Expert)
			    (ConsSkill (NewSkill Research_Ethics ProfessionalExperience)
			    (ConsSkill (NewSkill Scientific_Writing Expert)
			    (ConsSkill (NewSkill Teaching ProfessionalExperience)
			    (ConsSkill (NewSkill Teamwork ProfessionalExperience)
			    BaseSkill
			    )))))))))))
	 )
	 BaseSkillCategory ))))));

  cat
    AcademicPresentation ;
    NonAcademicPresentation ;
 fun
    UniGot, LMU, TCD, UniHH : University ;
    Gothenburg, Munich, Dublin, Cham, Valetta, Gottingen, Stockholm, Maynooth, LasPalmas, Melbourne, Uppsala, Berlin, Umea, Oslo, Gozo, Frauenchiemsee, Turku, Toulouse, Linkoping, Hamburg, Madrid, Mannheim, Marseille : City ;
    Sweden, Germany, Ireland, Switzerland, Malta, CanaryIslands, Australia, Norway, Finland, France, Spain : Country ;
    Online : Address ;
    PhDCS  : Position ;
    ErasmusDescription, PhDDescription, LicentiateDescription, MagisterDescription : EducationDescription ;
    IDSCompany, ITZCompany, GermanistikLMUCompany, GlanosCompany, FreelancerCompany : Company ;
    UniCompany : University -> Company ;
    ResearcherJob, SESysAdminJob, SoftwareEngineerJob, StudentAssistantJob : JobTitle ;
    UniGotJobDescription, FreelancerJobDescription, GlanosJobDescription, ITZJobDescription, GermanistikJobDescription, UniHHJobDescription, IDSJobDescription : JobDescription ;
    PhDDegree, LicentiateDegree, MagisterDegree : DegreeType ;
    ErasmusEducation, PhDEducation, MagisterEducation : EducationType ;
    MainSupervisor, CoSupervisor, Examiner : SupervisorRole ;
    PhDThesis, LicentiateThesis, MastersThesis: ThesisType ;
    Academic : AcademicPresentation -> PresentationType ;
    NonAcademic : NonAcademicPresentation -> PresentationType ;
    ConferencePresentation, PosterPresentation, SeminarPresentation : AcademicPresentation ;
    LightningTalk, FullTalk : NonAcademicPresentation ;
    TeachingAssistant, Tutor : TeachingType;
    ConcurrentProgramming, ArtificialIntelligence, ComputationalSyntax, GFForPythonProgrammers, FunctionalProgramming,DatabasesCourse, IntroductionToGF, ScientificWritingInLaTeX, LogicAndModeltheoreticSemantics, CorpusAndUnixTools : CourseName ;
    ChalmersAndUniGot, GFSummerSchoolRiga, TaCoSMunich, CISLMU : Venue ;
    TravelGrant, ErasmusGrant : GrantType ;
    GraduateCouncilGU, PhDCouncilCSE, StudentCouncilCIS : InvolvementType ;
    Programming_Languages, Operating_Systems, IT_Other, Languages, Computational_Linguistics, Research_and_Generic : Category ;
    Agda, Basic, C_Cpp, Coq, Erlang, Grammatical_Framework, Haskell, HTML_CSS, Java, JavaScript, LISP, Pascal, Perl, Prolog, Python, Ruby, SML, Atari_TOS, Gentoo_Linux, BeOS_Haiku, FreeBSD_NetBSD, IRIX, MacOS_Classic, MacOS_X, MS_DOS, OpenVMS, OS_2, RISC_OS, Windows, Constraint_Programming, Formal_Languages, GNU_make, Icinga_Nagios, LaTeX, Machine_Learning, MS_Office, Parser_Combinators, Property_Based_Testing, Software_Defined_Radio, Databases, Version_Control_Systems, English, Esperanto, French, German, Irish, Italian, Latin, Medieval_German, Spanish, Swedish, Controlled_Natural_Languages, Discourse_Representation_Theory, Formal_Syntax, Lexical_Semantics, Montague_Grammars, Resource_Grammar_Development, Universal_Dependencies, Type_Theoretic_Semantics, Data_Analysis, Experiment_Design, Independent_Work, Problem_Solving, Project_Management, Public_Presentation, Research, Research_Ethics, Scientific_Writing, Teaching, Teamwork : SkillName ;
  def
    FullCV =
      NewCV
      Name
      PhDCS
      (NewAddress Munich Germany)
      Mail
      Webpage
      Github
      Linkedin
      Gitlab
      StackOverflow
      Twitter
      Skype
      Reddit
      LastUpdated
      Degrees
      Educations
      Jobs
      Publications
      Presentations
      TeachingDuties
      Grants
      ConferenceInvolvements
      PeerReviews
      OtherInvolvements
      Skills ;
}
