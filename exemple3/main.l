//declaration variable 

%{
 // exemple int x;
%}
non_p ^[pP].*$
O_ou_o [oO]
effacer_espace [" "]+ 
%%
{non_p}{ {O_ou_o} printf("ligne commence par p hahaha %s \n",yytext);}
{O_ou_o} printf("*");//hello 
{effacer_espace} printf(" ");
%%


int yywrap(){
return 1;
}


int main(){
	//houni initialisation des variables 
	yylex();
	printf("yekhdem aad");	
	return 1;

}
