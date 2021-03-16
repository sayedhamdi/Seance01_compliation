%{
int nbb,nbc,nbv;
%}
voy [aeiouy]
cons [b-df-hj-np-tv-xz]

%%
(0|1)+	{printf("binaire : %s\n",yytext);nbb++;}
{voy} {nbv++;printf("consonne :%s\n",yytext);}
{cons} {nbc++;printf("voyelle : %s\n",yytext);}
%%


int yywrap(){
return 1;
}

int main(){
	nbb= 0;
	nbv= 0;
	nbc= 0;
	yylex();
	printf("le nombre de consonne est : %d  et le nombre de voyelle est %d",nbc,nbv);
	return 0;
}
