abstract FullCV = CV ** {
  oper
    Name          : String = "Herbert Lange" ;
--    Position      : String = "" ;
    Mail          : String = "*redacted*" ;
    Webpage       : MaybeString = Just "http://www.cse.chalmers.se/~langeh/" ;
    Github        : MaybeString = Just "daherb" ;
    Linkedin      : MaybeString = Just "https://www.linkedin.com/in/herbert-lange-2474638a/" ;
    Gitlab        : MaybeString = Nothing ;
    StackOverflow : MaybeString = Nothing ;
    Twitter       : MaybeString = Just "@pietaetskirsche" ;
    Skype         : MaybeString = Nothing ;
    Reddit        : MaybeString = Nothing ;
    LastUpdated   : Date = MonthYear March 2021 ;
    Educations     : ListEducation =
      (ConsEducation (NewEducation PhDEducation UniGot {- University of Gothenburg -}
			(MonthYear August 2015) (MonthYear September 2020)
			(ConsSupervisor (NewSupervisor "Peter Ljunglöf" MainSupervisor)
			(ConsSupervisor (NewSupervisor "Koen Claessen" CoSupervisor)
			(ConsSupervisor (NewSupervisor "Aarne Ranta" Examiner) BaseSupervisor)))
			(ConsDegree (NewDegree PhDDegree (MonthYear September 2020) "Learning Language (with) Grammars: From Teaching Latin to Learning Domain-Specific Grammars")
			(ConsDegree (NewDegree LicentiateDegree (MonthYear September 2018) "Computer-Assisted Language Learning with Grammars. A Case Study on Latin Learning") BaseDegree))
			PhDDescription)
      (ConsEducation (NewEducation ErasmusEducation TCD {- Trinity College Dublin -}
			(MonthYear October 2010) (MonthYear May 2011)
			BaseSupervisor
			BaseDegree
			ErasmusDescription)
      (ConsEducation (NewEducation MagisterEducation LMU {- Ludwig-Maximilians-University Munich -}
			(MonthYear October 2008) (MonthYear July 2014)
			(ConsSupervisor (NewSupervisor "Hans Leiss" MainSupervisor) BaseSupervisor)
			(ConsDegree (NewDegree MagisterDegree (MonthYear July 2014) "Implementierung einer Lateingrammatik im Grammatical Framework") BaseDegree)
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
      Educations
      Jobs
      Talks
      Skills ;
}
