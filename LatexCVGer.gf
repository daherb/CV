concrete LatexCVGer of FullCV = CVGer ---[Company,FreelancerCompany,GermanistikLMUCompany,GlanosCompany,ITZCompany]
  , FullCVGer ---[Company,FreelancerCompany,GermanistikLMUCompany,GlanosCompany,ITZCompany]
  , LatexCVI-[DegreeType] ** open Prelude in {
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
      ss ("%!TEX encoding = UTF-8 Unicode" ++ nl ++
	    "% LaTeX Template for CV/Resume" ++ nl ++
	    "%" ++ nl ++
	    "% This template has been downloaded and modified from:" ++ nl ++
	    "% https://github.com/posquit0/Awesome-CV" ++ nl ++
	    "%" ++ nl ++
	    "% Original Author:" ++ nl ++
	    "% Claud D. Park <posquit0.bj@gmail.com>" ++ nl ++
	    "% http://www.posquit0.com" ++ nl ++
	    "%" ++ nl ++
	    "% Modified (March 2019) by:" ++ nl ++
	    "% Jessica A. Rick <jrick@uwyo.edu>" ++ nl ++
	    "% http://www.jessicarick.com" ++ nl ++
	    "%" ++ nl ++
	    "%" ++ nl ++
	    "%-------------------------------------------------------------------------------" ++ nl ++
	    "% CONFIGURATIONS" ++ nl ++
	    "%-------------------------------------------------------------------------------" ++ nl ++
	    "% A4 paper size by default, use 'letterpaper' for US letter" ++ nl ++	   
	    "\\documentclass[11pt, a4]{academic-cv}" ++ nl ++
	    "% Configure page margins with geometry" ++ nl ++
	    "\\geometry{left=0.75in, top=0.75in, right=0.75in, bottom=0.75in, footskip=.5cm}" ++ nl ++
	    "" ++ nl ++ nl ++ 
	    "%% % Specify the location of the included fonts" ++ nl ++
	    "%% \\fontdir[fonts/]" ++ nl ++
	    "" ++ nl ++ nl ++ 
	    "% If you would like to change the social information separator from a pipe (|) to something else" ++ nl ++
	    "\\renewcommand{\\acvHeaderSocialSep}{\\quad\\textbar\\quad}" ++ nl ++
	    "" ++ nl ++ nl ++  
	    "\\usepackage{hyperref}" ++ nl ++
	    "\\usepackage{csquotes}" ++ nl ++
	    "" ++ nl ++ nl ++
	    "%-------------------------------------------------------------------------------" ++ nl ++
	    "%	PERSONAL INFORMATION" ++ nl ++
	    "%	Comment any of the lines below if they are not required" ++ nl ++
	    "%-------------------------------------------------------------------------------" ++ nl ++
	    bindSurround "\\name{" name.s "}{}" ++ nl ++
	    bindSurround "\\position{" (position.s1 ++ if_then_Str position.emptys2 ""("{\\enskip\\cdotp\\enskip}" ++ position.s2)) "}" ++ nl ++
	    bindSurround "\\address{" address.s "}" ++ nl ++
	    "%\\mobile{+1 000-000-0000}" ++ nl ++
	    bindSurround "\\email{" mail.s "}" ++ nl ++
	    bindSurround "\\homepage{" website.s "}" ++ nl ++
	    if_then_Str github.empty "" (bindSurround "\\github{" github.s "}") ++ nl ++
	    if_then_Str linkedin.empty "" (bindSurround "\\linkedin{" linkedin.s "}") ++ nl ++
	    if_then_Str gitlab.empty "" (bindSurround "\\gitlab{" gitlab.s "}") ++ nl ++
	    -- Requires changing definition of stackoverflow
--	    if_then_Str stackoverflow.empty "" ("\\stackoverflow{" ++ stackoverflow.id ++ "}{" ++ stackoverflow.name ++ "}") ++ nl ++
	    if_then_Str twitter.empty "" (bindSurround "\\twitter{@" twitter.s "}") ++ nl ++
	    if_then_Str skype.empty "" (bindSurround "\\skype{" skype.s "}") ++ nl ++
	    if_then_Str reddit.empty "" (bindSurround "\\reddit{" reddit.s "}") ++ nl ++
	    "% \\extrainfo{extra informations}" ++ nl ++
	    "%-------------------------------------------------------------------------------" ++ nl ++
	    "\\begin{document}" ++ nl ++
	    "% Print the header with above personal information" ++ nl ++
	    "% Give optional argument to change alignment(C: center, L: left, R: right)" ++ nl ++
	    "\\makecvheader" ++ nl ++
	    "% Print the footer with 3 arguments(<left>, <center>, <right>)" ++ nl ++
	    "% Leave any of these blank if they are not needed" ++ nl ++
	    "\\makecvfooter" ++ nl ++
	    "   {" ++ lastUpdated.s ++ "}" ++ nl ++
	    "   {" ++ name.s ++ " ~~~·~~~ Lebenslauf}" ++ nl ++
	    "   {\\thepage}" ++ nl ++
	    "" ++ nl ++ nl ++
	    "%-------------------------------------------------------------------------------" ++ nl ++
	    "%	CV/RESUME CONTENT" ++ nl ++
	    "%	Each section is imported separately, open each file in turn to modify content" ++ nl ++
	    "%   Comment out any sections that are not appropriate for your CV" ++ nl ++
	    "%-------------------------------------------------------------------------------" ++ nl ++
	    "%% \\input{cv/degrees.tex}" ++ nl ++
	    "%-------------------------------------------------------------------------------" ++ nl ++ 
	    "%	SECTION TITLE" ++ nl ++ 
	    "%-------------------------------------------------------------------------------" ++ nl ++ 
	    "\\vspace{-10px}" ++ nl ++ 
	    "\\cvsection{Universitsabschlüsse}" ++ nl ++ nl ++
	    "\\begin{cventries}" ++ nl ++
	    degrees.s ++ nl ++ nl ++
	    "\\end{cventries}" ++ nl ++
	    "\\vspace{-10px}" ++ nl ++ 
	    "\\cvsection{Universitäre Ausbildung}" ++ nl ++ nl ++
	    "\\begin{cventries}" ++ nl ++
	    education.s ++ nl ++
	    "\\end{cventries}" ++ nl ++
	    "\\vspace{-10px}" ++ nl ++ 
	    "\\cvsection{Beruflicher Werdegang}" ++ nl ++ nl ++
	    "\\begin{cventries}" ++ nl ++
	    jobs.s ++ nl ++
	    "\\end{cventries}" ++ nl ++
	    "\\vspace{-10px}" ++ nl ++ 
	    "\\cvsection{Wissenschaftliche Veröffentlichungen}" ++ nl ++ nl ++
	    "\\begin{cvpubs}" ++ nl ++
	    publications.s ++ nl ++ nl ++
	    "\\end{cvpubs}" ++ nl ++
	    "\\vspace{-10px}" ++ nl ++ 
	    "\\cvsection{Vorträge und Präsentationen}" ++ nl ++ nl ++
	    "\\begin{cvpubs}" ++ nl ++
	    presentations.s ++ nl ++ 
	    "\\end{cvpubs}" ++ nl ++
	    "\\vspace{-10px}" ++ nl ++ 
	    "\\cvsection{Lehrerfahrung}" ++ nl ++ nl ++
	    "\\begin{cventries}" ++ nl ++
	    teachings.s ++ nl ++
	    "\\end{cventries}" ++ nl ++
	    "\\vspace{-10px}" ++ nl ++ 
	    "\\cvsection{Stipendien}" ++ nl ++ nl ++
	    "\\begin{cvhonors}" ++ nl ++
	    grants.s ++
	    "\\end{cvhonors}" ++ nl ++
	    "\\vspace{-10px}" ++ nl ++ 
	    "\\cvsection{Konferenzorganisation}" ++ nl ++ nl ++
	    "\\begin{cvhonors}" ++ nl ++
	    confs.s ++
	    "\\end{cvhonors}" ++ nl ++
	    "\\vspace{-10px}" ++ nl ++ 
	    "\\cvsection{Peer Review}" ++ nl ++ nl ++
	    "\\begin{cvhonors}" ++ nl ++
	    peer.s ++
	    "\\end{cvhonors}" ++ nl ++
	    "\\vspace{-10px}" ++ nl ++ 
	    "\\cvsection{Weiteres Mitwirken}" ++ nl ++ nl ++
	    "\\begin{cvhonors}" ++ nl ++
	    involvements.s ++
	    "\\end{cvhonors}" ++ nl ++
	    "\\vspace{-10px}" ++ nl ++ 
	    "\\cvsection{Fertigkeiten}" ++ nl ++ nl ++
	    "Fünf Stufen: Grundlegendes Wissen (1), Grundlegende Erfahrung (2), Professionelle Erfahrung (3), Experte (4),  Guru (5)" ++ nl ++ nl ++
	    skills.s ++
	    "" ++ nl ++ nl ++
	    "%-------------------------------------------------------------------------------" ++ nl ++ 
	    "\\end{document}" ++ nl
      ) ;

    -- ConsAuthor : Author -> AuthorList -> AuthorList
    ConsAuthor a as =
      { s = a.s ++ (case as.last of { True => "und" ; False => bindComma' }) ++ as.s ; last = False } ;

    -- ProceedingsPublication : ListAuthor -> String -> String -> Address -> Date -> String -> String -> (Maybe String) -> (Maybe String) -> PublicationState -> Publication ;
    ProceedingsPublication editors bookTitle publisher address date series volume pages doi status =
      ss (bindSurround "\\cvpub{"
	    (bindSurround "\\emph{" bookTitle.s "}" ++ bindBracket date.s ++ Prelude.BIND ++ ";" ++ editors.s ++ "(Hrsg.)" ++ bindComma' ++
	       publisher.s ++ bindComma' ++ address.s ++ bindComma' ++ series.s ++ bindBracket volume.s ++
	       if_then_Str pages.empty "" (bindComma' ++ pages.s ++  "Seiten") ++
	       if_then_Str doi.empty "" (bindComma' ++ bindSurround "\\url{https://doi.org/" doi.s "}") ++
	       bindComma' ++ status.s ++ Prelude.BIND ++ ".")
	  "}"
      );
    
    -- NewDegree : DegreeType -> University -> Address -> Date -> String -> Degree ;
    NewDegree degree university address date thesisTitle =
      ss ("\\cventry" ++ nl ++
	    bindSurround "{" degree.s "} % Degree" ++ nl ++
	    bindSurround "{" university.s "} % Institution" ++ nl ++
	    bindSurround "{" address.s "} % Location" ++ nl ++
	    bindSurround "{" date.s "} % Date(s)" ++ nl ++
	    bindSurround "{Abschlussarbeit: ``" thesisTitle.s "''}" ++ nl
      );
    
    {-
    \cventry
      {Doctor of Philosophy in Computer Science} % Degree
      {University of Gothenburg} % Institution
      {Sweden} % Location
      {September 2020} % Date(s)
      {
	\begin{cvitems} % Description(s) bullet points
      \item Thesis: ``Learning Language (with) Grammars: From Teaching Latin to Learning Domain-Specific Grammars''
      \item {Advisor 1: Peter Ljunglöf}
      \item {Advisor 2: Koen Claessen}
      \end{cvitems}
    }
      -}

}
