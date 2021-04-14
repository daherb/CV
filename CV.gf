abstract CV = {
  cat CV ; -- The complete CV
      Address ;
      Position ;
      Date ;
      Degree ;
      Education ;
      Job ;
      Publication ;
      Talk ;
      Skill ;
      [Education]{0} ;
      [Degree]{0} ;
      [Job]{0} ;
      [Publication]{0} ;
      [Talk]{0} ;
      [Skill]{0} ;
      DegreeType ;
      EducationType ;
      EducationDescription ;
      Month ;
      University ;
      Supervisor ;
      [Supervisor]{0} ;
      SupervisorRole ;
      JobTitle ;
      Company ;
      JobDescription ;
      Author ;
      [Author]{1} ;
      ThesisType ;
      PublicationState ;
      SkillName ;
      SkillLevel ;
      MaybeString ;
  fun
    Nothing : MaybeString ;
    Just : String -> MaybeString ;
    NewCV : String -- Name
      -> Position
      -> Address
      -> String -- Mail
      -> MaybeString -- Webpage
      -> MaybeString -- Github
      -> MaybeString -- LinkedIn
      -> MaybeString -- Gitlab
      -> MaybeString -- StackOverflow
      -> MaybeString -- Twitter
      -> MaybeString -- Skype
      -> MaybeString -- Reddit
      -> Date -- LastUpdated
      -> ListDegree -> ListEducation -> ListJob -> ListPublication -> ListTalk ->  ListSkill -> CV ;
    NewEducation : EducationType 
      -> University
      -> Date -- Start date
      -> Date -- End date
      -> [Supervisor]
--      -> [Degree]
      -> EducationDescription
      -> Education ;
    NewDegree : DegreeType
      -> University
      -> Date
      -> String -- Thesis title
      -> Degree ;
    NewJob : JobTitle
      -> Company
      -> Date -- Start date
      -> Date -- End date
      -> JobDescription
      -> Job ;
    ConferencePublication : ListAuthor
      -> String -- Title
      -> String -- Book title
      -> String -- Address
      -> Date
      -> MaybeString -- Publisher
      -> MaybeString -- Series
      -> MaybeString -- Volume
      -> MaybeString -- Pages
      -> MaybeString -- DOI
      -> MaybeString -- Url
      -> PublicationState
      -> Publication ;
    JournalPublication : ListAuthor
      -> String -- Title
      -> String -- Book title
      -> String -- Publisher
      -> String -- Address
      -> Date
      -> String -- Series
      -> String -- Volume
      -> MaybeString -- Pages
      -> MaybeString -- DOI
      -> MaybeString -- Url
      -> PublicationState
      -> Publication ;
    ThesisPublication : ListAuthor
      -> String -- Title
      -> String -- School
      -> String -- Address
      -> Date
      -> ThesisType
      -> MaybeString -- Url
      -> PublicationState
      -> Publication ;
    
    NewSkill : SkillName 
      -> SkillLevel -- Ranking 1 to 5, see below
      -> Skill ;
    Published, Forthcoming : PublicationState ;
    BasicKnowledge {- 1 -}, BasicExperience {- 2 -}, ProfessionalExperience {- 3 -}, Expert {- 4 -}, Guru {- 5 -} : SkillLevel ;
    NewSupervisor : String -> SupervisorRole -> Supervisor ;
    NewAuthor : String -- First name
      -> String -- Last name
      -> Author ;
    MonthYear : Month -> Int -> Date ;
    OnlyYear : Int -> Date ;
    January, February, March, April, May, June, July, August, September, October, November, December : Month ;
    FullCV : CV ;
}
