concrete CVI of CV = open Prelude in {
  lincat
    Address, Author, CV, Category, City, Company, Country, Date, Degree, DegreeType, Department, Education, EducationDescription, EducationType, Job, JobDescription, JobTitle, Semester, Venue, TeachingDuty, ConferenceInvolvement = SS ;
    ListAuthor = { s : Str ; last : Bool } ;
    ListDegree, ListEducation, ListJob, ListPresentation, ListPublication, ListGrant, ListConferenceInvolvement, ListPeerReview, ListSkill, ListSkillCategory, ListSupervisor, ListTeachingDuty, ListOtherInvolvement, MaybeString = { s : Str ; empty : Bool } ;
    Month, Presentation, PresentationType, Publication, PublicationState, Skill, SkillCategory, SkillLevel, SkillName, Stackoverflow, Supervisor, SupervisorRole, ThesisType, University = SS ;
    Position = { s1 : Str; s2 : Str ; emptys2 : Bool } ;
    GrantType = SS ;
  lin
    Just s = s ** { empty = False };
    Nothing = { s = "" ; empty = True } ;
    Guru = ss "Guru" ;
    OnlyYear y = y ;
    MonthYear m y = cc2 m y ;
    NewDate d m y = cc2 m y ; -- Usually nobody cares about the exacty date
    -- NewTerm : Semester -> Date -> Term ;
    NewTerm semester date =
      cc2 semester date ;
    -- UniVenue : University -> Venue ;
    UniVenue s = s;
    -- CompanyVenue : Company -> Venue ;
    CompanyVenue s = s ;
}
