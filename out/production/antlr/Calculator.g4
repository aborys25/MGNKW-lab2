grammar Calculator;

expression: multiplyingExpression ((PLUS | MINUS) multiplyingExpression)*;
multiplyingExpression: powExpression ((TIMES | DIV) powExpression)*;
powExpression: integralExpression ((POW|SQRT) integralExpression)*;   /*   to co mówi adam: liczba znak liczba, i to jest jeżeli masz tylko raz to działanie bez gwiazdki, a jeśli jest to możesz wykonać to tysiać razy  */
integralExpression: MINUS (INT|DOUBLE) | (INT|DOUBLE);

INT: [0-9]+ ;
TIMES: '*' ;
DIV: '/' ;
PLUS: '+' ;
MINUS: '-' ;
POW: '^' ;
SQRT: 'sqrt' ;
DOUBLE: ('0' .. '9')+ ('.' ('0' .. '9') +)?;
WS : [ \t\r\n]+ -> skip ;
//test

/*

grammar Calculator;

expression: multiplyingExpression ((PLUS | MINUS) multiplyingExpression);
multiplyingExpression: powExpression ((TIMES | DIV) powExpression)*;
powExpression: integralExpression ((POW|SQRT) integralExpression)*;
integralExpression: MINUS (INT|DOUBLE) | (INT|DOUBLE) ;

INT: [0-9]+ ;
TIMES: '*' ;
DIV: '/' ;
PLUS: '+' ;
MINUS: '-' ;
POW: '^' ;
SQRT: 'sqrt' ;
DOUBLE: ('0' .. '9')+ ('.' ('0' .. '9') +)?;
WS : [ \t\r\n]+ -> skip ;

*/