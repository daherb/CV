abstract FullCV = CV ** {
  oper
    Name          : String = "Herbert Lange" ;
--    Position      : String = "" ;
    Mail          : String = "*redacted*" ;
    Webpage       : MaybeString = Just "http://www.cse.chalmers.se/~langeh/" ;
    Github        : MaybeString = Just "daherb" ;
    Linkedin      : MaybeString = Just "https://www.linkedin.com/in/herbert-l-2474638a/" ;
    Gitlab        : MaybeString = Nothing ;
    StackOverflow : MaybeString = Nothing ;
    Twitter       : MaybeString = Just "@pietaetskirsche" ;
    Skype         : MaybeString = Nothing ;
    Reddit        : MaybeString = Nothing ;
    LastUpdated   : Date = MonthYear March 2021 ;
    Degrees       : ListDegree =
      (ConsDegree (NewDegree PhDDegree UniGot {- University of Gothenburg -}
		     (MonthYear September 2020)
		     "Learning Language (with) Grammars: From Teaching Latin to Learning Domain-Specific Grammars" {- Thesis title -}
	 )
      (ConsDegree (NewDegree LicentiateDegree UniGot {- University of Gothenburg -}
		     (MonthYear September 2018)
		     "Computer-Assisted Language Learning with Grammars. A Case Study on Latin Learning" {- Thesis title -}
	 )
      (ConsDegree (NewDegree MagisterDegree LMU {- Ludwig-Maximilians-University Munich -}
		     (MonthYear July 2014)
		     "Implementierung einer Lateingrammatik im Grammatical Framework" {- Thesis title -}
	 )
	 BaseDegree))) ;
    Educations     : ListEducation =
      (ConsEducation (NewEducation PhDEducation UniGot {- University of Gothenburg -}
			(MonthYear August 2015) (MonthYear September 2020)
			(ConsSupervisor (NewSupervisor "Peter Ljunglöf" MainSupervisor)
			(ConsSupervisor (NewSupervisor "Koen Claessen" CoSupervisor)
			(ConsSupervisor (NewSupervisor "Aarne Ranta" Examiner) BaseSupervisor)))
			PhDDescription)
      (ConsEducation (NewEducation ErasmusEducation TCD {- Trinity College Dublin -}
			(MonthYear October 2010) (MonthYear May 2011)
			BaseSupervisor
			ErasmusDescription)
      (ConsEducation (NewEducation MagisterEducation LMU {- Ludwig-Maximilians-University Munich -}
			(MonthYear October 2008) (MonthYear July 2014)
			(ConsSupervisor (NewSupervisor "Hans Leiss" MainSupervisor) BaseSupervisor)
			MagisterDescription)
      BaseEducation))) ;
    Jobs     : ListJob =
      (ConsJob (NewJob ResearcherJob UniGotCompany {- University of Gothenburg -}
		  (MonthYear August 2015) (MonthYear September 2020)
		  UniGotJobDescription)
      (ConsJob (NewJob SESysAdminJob {- Software engineer and system administrator -} FreelancerCompany
		  (MonthYear April 2015) (MonthYear May 2015)
		  FreelancerJobDescription)
      (ConsJob (NewJob SoftwareEngineerJob GlanosCompany {- Glanos Gmbh -}
		  (MonthYear November 2014) (MonthYear January 2015)
		  GlanosJobDescription)
      (ConsJob (NewJob StudentAssistantJob ITZCompany {- IT-Centre for Languages and Literature, Ludwig-Maximilians University Munich -}
		  (OnlyYear 2009) (MonthYear October 2014)
		  ITZJobDescription)
	 BaseJob)))) ;
    Publications : ListPublication =
      (ConsPublication (JournalPublication
			  (ConsAuthor (NewAuthor "Herbert" "Lange") (BaseAuthor (NewAuthor "Peter" "Ljunglöf")))
			  "Learning Domain-Specific Grammars From a Small Number of Examples" -- Title
			  "Natural Language Processing in Artificial Intelligence" -- Book title
			  "Springer International Publishing" -- Publisher
			  "Cham, Switzerland" -- Address
			  (OnlyYear 2021)
			  "Studies in Computational Intelligence (SCI)" -- Series
			  "939" -- Volume
			  (Just "105-138") -- Pages
			  (Just "10.1007/978-3-030-63787-3_4") -- DOI
			  Nothing  -- Url
			  Published
	 )
      (ConsPublication (ThesisPublication
			  (BaseAuthor (NewAuthor "Herbert" "Lange"))
			  "Learning Language (with) Grammars: From Teaching Latin to Learning Domain-Specific Grammars" -- Title
			  "Department of Computer Science and Engineering. University of Gothenburg" -- School
			  "Gothenburg, Sweden" -- Address
			  (OnlyYear 2018) -- Date
			  PhDThesis
			  (Just "http://hdl.handle.net/2077/65453") -- Url
			  Published
	 )
	 
      (ConsPublication (ConferencePublication
			  (ConsAuthor (NewAuthor "Herbert" "Lange") (BaseAuthor (NewAuthor "Peter" "Ljunglöf")))
			  "Learning Domain-specific Grammars from a Small Number of Examples"
			  "Proceedings of the 12th International Conference on Agents and Artificial Intelligence - Volume 1: NLPinAI"
			  "Valetta, Malta" -- Address
			  (OnlyYear 2020)
			  (Just "INSTICC. SciTePress") -- Publisher
			  Nothing -- Series
			  Nothing -- Volume
			  (Just "422–430") -- Pages
			  (Just "10.5220/0009371304220430") -- DOI
			  Nothing -- Url
			  Published
	 )
	  
       (ConsPublication (ConferencePublication
			   (BaseAuthor (NewAuthor "Herbert" "Lange"))
			   "An Open-Source Computational Latin Grammar: Overview and Evaluation"
			   "Proceedings of the 20th International Colloquium on Latin Linguistics (ICLL 2019)"
			   "Las Palmas de Gran Canaria, Canary Islands" -- Address
			   (OnlyYear 2019)
			   Nothing -- Publisher
			   Nothing -- Series
			   Nothing -- Volume
			   Nothing -- Pages
			   Nothing -- DOI
			   Nothing -- Url
			   Forthcoming
	  )
      (ConsPublication (ConferencePublication
			  (ConsAuthor (NewAuthor "Herbert" "Lange") (BaseAuthor (NewAuthor "Peter" "Ljunglöf")))
			  "Demonstrating the MUSTE Language Learning Environment"
			  "Proceedings of the 7th Workshop on NLP for Computer Assisted Language Learning (NLP4CALL 2018) at SLTC, 7th November 2018"
			  "Stockholm, Sweden"
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
			  (BaseAuthor (NewAuthor "Herbert" "Lange"))
			  "Computer-Assisted Language Learning with Grammars. A Case Study on Latin Learning"
			  "Department of Computer Science and Engineering. University of Gothenburg" -- School
			  "Gothenburg, Sweden"
			  (OnlyYear 2018)
			  LicentiateThesis
			  (Just "https://gup.ub.gu.se/file/207536")
			  Published
	 )
      (ConsPublication (ConferencePublication
			  (ConsAuthor (NewAuthor "Herbert" "Lange") (BaseAuthor (NewAuthor "Peter" "Ljunglöf")))
			  "Putting Control into Language Learning"
			  "Proceedings of the Sixth International Workshop on Controlled Natural Languages"
			  "Maynooth. Ireland"
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
			  (ConsAuthor (NewAuthor "Herbert" "Lange") (BaseAuthor (NewAuthor "Peter" "Ljunglöf")))
			  "MULLE: A Grammar-based Latin Language Learning Tool to Supplement the Classroom Setting"
			  "Proceedings of the 5th Workshop on Natural Language Processing Techniques for Educational Applications (NLPTEA '18) at ACL"
			  "Melbourn. Australia"
			  (OnlyYear 2018)
			  (Just "Association for Computational Linguistics") -- Publisher
			  Nothing -- Series
			  Nothing -- Volume
			  (Just "108-112") -- Pages
			  Nothing -- DOI
			  (Just "http://aclweb.org/anthology/W18-3715") -- Url
			  Published
	 )
      (ConsPublication (ConferencePublication
			  (BaseAuthor (NewAuthor "Herbert" "Lange"))
			  "Implementation of a Latin Grammar in Grammatical Framework"
			  "Proceedings of the 2nd International Conference on Digital Access to Textual Cultural Heritage (DATeCH2017)"
			   "Göttingen, Germany"
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
			(BaseAuthor (NewAuthor "Herbert" "Lange"))
			"Erstellen einer Grammatik für das Lateinische im \"Grammatical Framework\""
			"Centrum für Informations- und Sprachverarbeitung, Ludwig-Maximilians-University"
			"Munich, Germany"
			(OnlyYear 2013)
			MastersThesis
			Nothing
			Published
	 )
      BasePublication)))))))))) ;
    Talks    : ListTalk = BaseTalk ;
    Skills   : ListSkill = BaseSkill ;
    
  fun
    UniGot, LMU, TCD : University ;
    PhDCS  : Position ;
    Munich : Address ;
    ErasmusDescription, PhDDescription, LicentiateDescription, MagisterDescription : EducationDescription ;
    ITZCompany, GlanosCompany, FreelancerCompany, UniGotCompany : Company ;
    ResearcherJob, SESysAdminJob, SoftwareEngineerJob, StudentAssistantJob : JobTitle ;
    UniGotJobDescription, FreelancerJobDescription, GlanosJobDescription, ITZJobDescription : JobDescription ;
    PhDDegree, LicentiateDegree, MagisterDegree : DegreeType ;
    ErasmusEducation, PhDEducation, MagisterEducation : EducationType ;
    MainSupervisor, CoSupervisor, Examiner : SupervisorRole ;
    PhDThesis, LicentiateThesis, MastersThesis: ThesisType ;
  def
    FullCV =
      NewCV
      Name
      PhDCS
      Munich
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
      Talks
      Skills ;
}
