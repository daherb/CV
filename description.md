# A multi-lingual and multi-format CV using Grammatical Framework

## The problem

The problem I was confronted with was to write my own CV. To get started
I tried to collect all the necessary data in some format that is sufficiently
abstract to later convert it into e.g. a webpage or a PDF. An idea that could
come to mind is to use a well-established format such as XML to represent the
data and use transformations to generate the desired output format later.
The advantage of XML is its flexibility. Based on schemas one can define
exactly the vocabulary necessary for the application in mind and the tree
structure of the document allows for generic techniques of transformations.

However, I have been using [Grammatical Framework (GF)]{https://www.grammaticalframework.org)
for a while now, and as the saying goes, if you have a hammer everything looks like a nail.
So instead of googling for an existing schema or creating my own one to use XML
to represent my data, I decided to use the GF abstract syntax as my data representation
language. Because one of GF's strength is translation and that is exactly what I
want to do, I can define various concrete syntaxes to generate different languages
and output formats.

## The abstract syntax

To get started I had to decide what are the most important parts that should be included
in every CV. As guidlines I used a [LaTeX template](https://github.com/posquit0/Awesome-CV).
One feature of the GF abstract syntax I really wanted to try is the use of concrete strings
and numbers in the abstract syntax. For example I defined three functions to create a `Date`:

```
    NewDate: Int -> Month -> Int -> Date ;
    MonthYear : Month -> Int -> Date ;
    OnlyYear : Int -> Date ;
    January, February, March, April, May, June, July, August, September, October, November, December : Month ;
```

Based on these functions valid abstract syntax trees of this category are `OnlyYear 2020`, `MonthYear September 2020` and `NewDate 8 March 2020`. In the beginning I assumed that plenty of strings in the CV are language independent and can be defined directly in the abstract syntax. As it turned out this was overly optimistic. However, in a few cases it was possible to use concrete strings in the abstract syntax.

In some cases parts of the CV should be optional. Often it was lists of entries anyway and allowing empty lists made these parts optional. Sometimes I wanted to have optional strings. Of course I could have used lists here as well, either mepty lists or lists with one element. I decided to try my luck with implementing a `Maybe` type for strings. It can be easily defined with the following two functions:
```
    Nothing : MaybeString ;
    Just : String -> MaybeString ;
```

After defining plenty of generic categories and functions I could dive into actually encoding my own biographic information. To do that I used the function `NewCV` and list all the data as parameters to this function.
The signature of `NewCV` is defined like this:
```
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
      -> MaybeString -- Skype
      -> MaybeString -- Reddit
      -> Date -- LastUpdated
      -> ListDegree -> ListEducation -> ListJob -> ListPublication -> ListPresentation -> ListGrant -> ListConferenceInvolvement -> ListPeerReview -> ListSkillCategory -> CV ;
```

All the list are potentially empty. Now to create a CV we have to apply this function to suitable parameters. 

I could define my CV by giving all these parameters directly and that way creating a huge abstract syntax tree that would be difficult to understand.
Instead I opted for a more modular (and hopefully more readable) version where I first define a set of helper function (`oper`s in GF lingo). It is also handy
to assign a name to the abstract syntax tree representing my CV. This can be done using the `def` keyword to give it the name `FullCV` which is defined to be of
category `CV` as well. So instead of `def FullCV = NewCV "Herbert Lange" ...` I define it in two steps:
```
oper
  Name : String = "Herbert Lange" ;
def
  FullCV = NewCV Name ...
```

As I mentioned before, several categories for which I assumed that they can just be represented as plain strings, it turned out that they are very well language dependent,
for example addresses when containing city or country names. Luckily, names seem to be language independent so far but this is not necessarily true in all possible cases.
Some languages actually

## A concrete example: Markdown CV in English and German