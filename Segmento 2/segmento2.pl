

% farmacia: Nome, Local -> {V,F}
farmacia('FarmUM','Universidade do Minho').
farmacia('GualtarFarm','Gualtar - Braga').
farmacia('MediFarm','Porto').
farmacia('Farmacia S. Joao', 'Ponte de Lima').
% representa��o do conhecimento negativo
-farmacia('FarmUM','Guimaraes').
-farmacia('MediFarm','Lisboa').

% medicamento: Nome, Constituinte -> {V,F}
medicamento('Acarbose Alsucril','Acarbose').
medicamento('Brufen','Ibuprofeno').
medicamento('Augmentin','Clavulanato de pot�ssio').
medicamento('Augmentin','Amoxicilina tri-hidratada').
medicamento('Cilestoderme','Betametasona').
medicamento('Cilestoderme','valerato').
% representa��o do conhecimento negativo
-medicamento('Acarbose Alsucril','Ibuprofeno').

% datas : Medicamento, (Dia, Mes, Ano, Fundamento) -> {V,F}
datas('Acarbose Alsucril',(02,02,2010,'Fabrico')).
datas('Acarbose Alsucril',(02,04,2010,'Ingress�o no mercado')).
datas('Acarbose Alsucril',(02,02,2013,'Validade')).
datas('Brufen',(02,02,2010,'Fabrico')).
datas('Brufen',(02,04,2010,'Ingress�o no mercado')).
datas('Brufen',(02,02,2013,'Validade')).
datas('Augmentin',(02,02,2009,'Fabrico')).
datas('Augmentin',(02,04,2009,'Ingress�o no mercado')).
datas('Augmentin',(02,02,2011,'Validade')).
datas('Cilestoderme',(02,08,2009,'Fabrico')).
datas('Cilestoderme',(02,10,2009,'Ingress�o no mercado')).
datas('Cilestoderme',(02,05,2011,'Validade')).
% representa��o do conhecimento negativo
-datas('Cilestoderme',(01,01,2010,'Validade')).

% aplicacao: Nome_medicamento, aplica��o -> {V,F}
aplicacao('Acarbose Alsucril','Infec��es').
aplicacao('Bruffen','Dores de caba�a').
aplicacao('Bruffen', 'Anti-inflamatorio').
aplicacao('Augmentin','Cortes').
aplicacao('Augmentin','Feridas').
% representa��o do conhecimento negativo
-aplicacao('Augmentin','Dores de cabe�a').

% apresentacao: Nome_medicamento, apresentacoes -> {V,F}
apresentacao('Acarbose Alsucril','Pomada').
apresentacao('Acarbose Alsucril','Po').
apresentacao('Bruffen','Comprimido').
apresentacao('Bruffen','Po').
apresentacao('Augmentin','liquido').
% representa��o do conhecimento negativo
-apresentacao('Augmentin','Pomada').

% preco: Nome_medicamento, (valor, tipo) -> {V,F}
preco('Acarbose Alsucril',(12,'Reformados')).
preco('Bruffen',(8,'Reformados')).
preco('Bruffen',(6,'Criancas')).
% representa��o do conhecimento negativo
-preco('Acarbose Alsucril',(X,'Criancas')).


% Representa��o do conhecimento imperfeito

% demo: Q,R -> {V,F}
existe(Q,verdadeiro) :- 
				Q.
existe(Q,falso) :- 
				-Q.
existe(Q,desconhecido) :-
				 nao(Q),
				 nao(-Q).
			

nao(X) :-
		X, !, fail.
nao(X).



