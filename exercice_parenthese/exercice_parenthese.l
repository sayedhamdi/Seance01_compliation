%{
  void nombre_parenthese(char *s,int yyleng);
  int nbp,nbf,nbo;
%}




/* lex chyekhou */
%%
\( {nbp++;nbo++;};
\) {nbp++;nbf++;};
.
%%

void nombre_parenthese(char * s,int yyleng){
        printf(" \n parenthese sa7it ahaya : %s \n",s);
        for (int i=0;i<yyleng;i++){
            if (s[i] == '('){
                nbo++;
            }else{
            }
            nbp++;
        }
}

int yywrap(){
return 1;
}


int main(){
    nbp = nbo = nbf= 0;
	yylex();
    if(nbo>nbf)
        printf("excés ouvrant\n");
    else if (nbo<nbf)
        printf("excés fermant \n");
    else{
        printf("parenthesage s7i7 \n");
    }
    printf("\n nombre de parenthese est %d \n wfé el programme \n",nbp);
	return 0;
}
