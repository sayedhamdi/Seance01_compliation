%{
  void compteur01(char *s,int yyleng);
  int nb0,nb1;   
%}

regx_1ouplusieur_01 (0|1)+


/* lex chyekhou */
%%
{regx_1ouplusieur_01} {compteur01(yytext,yyleng);}
. printf("caractere incorrect");
%%

void compteur01(char * s,int yyleng){
  *  printf("la chaine est %s :\n",s);
    for (int i=0;i<yyleng;i++){
         if (s[i]=='0'){
         nb0++;
     }
        else{
            nb1++;
        }
    }
}

int yywrap(){
return 1;
}


int main(){
    nb0 = 0;
	//yylex();
    printf("\nle nombre de 0  : %d \n le nombre de 1 est : %d",nb0,nb1);

	return 0;
}
