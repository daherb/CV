concrete MarkdownCVEng of FullCV = CVEng, FullCVEng, MarkdownCVI-[DegreeType] ** open Prelude in {
  lin
    -- NewCV : String -- Name
    -- -> Position
    -- -> Address
    -- -> String -- Mail
    -- -> MaybeString -- Webpage
    -- -> MaybeString -- Github
    -- -> MaybeString -- LinkedIn
    -- -> MaybeString -- Gitlab
    -- -> MaybeString -- StackOverflow
    -- -> MaybeString -- Twitter
    -- -> MaybeString -- Skype
    -- -> MaybeString -- Reddit
    -- -> Date -- LastUpdated
    -- -> ListDegree -> ListEducation -> ListJob -> ListPublication -> ListPresentation -> ListTeachingDuty -> ListGrant -> ListConferenceInvolvement -> ListPeerReview -> ListOtherInvolvement -> ListSkillCategory -> CV ;
    NewCV name position address mail website github linkedin gitlab stackoverflow twitter skype reddit lastUpdated degrees education jobs publications presentations teachings grants confs peer involvements skills =
      ss ("# Curriculum Vitae" ++ nlnl ++
	    "###" ++ name.s ++ " -- " ++ 
	    position.s1 ++ " -- " ++ if_then_Str position.emptys2 "" (position.s2 ++ " -- ") ++ 
	    address.s ++ nlnl ++
	    "---" ++ nlnl ++
	    "## Contact:" ++ nlnl ++
	    "* E-Mail:" ++ mail.s ++ nl ++
	    (if_then_Str website.empty "" ("* Homepage:" ++ bindUrl website.s website.s ++ nl )) ++
	    (if_then_Str github.empty "" ("* Github:" ++ bindUrl github.s ("https://github.com/" ++ Prelude.BIND ++ github.s) ++ nl )) ++
	    (if_then_Str linkedin.empty "" ("* LinkedIn:" ++ bindUrl linkedin.s ("https://www.linkedin.com/in/" ++ Prelude.BIND ++ linkedin.s) ++ nl )) ++ 
	    (if_then_Str gitlab.empty "" ("* Gitlab:" ++ bindUrl gitlab.s ("https://gitlab,com/" ++ Prelude.BIND ++ gitlab.s) ++ nl )) ++ 
	    (if_then_Str stackoverflow.empty "" ("* StackOverflow:" ++ bindUrl stackoverflow.s stackoverflow.s ++ nl )) ++ 
	    (if_then_Str twitter.empty "" ("* Twitter:" ++ bindUrl ("\\" ++ Prelude.BIND ++ twitter.s) ("https://twitter.com/@" ++ Prelude.BIND ++ twitter.s) ++ nl )) ++ 
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
	    "## Teaching experience" ++ nlnl ++
	    teachings.s ++ nlnl ++
	    "## Grants" ++ nlnl ++
	    grants.s ++ nlnl ++
	    "## Conference Involvement" ++ nlnl ++
	    confs.s ++ nlnl ++
	    "## Peer Review" ++ nlnl ++
	    peer.s ++ nlnl ++
	    "## Other Involvements" ++ nlnl ++
	    involvements.s ++ nlnl ++
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
    
    -- ProceedingsPublication : ListAuthor -> String -> String -> Address -> Date -> String -> String -> (Maybe String) -> (Maybe String) -> PublicationState -> Publication ;
    ProceedingsPublication editors bookTitle publisher address date series volume pages doi status =
      ss (bookTitle.s ++ bindBracket date.s ++ Prelude.BIND ++ ";" ++ editors.s ++ "(eds.)" ++ bindComma' ++
	    publisher.s ++ bindComma' ++ address.s ++ bindComma' ++ series.s ++ bindBracket volume.s ++
	    if_then_Str pages.empty "" (bindComma' ++ pages.s ++  "pages") ++
	    if_then_Str doi.empty "" (bindComma' ++ bindUrl doi.s ("https://doi.org/" ++ Prelude.BIND ++ doi.s)) ++
	    bindComma' ++ status.s ++ Prelude.BIND ++ ".") ;

    -- NewDegree : DegreeType -> University -> Address -> Date -> String -> Degree ;
    NewDegree degree university address date thesisTitle =
      ss (degree.s ++ bindBracket date.s ++ nlnl ++
	    sp ++ university.s ++ bindBracket address.s ++ nlnl ++
	    sp ++ "Thesis: \"" ++ Prelude.BIND ++ thesisTitle.s ++ Prelude.BIND ++ "\"" );
}
