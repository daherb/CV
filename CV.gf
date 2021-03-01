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
      -> ListEducation -> ListJob -> ListTalk -> ListSkill -> CV ;
    NewEducation : EducationType 
      -> University
      -> Date -- Start date
      -> Date -- End date
      -> [Supervisor]
      -> [Degree]
      -> EducationDescription
      -> Education ;
    NewDegree : DegreeType
      -> Date
      -> String -- Thesis title
      -> Degree ;
    NewJob : JobTitle
      -> Company
      -> Date -- Start date
      -> Date -- End date
      -> JobDescription
      -> Job ;
    NewSupervisor : String -> SupervisorRole -> Supervisor ;
    MonthYear : Month -> Int -> Date ;
    OnlyYear : Int -> Date ;
    January, February, March, April, May, June, July, August, September, October, November, December : Month ;
    FullCV : CV ;
}
