concrete MarkdownCVGer of FullCV = CVGer, FullCVGer, MarkdownCVI-[DegreeType] ** open Prelude in {
  lin
  -- NewCV : String -> Position -> Address -> String -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> MaybeString -> Date -> ListDegree -> ListEducation -> ListJob -> ListPublication -> ListPresentation -> ListGrant -> ListConferenceInvolvement -> ListPeerReview -> ListSkillCategory -> CV ;
    NewCV name position address mail website github linkedin gitlab stackoverflow twitter skype reddit lastUpdated degrees education jobs publications presentations grants confs peer skills =
      ss ("# Lebenslauf" ++ nlnl ++
	    "###" ++ name.s ++ " -- " ++ 
	    position.s ++ " -- " ++ 
	    address.s ++ nlnl ++
	    "---" ++ nlnl ++
	    "## Kontakt:" ++ nlnl ++
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
	    "## Universitätsabschlüsse" ++ nlnl ++
	    degrees.s ++ nlnl ++
	    "---" ++ nlnl ++
	    "## Universitäre Ausbildung" ++ nlnl ++
	    education.s ++ nlnl ++
	    "## Beruflicher Werdegang" ++ nlnl ++
	    jobs.s ++ nlnl ++
	    "## Wissenschaftliche Veröffentlichungen" ++ nlnl ++
	    publications.s ++ nlnl ++
	    "## Vorträge und Präsentationen" ++ nlnl ++
	    presentations.s ++ nlnl ++
	    "## Stipendien" ++ nlnl ++
	    grants.s ++ nlnl ++
	    "## Konferenzbeteiligung" ++ nlnl ++
	    confs.s ++ nlnl ++
	    "## Peer Review" ++ nlnl ++
	    peer.s ++ nlnl ++
	    "## Fertigkeiten" ++ nlnl ++
	    "Fünf Stufen: Grundlegendes Wissen (1), Grundlegende Erfahrung (2), Professionelle Erfahrung (3), Experte (4),  Guru (5)" ++ nlnl ++
	    skills.s ++ nlnl ++
	    -- Footer
	    "---" ++ nlnl ++
	    "Letzte Aktualisierung:" ++ lastUpdated.s ++ nlnl ++
	    "Erzeugt mit [Grammatical Framework](https://www.grammaticalframework.org/) und [Pandoc](https://pandoc.org/) ([Quelle](https://github.com/daherb/CV/))"
      ) ;

    -- ConsAuthor : Author -> AuthorList -> AuthorList
    ConsAuthor a as =
      { s = a.s ++ (case as.last of { True => "und" ; False => bindComma' }) ++ as.s ; last = False } ;
    
    -- ProceedingsPublication : ListAuthor -> String -> String -> Address -> Date -> String -> String -> (Maybe String) -> (Maybe String) -> PublicationState -> Publication ;
    ProceedingsPublication editors bookTitle publisher address date series volume pages doi status =
      ss (bookTitle.s ++ bindBracket date.s ++ Prelude.BIND ++ ";" ++ editors.s ++ "(Hrsg.)" ++ bindComma' ++
	    publisher.s ++ bindComma' ++ address.s ++ bindComma' ++ series.s ++ bindBracket volume.s ++
	    if_then_Str pages.empty "" (bindComma' ++ pages.s ++  "Seiten") ++
	    if_then_Str doi.empty "" (bindComma' ++ bindUrl doi.s ("https://doi.org/" ++ Prelude.BIND ++ doi.s)) ++
	    status.s ++ Prelude.BIND ++ ".") ;
    
    -- NewDegree : DegreeType -> University -> Address -> Date -> String -> Degree ;
    NewDegree degree university address date thesisTitle =
      ss (degree.s ++ bindBracket date.s ++ nlnl ++
	    sp ++ university.s ++ bindBracket address.s ++ nlnl ++
	    sp ++ degree.t ++ Prelude.BIND ++ ": \"" ++ Prelude.BIND ++ thesisTitle.s ++ Prelude.BIND ++ "\"" );
}
