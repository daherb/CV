incomplete concrete LatexCVI of FullCV = PredefCnc ** open FullCV, Prelude, Predef in {
  oper nl : Str = Prelude.BIND ++ "#(\"\\n\")#" ++ Prelude.BIND ;
  oper bindSurround : Str -> Str -> Str -> Str = \pres,s,posts -> pres ++ Prelude.BIND ++ s ++ Prelude.BIND ++ posts ;
  oper bindBracket : Str -> Str = \s -> bindSurround "(" s ")" ;
  oper bindComma' : Str = Prelude.BIND ++ "," ;
  oper bindUrl : Str -> Str -> Str = \s1,s2 -> "[" ++ Prelude.BIND ++ s1 ++ Prelude.BIND ++ "](" ++ Prelude.BIND ++ s2 ++ Prelude.BIND ++ ")" ;
  lincat
    Company, University = { s : Str ; hasicon : Bool ; icon : Str };
  lin

    -- NewAuthor : String -> String -> Author ;
    NewAuthor f l = ss (f.s ++ l.s) ;

    -- NewAddress : City -> Country -> Address ;
    NewAddress city country = cc2 city (cc2 (ss bindComma') country) ;

    -- NewEducation : EducationType -> University -> Date -> Date -> ListSupervisor -> EducationDescription -> Education ;
    NewEducation type university address startDate endDate supervisors description =

      ss ("\\cventry" ++ nl ++
	    bindSurround "{" type.s "} % Degree" ++ nl ++
	    bindSurround "{"
	    (if_then_Str university.hasicon (bindSurround "\\adjustbox{valign=t}{\\includegraphics[width=30px]{" university.icon "}}") "" ++ university.s)
	    "} % Institution" ++ nl ++
	    bindSurround "{" address.s "} % Location" ++ nl ++
	    bindSurround "{" (startDate.s ++ "--" ++ endDate.s) "} % Date(s)" ++ nl ++
	    "{" ++ nl ++
	    if_then_Str supervisors.empty "" 
	    ("\\begin{cvitems} % Description(s) bullet points" ++ nl ++
	       supervisors.s ++ nl ++
	       "\\end{cvitems}" ++ nl
	    ) ++
	    "}" ++ nl
      );
    
    -- NewSupervisor : String -> SupervisorRole -> Supervisor ;
    NewSupervisor name role =
      ss ("\\item" ++ role.s ++ Prelude.BIND ++ ":" ++ name.s ) ;

    -- NewJob : JobTitle -> Company -> Address -> Date -> Date -> JobDescription -> Job ;
    NewJob title company address startDate endDate description =
      ss ("\\cventry" ++ nl ++
	    bindSurround "{" title.s "} % Degree" ++ nl ++
	    bindSurround "{" 
	    (if_then_Str company.hasicon (bindSurround "\\adjustbox{valign=t}{\\includegraphics[width=30px]{" company.icon "}}") "" ++ company.s)
	    "} % Institution" ++ nl ++
	    -- bindSurround "{" 
	    --company.s
	    --"} % Institution" ++ nl ++
	    bindSurround "{" address.s "} % Location" ++ nl ++
	    bindSurround "{" (startDate.s ++ "--" ++ endDate.s) "} % Date(s)" ++ nl ++
	    "{" ++ nl ++
	    description.s ++ nl ++
	    "}" ++ nl
      );
    
    -- NewPresentation : ListAuthor -> String -> String -> Address -> Date -> PresentationType -> MaybeString -> Presentation ;
    NewPresentation speakers title venue address date type url =
      ss (bindSurround "\\cvpub{"
	    (speakers.s ++ bindBracket date.s  ++ Prelude.BIND ++ ": ``" ++ Prelude.BIND ++ title.s ++ Prelude.BIND ++ "''," ++
	       venue.s ++ bindComma' ++ address.s ++ bindComma' ++ type.s ++
	       (if_then_Str url.empty "" (Prelude.BIND ++ ":" ++ bindSurround "\\url{" url.s "}"))
	    )
	    "}" ++ nl
      );

    NewDepartment d u = ss (d.s ++ bindComma' ++ u.s) ;
    -- JournalPublication : ListAuthor -> String -> String -> String -> Address -> Date -> String -> String -> MaybeString -> MaybeString -> MaybeString -> PublicationState -> Publication ;
    JournalPublication authors title bookTitle publisher address date series volume pages doi url status =
      ss (bindSurround "\\cvpub{"
	    (authors.s ++ bindBracket date.s ++ Prelude.BIND ++ ": ``" ++ Prelude.BIND ++ title.s ++ Prelude.BIND ++ "''," ++ bookTitle.s ++ bindComma' ++ series.s ++
	       bindBracket volume.s ++ 
	       if_then_Str pages.empty "" (bindComma' ++ pages.s) ++
	       bindComma' ++ publisher.s ++ bindComma' ++ address.s ++
	       if_then_Str doi.empty "" (bindComma' ++ bindSurround "\\url{https://doi.org/" doi.s "}") ++
	       if_then_Str url.empty "" (bindComma' ++ bindSurround "\\url{" url.s "}") ++
	       bindComma' ++ status.s ++ Prelude.BIND ++ "."
	    )
	    "}" ++ nl
      );
    
    -- ConferencePublication : ListAuthor -> String -> String -> Address -> Date -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> PublicationState -> Publication ;
    ConferencePublication authors title bookTitle address date publisher series volume pages doi url status =
      ss (bindSurround "\\cvpub{"
	    (authors.s ++ bindBracket date.s ++ Prelude.BIND ++ ": ``" ++ Prelude.BIND ++ title.s ++ Prelude.BIND ++ "'', in " ++ bookTitle.s ++ bindComma' ++ address.s ++
	       if_then_Str publisher.empty "" (bindComma' ++ publisher.s) ++
	       if_then_Str series.empty "" (bindComma' ++ series.s) ++
	       if_then_Str volume.empty "" (bindBracket volume.s) ++ 
	       if_then_Str pages.empty "" (bindComma' ++ pages.s) ++
	       if_then_Str doi.empty "" (bindComma' ++ bindSurround "\\url{https://doi.org/" doi.s "}") ++
	       if_then_Str url.empty "" (bindComma' ++ bindSurround "\\url{" url.s "}") ++
	       bindComma' ++ status.s ++ Prelude.BIND ++ "."
	    )
	    "}" ++ nl
      );
    
    -- ThesisPublication : ListAuthor -> String -> Department -> Address -> Date -> ThesisType -> MaybeString -> PublicationState -> Publication ;
    ThesisPublication authors title department address date type url status =
      ss (bindSurround "\\cvpub{"
	    (authors.s ++ bindBracket date.s ++ Prelude.BIND ++ ": ``" ++ Prelude.BIND ++ title.s ++ Prelude.BIND ++ "''," ++ type.s ++ bindComma' ++
	       department.s ++ bindComma' ++ address.s ++
	       if_then_Str url.empty "" (bindComma' ++ bindSurround "\\url{" url.s "}") ++
	       bindComma' ++ status.s ++ Prelude.BIND ++ "."
	    )
	    "}" ++ nl
      );

    -- BookChapterPublication : ListAuthor -> String -> String -> Address -> Date -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> PublicationState -> Publication ;
    BookChapterPublication authors title bookTitle address date publisher series volume pages doi url status =
      ss (bindSurround "\\cvpub{"
	    (authors.s ++ bindBracket date.s ++ Prelude.BIND ++ ": ``" ++ Prelude.BIND ++ title.s ++ Prelude.BIND ++ "'', in " ++ bookTitle.s ++ bindComma' ++ series.s ++
	       bindBracket volume.s ++ 
	       if_then_Str pages.empty "" (bindComma' ++ pages.s) ++
	       bindComma' ++ publisher.s ++ bindComma' ++ address.s ++
	       if_then_Str doi.empty "" (bindComma' ++ bindSurround "\\url{https://doi.org/" doi.s "}") ++
	       if_then_Str url.empty "" (bindComma' ++ bindSurround "\\url{" url.s "}") ++
	       bindComma' ++ status.s ++ Prelude.BIND ++ "."
	    )
	    "}" ++ nl
      );
    -- NewTeachingDuty : TeachingType -> CourseName -> Venue -> ListTerm -> TeachingDuty ;
    NewTeachingDuty teachingType course venue terms =
      ss ("\\cventry" ++ nl ++
	    bindSurround "{" venue.s "}" ++ nl ++
	    bindSurround "{" course.s "}" ++ nl ++
	    bindSurround "{" teachingType.s "}" ++ nl ++
	    "{}" ++ nl ++
	    bindSurround "{" terms.s "}" ++ nl
      ) ;

    -- NewGrant : GrantType -> String -> Address -> String -> Date -> Grant ;
    NewGrant type reason address agency date =
      ss ("\\cvhonor" ++ nl ++
	    bindSurround "{" ( reason.s ++ bindComma' ++ address.s ) "}" ++ nl ++
	    bindSurround "{" ("\\newline" ++ nl ++ type.s ++ bindComma' ++ agency.s) "}" ++ nl ++
	    "{}" ++ nl ++
	    bindSurround "{" date.s "}" ++ nl
      ) ;
    
    -- NewConferenceInvolvement : String -> String -> Address -> Date -> ConferenceInvolvement ;
    NewConferenceInvolvement position name address date =
      ss ("\\cvhonor" ++
	    bindSurround "{" name.s "}" ++ nl ++
	    bindSurround "{" position.s "}" ++ nl ++
	    bindSurround "{" address.s "}" ++ nl ++
	    bindSurround "{" date.s "}" ++ nl
      ) ;
      
    -- NewSkill : SkillName -> SkillLevel -> Skill ;
    NewSkill name level =
      ss ("\\cvskill" ++ nl ++
	    "{}" ++ nl ++
	    bindSurround "{" name.s "}" ++ nl ++
	    bindSurround "{" level.s "}" ++ nl
      ) ;
    
      -- NewPeerReview : String -> Date -> PeerReview ;
    NewPeerReview conference date =
      ss ("\\cvhonor" ++
	    bindSurround "{" conference.s "}" ++ nl ++
	    "{}" ++ nl ++
	    "{}" ++ nl ++
	    bindSurround "{" date.s "}" ++ nl
      ) ;
    
    -- NewOtherInvolvement : InvolvementType -> Date -> Date -> OtherInvolvement ;
    NewOtherInvolvement involvementType startDate endDate =
      ss ("\\cvhonor" ++
	    bindSurround "{" involvementType.s "}" ++ nl ++
	    "{}" ++ nl ++
	    "{}" ++ nl ++
	    bindSurround "{" (startDate.s ++ "--" ++ endDate.s) "}" ++ nl
      ) ;

    -- NewSkillCategory : Category -> ListSkill -> SkillCategory ;
    NewSkillCategory category skills =
      ss (bindSurround "\\cvsubsection{" category.s "}" ++ nl ++
	    "\\begin{cvskills}" ++ nl ++
	    skills.s ++ nl ++
	    "\\end{cvskills}" ++ nl
      ) ;

    -- List constructors
    ConsSkillCategory s ss = { s = s.s ++ (if_then_Str ss.empty "" (nl ++ ss.s )) ; empty = False };
    ConsDegree, ConsEducation, ConsJob, ConsPresentation, ConsPublication, ConsGrant, ConsConferenceInvolvement, ConsPeerReview, ConsSkill, ConsTeachingDuty, ConsOtherInvolvement = \e,es -> { s = e.s ++ (if_then_Str es.empty "" (nl ++ es.s )) ; empty = False };
    ConsSupervisor c cs =
      ss (c.s ++ (if_then_Str cs.empty "" (nl ++ cs.s ))) ** { empty = False };
    BaseAuthor a = { s = a.s ; last = True } ;
    BaseDegree, BaseEducation, BaseJob, BasePresentation, BasePublication, BaseGrant, BaseConferenceInvolvement, BasePeerReview, BaseSkill, BaseSkillCategory, BaseSupervisor, BaseTeachingDuty, BaseOtherInvolvement = { s = "" ; empty = True } ;
    BaseTerm t = t ;
    ConsTerm t ts = ss (t.s ++ bindComma' ++ ts.s) ;

    FreelancerCompany = { s = FullCV.FreelancerCompany.s ; icon = "" ; hasicon = False } ;
    GermanistikLMUCompany  = { s = FullCV.GermanistikLMUCompany.s ; icon = "icons/lmu.png" ; hasicon = True} ;
    GlanosCompany  = { s = FullCV.GlanosCompany.s ; icon = "icons/glanos.png" ; hasicon = True} ;
    IDSCompany  = { s = FullCV.IDSCompany.s ; icon = "icons/ids.png" ; hasicon = True} ;
    ITZCompany  = { s = FullCV.ITZCompany.s ; icon = "icons/lmu.png" ; hasicon = True} ;
    LMU = { s = FullCV.LMU.s ; icon = "icons/lmu.png" ; hasicon = True} ;
    TCD = { s = FullCV.TCD.s ; icon = "icons/tcd.jpg" ; hasicon = True} ;
    UniGot = { s = FullCV.UniGot.s ; icon = "icons/gu.png" ; hasicon = True} ;
    UniHH = { s = FullCV.UniHH.s ; icon = "icons/unihh.jpg" ; hasicon = True} ;
    UniCompany u = u ;
    UniVenue u = ss u.s;
    CompanyVenue c = ss c.s;
}
