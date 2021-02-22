abstract CV = {
  cat CV ; -- The complete CV
      Date ;
      Degree ;
      Job ;
      Publication ;
      Talk ;
      Skill ;
      [Degree]{0} ;
      [Job]{0} ;
      [Talk]{0} ;
      [Skill]{0} ;
      DegreeType ;
      Month ;
      University ;
      Supervisor ;
      [Supervisor]{1} ;
      Role ;
      MaybeString ;
  fun
    Nothing : MaybeString ;
    Just : String -> MaybeString ;
    NewCV : String -- Name
      -> String -- Position
      -> String -- Address
      -> String -- Mail
      -> MaybeString -- Webpage
      -> MaybeString -- Github
      -> MaybeString -- LinkedIn
      -> MaybeString -- Gitlab
      -> MaybeString -- StackOverflow
      -> MaybeString -- Twitter
      -> MaybeString -- Skype
      -> MaybeString -- Reddit
      -> [Degree] -> [Job] -> [Talk] -> [Skill] -> CV ;
    NewDegree : DegreeType -> University -> Date -> [Supervisor] -> String -> Degree ;
    NewSupervisor : String -> Role -> Supervisor ;
    MonthYear : Month -> Int -> Date ;
    January, February, March, April, May, June, July, August, September, October, November, December : Month ;
    PhD, Licentiate, Magister : DegreeType ;
    MainSupervisor, CoSupervisor, Examinor : Role ;
    FullCV : CV ;
}
