

% farmacia: Nome, Local -> {V,F}
farmacia('FarmUM','Universidade do Minho').
farmacia('GualtarFarm','Gualtar - Braga').
farmacia('MediFarm','Porto').
farmacia('Farmacia S. Joao', 'Ponte de Lima').
% representação do conhecimento negativo
-farmacia('FarmUM','Guimaraes').
-farmacia('MediFarm','Lisboa').

% medicamento: Nome, Constituinte -> {V,F}
medicamento('Acarbose Alsucril','Acarbose').
medicamento('Brufen','Ibuprofeno').
medicamento('Augmentin','Clavulanato de potássio').
medicamento('Augmentin','Amoxicilina tri-hidratada').
medicamento('Cilestoderme','Betametasona').
medicamento('Cilestoderme','valerato').
% representação do conhecimento negativo
-medicamento('Acarbose Alsucril','Ibuprofeno').

% datas : Medicamento, (Dia, Mes, Ano, Fundamento) -> {V,F}
datas('Acarbose Alsucril',(02,02,2010,'Fabrico')).
datas('Acarbose Alsucril',(02,04,2010,'Ingressão no mercado')).
datas('Acarbose Alsucril',(02,02,2013,'Validade')).
datas('Brufen',(02,02,2010,'Fabrico')).
datas('Brufen',(02,04,2010,'Ingressão no mercado')).
datas('Brufen',(02,02,2013,'Validade')).
datas('Augmentin',(02,02,2009,'Fabrico')).
datas('Augmentin',(02,04,2009,'Ingressão no mercado')).
datas('Augmentin',(02,02,2011,'Validade')).
datas('Cilestoderme',(02,08,2009,'Fabrico')).
datas('Cilestoderme',(02,10,2009,'Ingressão no mercado')).
datas('Cilestoderme',(02,05,2011,'Validade')).
% representação do conhecimento negativo
-datas('Cilestoderme',(01,01,2010,'Validade')).

% aplicacao: Nome_medicamento, aplicação -> {V,F}
aplicacao('Acarbose Alsucril','Infecções').
aplicacao('Bruffen','Dores de cabaça').
aplicacao('Bruffen', 'Anti-inflamatorio').
aplicacao('Augmentin','Cortes').
aplicacao('Augmentin','Feridas').
% representação do conhecimento negativo
-aplicacao('Augmentin','Dores de cabeça').

% apresentacao: Nome_medicamento, apresentacoes -> {V,F}
apresentacao('Acarbose Alsucril','Pomada').
apresentacao('Acarbose Alsucril','Po').
apresentacao('Bruffen','Comprimido').
apresentacao('Bruffen','Po').
apresentacao('Augmentin','liquido').
% representação do conhecimento negativo
-apresentacao('Augmentin','Pomada').

% preco: Nome_medicamento, (valor, tipo) -> {V,F}
preco('Acarbose Alsucril',(12,'Reformados')).
preco('Bruffen',(8,'Reformados')).
preco('Bruffen',(6,'Criancas')).
% representação do conhecimento negativo
-preco('Acarbose Alsucril',(X,'Criancas')).


% Representação do conhecimento imperfeito

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



