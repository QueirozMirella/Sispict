PR.registerLangHandler(PR.createSimpleLexer([[PR.PR_PLAIN,/^[\t\n\r \xA0]+/,null,"\t\n\r \xa0"],[PR.PR_COMMENT,/^%[^\r\n]*/,null,"%"]],[[PR.PR_LITERAL,/^\\(?:cr|l?dots|R|tab)\b/],[PR.PR_KEYWORD,/^\\[a-zA-Z@]+/],[PR.PR_KEYWORD,/^#(?:ifn?def|endif)/],[PR.PR_PLAIN,/^\\[{}]/],[PR.PR_PUNCTUATION,/^[{}()\[\]]+/]]),["Rd","rd"]);