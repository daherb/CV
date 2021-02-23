abstract FullCV = CV ** {
  fun
    UniGot, LMU : University ;
    PhDCS  : Position ;
    Munich : Address ;
  oper
    Name          : String = "Herbert Lange" ;
--    Position      : String = "" ;
    Mail          : String = "herbert.lange@gmail.com" ;
    Webpage       : MaybeString = Just "http://www.cse.chalmers.se/~langeh/" ;
    Github        : MaybeString = Just "daherb" ;
    Linkedin      : MaybeString = Just "https://www.linkedin.com/in/herbert-lange-2474638a/" ;
    Gitlab        : MaybeString = Nothing ;
    StackOverflow : MaybeString = Nothing ;
    Twitter       : MaybeString = Just "@pietaetskirsche" ;
    Skype         : MaybeString = Nothing ;
    Reddit        : MaybeString = Nothing ;
    LastUpdated   : Date = MonthYear February 2021 ;
    Degrees  : ListDegree = (ConsDegree (NewDegree PhD UniGot (MonthYear September 2020) (ConsSupervisor (NewSupervisor "Peter Ljunglöf" MainSupervisor) (ConsSupervisor (NewSupervisor "Koen Claessen" CoSupervisor) (BaseSupervisor (NewSupervisor "Aarne Ranta" Examinor)))) "")
      (ConsDegree (NewDegree Licentiate UniGot (MonthYear September 2018) (ConsSupervisor (NewSupervisor "Peter Ljunglöf" MainSupervisor) (ConsSupervisor (NewSupervisor "Koen Claessen" CoSupervisor) (BaseSupervisor (NewSupervisor "Aarne Ranta" Examinor)))) "")
      (ConsDegree (NewDegree Magister LMU (MonthYear July 2020) (BaseSupervisor (NewSupervisor "Hans Leiss" MainSupervisor)) "")
	 BaseDegree))) ;
    Jobs     : ListJob = BaseJob ;
    Talks    : ListTalk = BaseTalk ;
    Skills   : ListSkill = BaseSkill ;
  def
    
    FullCV =
      NewCV
      "Herbert Lange"
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
      Jobs
      Talks
      Skills ;
}
