# CV
A work-in-progess multilingual CV

To generate a Markdown version in German you can run:

```
$ gf MarkdownCVGer.gf
> pt -compute FullCV | l -lang=MarkdownCVGer | ? ./process.pl > CVGer.md
```

This generates the file [CVGer.md](CVGer.md)

In a similar fashion the English version [CVEng.md](CVEng.md) can be generated.

Similarily, LaTeX files can be generated:
```
$ gf LatexCVGer.gf
> pt -compute FullCV | l -lang=LatexCVGer | ? ./process.pl > tex/CVGer.tex
```

All other required files such as the template and fonts are stored in the `tex` subfolder.
To build the document you can e.g. type

```
$ cd tex
$ latexmk -lualatex -pvc
```

Copyright (c) 2021 Herbert Lange
