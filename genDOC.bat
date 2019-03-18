:: pandoc looks in path defined by --data-dir for a folder called templates
:: there it takes the file defined in --template as a template
:: the default template can be generated with pandoc -D latex > default.latex

@ECHO OFF

IF EXIST myMarkdown.conf (
  set /P myMarkdown=<myMarkdown.conf
) ELSE (
  ECHO.
  ECHO ERROR: myMarkdown.conf does not exist
  ECHO.
  GOTO :eof
)

pandoc --standalone -f markdown+smart+table_captions %myMarkdown% -o Output.docx
