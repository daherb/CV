concrete MarkdownCVEng of FullCV = CVEng, FullCVEng, MarkdownCVI-[DegreeType] ** open Prelude in {
  lin
  -- NewCV : String -> Position -> Address -> String -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> Date -> ListDegree -> ListEducation -> ListJob -> ListPublication -> ListPresentation -> ListGrant -> ListConferenceInvolvement -> ListPeerReview -> ListSkillCategory -> CV ;
    NewCV name position address mail website github linkedin gitlab stackoverflow twitter skype reddit lastUpdated degrees education jobs publications presentations grants confs peer skills =
      ss ("# Curriculum Vitae" ++ nlnl ++
	    "###" ++ name.s ++ " -- " ++ 
	    position.s ++ " -- " ++ 
	    address.s ++ nlnl ++
	    "---" ++ nlnl ++
	    "## Contact:" ++ nlnl ++
	    "* E-Mail:" ++ mail.s ++ nl ++
	    (if_then_Str website.empty "" ("* Homepage:" ++ bindUrl website.s website.s ++ nl )) ++
	    (if_then_Str github.empty "" ("* Github:" ++ bindUrl github.s ("https://github.com/" ++ Prelude.BIND ++ github.s) ++ nl )) ++
	    (if_then_Str linkedin.empty "" ("* LinkedIn:" ++ bindUrl linkedin.s linkedin.s ++ nl )) ++ 
	    (if_then_Str gitlab.empty "" ("* Gitlab:" ++ bindUrl gitlab.s ("https://gitlab,com/" ++ Prelude.BIND ++ gitlab.s) ++ nl )) ++ 
	    (if_then_Str stackoverflow.empty "" ("* StackOverflow:" ++ bindUrl stackoverflow.s stackoverflow.s ++ nl )) ++ 
	    (if_then_Str twitter.empty "" ("* Twitter:" ++ bindUrl ("\\" ++ Prelude.BIND ++ twitter.s) ("https://twitter.com/" ++ Prelude.BIND ++ twitter.s) ++ nl )) ++ 
	    (if_then_Str skype.empty "" ("* Skype: " ++ Prelude.BIND ++ skype.s ++ nl )) ++
	    (if_then_Str reddit.empty "" ("* Reddit: " ++ bindUrl reddit.s ("https://reddit.com/user/" ++ Prelude.BIND ++ reddit.s) ++ nl)) ++ nl ++
	    "---" ++ nlnl ++
	    "## University Degrees" ++ nlnl ++
	    degrees.s ++ nlnl ++
	    "---" ++ nlnl ++
	    "## University Education" ++ nlnl ++
	    education.s ++ nlnl ++
	    "## Work Experience" ++ nlnl ++
	    jobs.s ++ nlnl ++
	    "## Scientific Publications" ++ nlnl ++
	    publications.s ++ nlnl ++
	    "## Talks and Presentations" ++ nlnl ++
	    presentations.s ++ nlnl ++
	    "## Grants" ++ nlnl ++
	    grants.s ++ nlnl ++
	    "## Conference Involvement" ++ nlnl ++
	    confs.s ++ nlnl ++
	    "## Peer Review" ++ nlnl ++
	    peer.s ++ nlnl ++
	    "## Skill" ++ nlnl ++
	    "Five levels: Basic knowledge (1), Basic experience (2), Professional experience (3), Expert (4),  Guru (5)" ++ nlnl ++
	    skills.s ++ nlnl ++
	    -- Footer
	    "---" ++ nlnl ++
	    "Last update:" ++ lastUpdated.s ++ nlnl ++
	    "Generated using [Grammatical Framework](https://www.grammaticalframework.org/) and [Pandoc](https://pandoc.org/) ([Source](https://github.com/daherb/CV/))"
      ) ;

    -- ConsAuthor : Author -> AuthorList -> AuthorList
    ConsAuthor a as =
      { s = a.s ++ (case as.last of { True => "and" ; False => bindComma' }) ++ as.s ; last = False } ;

    -- NewDegree : DegreeType -> University -> Address -> Date -> String -> Degree ;
    NewDegree degree university address date thesisTitle =
      ss (degree.s ++ bindBracket date.s ++ nlnl ++
	    sp ++ university.s ++ bindBracket address.s ++ nlnl ++
	    sp ++ "Thesis: \"" ++ Prelude.BIND ++ thesisTitle.s ++ Prelude.BIND ++ "\"" );
}
