abstract CV = {
  cat CV ; -- The complete CV
      Address ;
      City ;
      Country ;
      Position ;
      Date ;
      Degree ;
      Education ;
      Job ;
      Publication ;
      Presentation ;
      TeachingDuty;
      Grant ;
      ConferenceInvolvement ;
      PeerReview ;
      OtherInvolvement ;
      InvolvementType ;
      SkillCategory ;
      Skill ;
      [Education]{0} ;
      [Degree]{0} ;
      [Job]{0} ;
      [Publication]{0} ;
      [Presentation]{0} ;
      [TeachingDuty]{0};
      [Grant]{0} ;
      [ConferenceInvolvement]{0} ;
      [PeerReview]{0} ;
      [OtherInvolvement]{0};
      [SkillCategory]{0} ;
      [Skill]{0} ;
      [Term]{1};
      DegreeType ;
      EducationType ;
      EducationDescription ;
      Month ;
      University ;
      Department ;
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
      PresentationType ;
      TeachingType;
      CourseName;
      Term;
      Semester;
      Venue ;
      GrantType ;
      Category ;
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
      -> MaybeString -- Mastodon
      -> MaybeString -- Skype
      -> MaybeString -- Reddit
      -> Date -- LastUpdated
      -> ListDegree -> ListEducation -> ListJob -> ListPublication -> ListPresentation -> ListTeachingDuty -> ListGrant -> ListConferenceInvolvement -> ListPeerReview -> ListOtherInvolvement -> ListSkillCategory -> CV ;
    NewAddress : City
      -> Country
      -> Address ;
    NewEducation : EducationType 
      -> University
      -> Address
      -> Date -- Start date
      -> Date -- End date
      -> [Supervisor]
--      -> [Degree]
      -> EducationDescription
      -> Education ;
    NewDegree : DegreeType
      -> University
      -> Address
      -> Date
      -> String -- Thesis title
      -> Degree ;
    NewJob : JobTitle
      -> Company
      -> Address
      -> Date -- Start date
      -> Date -- End date
      -> JobDescription
      -> Job ;
    ConferencePublication : ListAuthor
      -> String -- Title
      -> String -- Book title
      -> Address
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
      -> Address
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
      -> Department
      -> Address
      -> Date
      -> ThesisType
      -> MaybeString -- Url
      -> PublicationState
      -> Publication ;
    NewDepartment : String -- Department name
      -> University
      -> Department ;
    ProceedingsPublication : ListAuthor -- Editors
      -> String -- Book title
      -> String -- Publisher
      -> Address
      -> Date
      -> String -- Series
      -> String -- Volume
      -> MaybeString -- Pages
      -> MaybeString -- DOI
      -> PublicationState
      -> Publication ;
    BookChapterPublication : ListAuthor
      -> String -- Title
      -> String -- Book title
      -> Address
      -> Date
      -> MaybeString -- Publisher
      -> MaybeString -- Series
      -> MaybeString -- Volume (Issue)
      -> MaybeString -- Pages
      -> MaybeString -- DOI
      -> MaybeString -- Url
      -> PublicationState
      -> Publication ;
    NewPresentation : ListAuthor -- Speaker
      -> String -- Title
      -> String -- Venue
      -> Address
      -> Date
      -> PresentationType
      -> MaybeString -- Url
      -> Presentation ;
    NewTeachingDuty : TeachingType
      -> CourseName
      -> Venue
      -> ListTerm
      -> TeachingDuty ;
    NewTerm : Semester
      -> Date
      -> Term ;
    NewGrant : GrantType
      -> String -- Reason
      -> Address
      -> String -- Funding unit
      -> Date
      -> Grant ;
    NewConferenceInvolvement : String -- Position
      -> String -- Conference
      -> Address
      -> Date
      -> ConferenceInvolvement ;
    NewPeerReview : String -- Conference
      -> Date
      -> PeerReview ;
    NewOtherInvolvement : InvolvementType
      -> Date
      -> Date
      -> OtherInvolvement ;
    NewSkillCategory : Category
      -> ListSkill
      -> SkillCategory ;
    NewSkill : SkillName 
      -> SkillLevel -- Ranking 1 to 5, see below
      -> Skill ;
    Published, Forthcoming : PublicationState ;
    BasicKnowledge {- 1 -}, BasicExperience {- 2 -}, ProfessionalExperience {- 3 -}, Expert {- 4 -}, Guru {- 5 -} : SkillLevel ;
    NewSupervisor : String -> SupervisorRole -> Supervisor ;
    NewAuthor : String -- First name
      -> String -- Last name
      -> Author ;
    NewDate: Int -> Month -> Int -> Date ;
    MonthYear : Month -> Int -> Date ;
    OnlyYear : Int -> Date ;
    Now : Date ;
    UniVenue : University
      -> Venue ;
    CompanyVenue : Company
      -> Venue ;
    January, February, March, April, May, June, July, August, September, October, November, December : Month ;
    Spring, Autumn, Summer, NoSemester : Semester ;
    FullCV : CV ;
}
