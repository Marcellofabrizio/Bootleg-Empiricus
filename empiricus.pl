%  cliente(nome, perfil, poupanca, renda, investimento, dependentes)
% Perfil define quanto risco o cara tá disposto a correr.
cliente(lucas  , moderado   ,  5000,  1200,  5000, 0).
cliente(gabriel, arrojado   , 50000, 10000, 20000, 2).
cliente(bettina, conservador,  1000,   800,   200, 0).

viabilidade_cbd(_, _, _, _) :- !.
viabilidade_lci_lca(_, _, _, _) :- !.

%======== TESOURO SELIC ========%
taxa_selic(1,2018,0.5924).
taxa_selic(2,2018,0.4723).
taxa_selic(3,2018,0.5402).
taxa_selic(4,2018,0.5262).
taxa_selic(5,2018,0.5262).
taxa_selic(6,2018,0.5262).
taxa_selic(7,2018,0.5513).
taxa_selic(8,2018,0.5764).
taxa_selic(9,2018,0.4759).
taxa_selic(10,2018,0.5513).
taxa_selic(11,2018,0.5513).
taxa_selic(12,2018,0.5011).
taxa_selic(1,2019,0.5513).
taxa_selic(2,2019,0.5011).
taxa_selic(3,2019,0.4759).
taxa_selic(4,2019,0.5262).
taxa_selic(5,2019,0.5513).
taxa_selic(6,2019,0.4759).
taxa_selic(7,2019,0.5764).
taxa_selic(8,2019,0.5100).
taxa_selic(9,2019,0.4717).
taxa_selic(10,2019,0.4880).
taxa_selic(11,2019,0.3880).
taxa_selic(12,2019,0.3827).
taxa_selic(1,2020,0.3850).
taxa_selic(2,2020,0.3006).
taxa_selic(3,2020,0.3468).
taxa_selic(4,2020,0.2926).
taxa_selic(5,2020,0.2435).
taxa_selic(6,2020,0.2205).
taxa_selic(7,2020,0.2033).
taxa_selic(8,2020,0.1681).
taxa_selic(9,2020,0.1652).
taxa_selic(10,2020,0.1652).
taxa_selic(11,2020,0.1573).
taxa_selic(12,2020,0.1730).
taxa_selic(1,2021,0.1573).
taxa_selic(2,2021,0.1415).
taxa_selic(3,2021,0.2100).
taxa_selic(4,2021,0.2155).
taxa_selic(5,2021,0.2784).
taxa_selic(6,2021,0.3158).
taxa_selic(7,2021,0.3640).
taxa_selic(8,2021,0.4363).
taxa_selic(9,2021,0.4499).
taxa_selic(10,2021,0.4935).
taxa_selic(11,2021,0.5942).
taxa_selic(12,2021,0.7775).
taxa_selic(1,2022,0,7619).
taxa_selic(2,2022,0,7400).

viabilidade_selic(_, _, _, _) :- !.


%====== DOLAR ======%

viabilidade_dolar(_, _, _, _) :- !.

%========= CDI =========%
%  taxas(Mes, Ano, Valor)
taxa_cdi(01,2018,0.5800).
taxa_cdi(02,2018,0.4600).
taxa_cdi(03,2018,0.5300).
taxa_cdi(04,2018,0.5200).
taxa_cdi(05,2018,0.5200).
taxa_cdi(06,2018,0.5200).
taxa_cdi(07,2018,0.5400).
taxa_cdi(08,2018,0.5700).
taxa_cdi(09,2018,0.4700).
taxa_cdi(10,2018,0.5400).
taxa_cdi(11,2018,0.4900).
taxa_cdi(12,2018,0.4900).
taxa_cdi(01,2019,0.5400).
taxa_cdi(02,2019,0.4900).
taxa_cdi(03,2019,0.4700).
taxa_cdi(04,2019,0.5200).
taxa_cdi(05,2019,0.5400).
taxa_cdi(06,2019,0.4700).
taxa_cdi(07,2019,0.5700).
taxa_cdi(08,2019,0.5000).
taxa_cdi(09,2019,0.4600).
taxa_cdi(10,2019,0.4800).
taxa_cdi(11,2019,0.3800).
taxa_cdi(12,2019,0.3700).
taxa_cdi(01,2020,0.3800).
taxa_cdi(02,2020,0.2900).
taxa_cdi(03,2020,0.3400).
taxa_cdi(04,2020,0.2800).
taxa_cdi(05,2020,0.2400).
taxa_cdi(06,2020,0.2100).
taxa_cdi(07,2020,0.1900).
taxa_cdi(08,2020,0.1600).
taxa_cdi(09,2020,0.1600).
taxa_cdi(10,2020,0.1600).
taxa_cdi(11,2020,0.1500).
taxa_cdi(12,2020,0.1600).
taxa_cdi(01,2021,0.1500).
taxa_cdi(02,2021,0.1300).
taxa_cdi(03,2021,0.2000).
taxa_cdi(04,2021,0.2100).
taxa_cdi(05,2021,0.2700).
taxa_cdi(06,2021,0.3100).
taxa_cdi(07,2021,0.3600).
taxa_cdi(08,2021,0.4300).
taxa_cdi(09,2021,0.4400).
taxa_cdi(10,2021,0.4900).
taxa_cdi(11,2021,0.5900).
taxa_cdi(12,2021,0.7700).
taxa_cdi(01,2022,0.7300).
taxa_cdi(02,2022,0.7600).


