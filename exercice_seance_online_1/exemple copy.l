
// outils ygeneri code mtaa el compliateur
// nektbou 7ajet 7ajet -> flex <esm_el fichier> ->
//            lex.yy.c (el code c mtaa les automates)
//            ---> gcc lex.yy.c ---> a.out  (el fichier binaire mte3na )
//            ---> ./a.out --> el processeur bech y'executi el compilateur

//declaration des variables 
%{
    (0|1) 
%}
// najmou nsamiw les expression reguliere 



// win ndefiniw les automates
%%

%%

//fonction a7fadhha w sobha wala copier/coller
int yywrap(){
return 1;
}

//programme principales
int main(){
	yylex();
	return 0;
}
