incomplete concrete MarkdownCVI of FullCV = FullCVI ** {
  oper nlnl : Str = Prelude.BIND ++ "#(\"\\n\\n\")#" ++ Prelude.BIND;
  oper nl : Str = Prelude.BIND ++ "#(\"\\n\")#" ++ Prelude.BIND ;
  oper sp : Str = "#(chr(32))#" ;
  oper bindBracket : Str -> Str = \s -> "(" ++ Prelude.BIND ++ s ++ Prelude.BIND ++ ")" ;
  oper bindComma' : Str = Prelude.BIND ++ "," ;
  oper bindUrl : Str -> Str -> Str = \s1,s2 -> "[" ++ Prelude.BIND ++ s1 ++ Prelude.BIND ++ "](" ++ Prelude.BIND ++ s2 ++ Prelude.BIND ++ ")" ;
  lin
    -- NewAuthor : String -> String -> Author ;
    NewAuthor f l = ss (f.s ++ l.s) ;
    -- NewAddress : City -> Country -> Address ;
    NewAddress city country = cc2 city (cc2 (ss bindComma') country) ;
    -- NewEducation : EducationType -> University -> Date -> Date -> ListSupervisor -> EducationDescription -> Education ;
    NewEducation type university address startDate endDate supervisors description =
      ss (type.s ++ bindBracket (startDate.s ++ Prelude.BIND ++ "-" ++ Prelude.BIND ++ endDate.s) ++ nlnl ++
	    sp ++ university.s ++ bindBracket address.s ++ nl ++
	    if_then_Str supervisors.empty "" (sp ++ "*" ++ supervisors.s ++ nl) ++
	    sp ++ "*" ++ description.s ) ;
    -- NewSupervisor : String -> SupervisorRole -> Supervisor ;
    NewSupervisor name role =
      ss (role.s ++ Prelude.BIND ++ ":" ++ name.s) ;
    -- NewJob : JobTitle -> Company -> Address -> Date -> Date -> JobDescription -> Job ;
    NewJob title company address startDate endDate description =
      ss (title.s ++ bindBracket (startDate.s ++ Prelude.BIND ++ "-" ++ Prelude.BIND ++ endDate.s) ++ nlnl ++
	    sp ++ company.s ++ bindBracket address.s ++ nlnl ++
	    sp ++ description.s 
	    
      ) ;
    -- NewPresentation : ListAuthor -> String -> String -> Address -> Date -> PresentationType -> MaybeString -> Presentation ;
    NewPresentation speakers title venue address date type url =
      ss (speakers.s ++ bindBracket date.s  ++ Prelude.BIND ++ ": *" ++ Prelude.BIND ++ title.s ++ Prelude.BIND ++ "*," ++ venue.s ++ bindComma' ++ address.s ++ bindComma' ++ type.s ++ (if_then_Str url.empty "" (Prelude.BIND ++ ":" ++ bindUrl url.s url.s ))) ;

    NewDepartment d u = ss (d.s ++ bindComma' ++ u.s) ;
    -- JournalPublication : ListAuthor -> String -> String -> String -> Address -> Date -> String -> String -> MaybeString -> MaybeString -> MaybeString -> PublicationState -> Publication ;
    JournalPublication authors title bookTitle publisher address date series volume pages doi url status =
      ss (authors.s ++ bindBracket date.s ++ Prelude.BIND ++ ": \"" ++ Prelude.BIND ++ title.s ++ Prelude.BIND ++ "\"," ++ bookTitle.s ++ bindComma' ++ series.s ++
	    bindBracket volume.s ++ 
	    if_then_Str pages.empty "" (bindComma' ++ pages.s) ++
	    bindComma' ++ publisher.s ++ bindComma' ++ address.s ++
	    if_then_Str doi.empty "" (bindComma' ++ bindUrl doi.s ("https://doi.org/" ++ Prelude.BIND ++ doi.s)) ++
	    if_then_Str url.empty "" (bindComma' ++ bindUrl url.s url.s) ++
	    bindComma' ++ status.s ++ Prelude.BIND ++ "."
      );
    -- ConferencePublication : ListAuthor -> String -> String -> Address -> Date -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> PublicationState -> Publication ;
    ConferencePublication authors title bookTitle address date publisher series volume pages doi url status =
      ss (authors.s ++ bindBracket date.s ++ Prelude.BIND ++ ": \"" ++ Prelude.BIND ++ title.s ++ Prelude.BIND ++ "\"," ++ bookTitle.s ++ bindComma' ++ address.s ++
	    if_then_Str publisher.empty "" (bindComma' ++ publisher.s) ++
	    if_then_Str series.empty "" (bindComma' ++ series.s) ++
	    if_then_Str volume.empty "" (bindBracket volume.s) ++ 
	    if_then_Str pages.empty "" (bindComma' ++ pages.s) ++
	    if_then_Str doi.empty "" (bindComma' ++ bindUrl doi.s ("https://doi.org/" ++ Prelude.BIND ++ doi.s)) ++
	    if_then_Str url.empty "" (bindComma' ++ bindUrl url.s url.s) ++
	    bindComma' ++ status.s ++ Prelude.BIND ++ "."
      );
    -- ThesisPublication : ListAuthor -> String -> Department -> Address -> Date -> ThesisType -> MaybeString -> PublicationState -> Publication ;
    ThesisPublication authors title department address date type url status =
            ss (authors.s ++ bindBracket date.s ++ Prelude.BIND ++ ": \"" ++ Prelude.BIND ++ title.s ++ Prelude.BIND ++ "\"," ++ type.s ++ bindComma' ++ department.s ++ bindComma' ++ address.s ++
	    if_then_Str url.empty "" (bindComma' ++ bindUrl url.s url.s) ++
	    bindComma' ++ status.s ++ Prelude.BIND ++ "."
      );
    -- NewTeachingDuty : TeachingType -> CourseName -> Venue -> ListTerm -> TeachingDuty ;
    NewTeachingDuty teachingType course venue terms =
      ss (teachingType.s ++ Prelude.BIND ++ ":" ++ course.s ++ bindComma' ++ venue.s ++ bindBracket terms.s) ;
    -- NewGrant : GrantType -> String -> Address -> String -> Date -> Grant ;
    NewGrant type reason address agency date =
      ss (type.s ++ reason.s ++ bindComma' ++ address.s ++ bindComma' ++ agency.s ++ bindBracket date.s ) ;
    -- NewConferenceInvolvement : String -> String -> Address -> Date -> ConferenceInvolvement ;
    NewConferenceInvolvement position name address date =
      ss (position.s ++ bindComma' ++ name.s ++ bindComma' ++ address.s ++ bindBracket date.s ) ;
    -- NewSkill : SkillName -> SkillLevel -> Skill ;
    -- NewPeerReview : String -> Date -> PeerReview ;
    NewPeerReview conference date =
      ss (conference.s ++ bindBracket date.s) ;
    NewOtherInvolvement involvementType startDate endDate =
      ss (involvementType.s ++ bindBracket (startDate.s ++ Prelude.BIND ++ "-" ++ Prelude.BIND ++ endDate.s)) ;
    NewSkill name level =
      ss (name.s ++ Prelude.BIND ++ ":" ++ level.s) ;
    -- NewSkillCategory : Category -> ListSkill -> SkillCategory ;
    NewSkillCategory category skills =
      ss ("###" ++ category.s ++ nl ++ skills.s) ;

    -- List constructors
    ConsSkillCategory s ss = { s = s.s ++ (if_then_Str ss.empty "" (nlnl ++ ss.s )) ; empty = False };
    ConsDegree, ConsEducation, ConsJob, ConsPresentation, ConsPublication, ConsGrant, ConsConferenceInvolvement, ConsPeerReview, ConsSkill, ConsTeachingDuty, ConsOtherInvolvement = \e,es -> { s = "*" ++ e.s ++ (if_then_Str es.empty "" (nlnl ++ es.s )) ; empty = False };
    ConsSupervisor c cs =
      ss (c.s ++ (if_then_Str cs.empty "" (bindComma' ++ cs.s ))) ** { empty = False };
    BaseAuthor a = { s = a.s ; last = True } ;
    BaseDegree, BaseEducation, BaseJob, BasePresentation, BasePublication, BaseGrant, BaseConferenceInvolvement, BasePeerReview, BaseSkill, BaseSkillCategory, BaseSupervisor, BaseTeachingDuty, BaseOtherInvolvement = { s = "" ; empty = True } ;
    BaseTerm t = t ;
    ConsTerm t ts = ss (t.s ++ bindComma' ++ ts.s) ;
}