% Por enquanto, só soma todos os valores dos _Meses meses até _MesFin/_AnoFin.
viabilidade_cdi(MesFin, AnoFin, Meses, Total) :-
    periodo(MesFin, AnoFin, MesIni, AnoIni, Meses),
    calcula_cdi(MesFin, AnoFin, MesIni, AnoIni, Total).

% Predicado que soma recursivamente as taxas
calcula_cdi(Mes, Ano, MesIni, AnoIni, Total) :-
    Mes == MesIni, Ano == AnoIni,
    taxa_cdi(Mes, Ano, Total).
calcula_cdi(MesAtu, AnoAtu, MesIni, AnoIni, Total) :-
    periodo(MesAtu, AnoAtu, Mes, Ano, 2), % Não mexer nesse 2! É o decremento de um mês.
    taxa_cdi(MesAtu, AnoAtu, T),
    calcula_cdi(Mes, Ano, MesIni, AnoIni, Taxa),
    Total is Taxa + T, !.


%============= IBOVESPA =============%
fechamento_ibovespa(01, 2018, 84.913).
fechamento_ibovespa(02, 2018, 85.354).
fechamento_ibovespa(03, 2018, 85.366).
fechamento_ibovespa(04, 2018, 86.116).
fechamento_ibovespa(05, 2018, 76.754).
fechamento_ibovespa(06, 2018, 72.763).
fechamento_ibovespa(07, 2018, 79.220).
fechamento_ibovespa(08, 2018, 76.678).
fechamento_ibovespa(09, 2018, 79.342).
fechamento_ibovespa(10, 2018, 87.424).
fechamento_ibovespa(11, 2018, 89.504).
fechamento_ibovespa(12, 2018, 87.887).
fechamento_ibovespa(01, 2019, 97.394).
fechamento_ibovespa(02, 2019, 95.584).
fechamento_ibovespa(03, 2019, 95.415).
fechamento_ibovespa(04, 2019, 96.353).
fechamento_ibovespa(05, 2019, 97.030).
fechamento_ibovespa(06, 2019, 100.967).
fechamento_ibovespa(07, 2019, 101.812).
fechamento_ibovespa(08, 2019, 101.135).
fechamento_ibovespa(09, 2019, 104.745).
fechamento_ibovespa(10, 2019, 107.220).
fechamento_ibovespa(11, 2019, 108.233).
fechamento_ibovespa(12, 2019, 115.645).
fechamento_ibovespa(01, 2020, 113.761).
fechamento_ibovespa(02, 2020, 104.172).
fechamento_ibovespa(03, 2020, 73.020).
fechamento_ibovespa(04, 2020, 80.506).
fechamento_ibovespa(05, 2020, 87.403).
fechamento_ibovespa(06, 2020, 95.056).
fechamento_ibovespa(07, 2020, 102.912).
fechamento_ibovespa(08, 2020, 99.369).
fechamento_ibovespa(09, 2020, 94.603).
fechamento_ibovespa(10, 2020, 93.952).
fechamento_ibovespa(11, 2020, 108.893).
fechamento_ibovespa(12, 2020, 119.017).
fechamento_ibovespa(01, 2021, 115.068).
fechamento_ibovespa(02, 2021, 110.035).
fechamento_ibovespa(03, 2021, 116.634).
fechamento_ibovespa(04, 2021, 118.894).
fechamento_ibovespa(05, 2021, 126.216).
fechamento_ibovespa(06, 2021, 126.802).
fechamento_ibovespa(07, 2021, 121.801).
fechamento_ibovespa(08, 2021, 118.781).
fechamento_ibovespa(09, 2021, 110.979).
fechamento_ibovespa(10, 2021, 103.501).
fechamento_ibovespa(11, 2021, 101.916).
fechamento_ibovespa(12, 2021, 104.822).
fechamento_ibovespa(01, 2022, 112.144).
fechamento_ibovespa(02, 2022, 113.142).
fechamento_ibovespa(03, 2022, 119.999).


