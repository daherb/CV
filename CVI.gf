concrete CVI of CV = open Prelude in {
  lincat
    Address, Author, CV, Category, City, Company, Country, Date, Degree, DegreeType, Department, Education, EducationDescription, EducationType, Job, JobDescription, JobTitle = SS ;
    ListAuthor = { s : Str ; last : Bool } ;
    ListDegree, ListEducation, ListJob, ListPresentation, ListPublication, ListGrant, ListConferenceInvolvement, ListPeerReview, ListSkill, ListSkillCategory, ListSupervisor, MaybeString = { s : Str ; empty : Bool } ;
    Month, Position, Presentation, PresentationType, Publication, PublicationState, Skill, SkillCategory, SkillLevel, SkillName, Supervisor, SupervisorRole, ThesisType, University = SS ;
    GrantType = SS ;
  lin
    Just s = s ** { empty = False };
    Nothing = { s = "" ; empty = True } ;
    Guru = ss "Guru" ;
    OnlyYear y = y ;
    MonthYear m y = cc2 m y ;
}