% Vai calcular o valor do mês corrente e do passado.
tendencia_ibovespa(Ano, ValorPassado, ValorCorrente) :-
    % Achar todos os Valores C que existam para esse Mes e Ano e colocá-los na lista Cs
    findall(C, fechamento_ibovespa(_, Ano, C), Cs),
    % Somar todos valores de Cs em ValorCorrente.
    sum_list(Cs, ValorCorrente),
    % Fazer o mesmo pro AnoPassado
    AnoPassado is Ano - 1,
    findall(P, fechamento_ibovespa(_, AnoPassado, P), Ps),
    sum_list(Ps, ValorPassado).

% Se a tendência for crescente, mostra quão grande é o crescimento.
viabilidade_ibovespa(Ano, Fator) :-
    tendencia_ibovespa(Ano, ValorCorrente, ValorPassado),
    ValorPassado < ValorCorrente,
    Fator is ValorCorrente / ValorPassado.


%=================== OUTROS PREDICADOS ===================%
% Predicado pra pegar os _Meses últimos meses até _MesFin/_AnoFin.
% O mês atual conta como 1 mês, então pra voltar 1, _Meses tem que ser maior que 1.
periodo(MesFin, AnoFin, MesIni, AnoIni, Meses) :-
    MesFin >= Meses,
    MesIni is MesFin - (Meses - 1),
    AnoIni is AnoFin, !.
periodo(MesFin, AnoFin, MesIni, AnoIni, Meses) :-
    Meses =< 12 + MesFin,
    MesIni is 12 - (Meses - MesFin - 1), 
    AnoIni is AnoFin - 1, !.
periodo(MesFin, AnoFin, MesIni, AnoIni, Meses) :-
    Resto is Meses - 12,
    Ano is AnoFin - 1,
    periodo(MesFin, Ano, MesIni, AnoIni, Resto).


renda_alta(Nome) :-
    poupanca_adequada(Nome),
    renda_adequada(Nome), !.
renda_media(Nome) :-
    poupanca_adequada(Nome), !.
renda_baixa(_) :- !.


poupanca_adequada(Nome) :-
    cliente(Nome,_,Poupado,_,_,Dependentes),
    (Dependentes + 1) * 5000 =< Poupado. 


% Renda minima que o cara tem que ter
renda_minima(Nome, RendaMinima) :-
    cliente(Nome,_,_,_,_,Dependentes),
    RendaMinima is 15000 + (4000*Dependentes).
renda_adequada(Nome) :-
    cliente(Nome,_,_,Renda,_,Dependentes),
    renda_minima(Nome, RendaMinima),
    (Renda*12) > RendaMinima. % renda do ano deve ser maior que a renda minima para ser adequada


investir(Nome, Mes, Ano) :-
    renda_alta(Nome),
    cliente(Nome, moderado, _, _, _, _),
    viabilidade_cdi(Mes, Ano, 3, _),
    write('CDI').
investir(Nome, _, Ano) :-
    renda_alta(Nome),
    cliente(Nome, arrojado, _, _, _, _),
    viabilidade_ibovespa(Ano, _),
    write('Ibovespa').
investir(Nome, Mes, Ano) :-
    renda_media(Nome),
    cliente(Nome, arrojado, _, _, _, _),
    viabilidade_dolar(Mes, Ano, 3, _), 
    write('Dolar').
investir(Nome, Mes, Ano) :-
    renda_media(Nome),
    cliente(Nome, moderado, _, _, _, _),
    viabilidade_lci_lca(Mes, Ano, 3, _), 
    write('LCI/LCA').
investir(Nome, Mes, Ano) :-
    renda_media(Nome),
    cliente(Nome, conservador, _, _, _, _),
    viabilidade_selic(Mes, Ano, 3, _),
    write('Tesouro').
investir(Nome, Mes, Ano) :-
    renda_baixa(Nome),
    cliente(Nome, conservador, _, _, _, _),
    viabilidade_cbd(Mes, Ano, 3, _), 
    write('Cdb').
investir(Nome, _, _) :-
    renda_baixa(Nome),
    write('Poupanca'), !.