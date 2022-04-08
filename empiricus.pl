%  cliente(name, age, profile, poupanca, renda, investimento, dependents, [])
%  Perfis: Conservador  Moderado  Arrojado
cliente(lucas, 28, moderado, 4000, 1200, 5000, 0, []).
cliente(gabriel, 24, arrojado, 50000, 10000, 20000, 2, []).
cliente(bettina, 22, conservador, 1000, 800, 200, 0, []).

conservador(["Poupança","CDB"]).
moderado(["CDB", "Tesouro"]).
arrojado(["Dolar", "Ações"]).

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

lista_dol([3.1859, 3.2462, 3.3051, 3.5072, 3.7235, 3.8771, 3.7564, 4.0556, 4.0491, 3.7220, 3.8669, 3.8812, 3.6440, 3.7514, 3.9247, 3.9215, 3.9228, 3.8520, 3.8129, 4.1454, 4.1556, 4.0184, 4.2367, 4.0195, 4.2824, 4.4735, 5.2054, 5.4876, 5.3370, 5.4672, 5.2242, 5.4928, 5.6120, 5.7460, 5.3323, 5.1940, 5.4630, 5.5989, 5.6333, 5.4368, 5.2183, 4.9696, 5.2134, 5.1508, 5.4433, 5.6388, 5.6244, 5.5713, 5.3046, 5.1601, 4.7395]).

% taxa_ibovespa(Mes, Ano, Valor).
taxa_ibovespa(01, 2018, 84.913).
taxa_ibovespa(02, 2018, 85.354).
taxa_ibovespa(03, 2018, 85.366).
taxa_ibovespa(04, 2018, 86.116).
taxa_ibovespa(05, 2018, 76.754).
taxa_ibovespa(06, 2018, 72.763).
taxa_ibovespa(07, 2018, 79.220).
taxa_ibovespa(08, 2018, 76.678).
taxa_ibovespa(09, 2018, 79.342).
taxa_ibovespa(10, 2018, 87.424).
taxa_ibovespa(11, 2018, 89.504).
taxa_ibovespa(12, 2018, 87.887).
taxa_ibovespa(01, 2019, 97.394).
taxa_ibovespa(02, 2019, 95.584).
taxa_ibovespa(03, 2019, 95.415).
taxa_ibovespa(04, 2019, 96.353).
taxa_ibovespa(05, 2019, 97.030).
taxa_ibovespa(06, 2019, 100.967).
taxa_ibovespa(07, 2019, 101.812).
taxa_ibovespa(08, 2019, 101.135).
taxa_ibovespa(09, 2019, 104.745).
taxa_ibovespa(10, 2019, 107.220).
taxa_ibovespa(11, 2019, 108.233).
taxa_ibovespa(12, 2019, 115.645).
taxa_ibovespa(01, 2020, 113.761).
taxa_ibovespa(02, 2020, 104.172).
taxa_ibovespa(03, 2020, 73.020).
taxa_ibovespa(04, 2020, 80.506).
taxa_ibovespa(05, 2020, 87.403).
taxa_ibovespa(06, 2020, 95.056).
taxa_ibovespa(07, 2020, 102.912).
taxa_ibovespa(08, 2020, 99.369).
taxa_ibovespa(09, 2020, 94.603).
taxa_ibovespa(10, 2020, 93.952).
taxa_ibovespa(11, 2020, 108.893).
taxa_ibovespa(12, 2020, 119.017).
taxa_ibovespa(01, 2021, 115.068).
taxa_ibovespa(02, 2021, 110.035).
taxa_ibovespa(03, 2021, 116.634).
taxa_ibovespa(04, 2021, 118.894).
taxa_ibovespa(05, 2021, 126.216).
taxa_ibovespa(06, 2021, 126.802).
taxa_ibovespa(07, 2021, 121.801).
taxa_ibovespa(08, 2021, 118.781).
taxa_ibovespa(09, 2021, 110.979).
taxa_ibovespa(10, 2021, 103.501).
taxa_ibovespa(11, 2021, 101.916).
taxa_ibovespa(12, 2021, 104.822).
taxa_ibovespa(01, 2022, 112.144).
taxa_ibovespa(02, 2022, 113.142).
taxa_ibovespa(03, 2022, 119.999).


% investimento(Aplicacao, Risco, Rentabilidade).
investimento(poupanca, baixo, baixo).
investimento(cdb, baixo, baixo).
investimento(tesouro, baixo, medio).
investimento(acoes, alto, alto).
investimento(dolar, medio, alto).

soma([], 0) :- !.
soma([N], N) :- !.
soma([N|R], S) :-
    soma(R, SR),
    S is N + SR.

verifica(Nome) :-
    perfil_investmento(Nome, Perfil),
    write(Perfil).    

perfil_investimento(Nome, Perfil) :-
    poupanca_adequada(Nome, Min),
    renda_adequada(Nome),
    arrojado(Perfil).
perfil_investmento(Nome, Perfil) :-
    poupanca_adequada(Nome,Min),
    moderado(Perfil).
perfil_investmento(Nome, Perfil) :-
    conservador(Perfil).

viabilidade_ibovespa(Mes, Ano) :-
    % TO-DO Por enquanto isso só pega um Ano/Mês específico. Tem que dar um jeito de pegar todos meses até Mes e Ano.
    A1 is Ano - 1,
    findall(V1, taxa_ibovespa(Mes, A1, V1), Vs1),
    sum_list(Vs1, Fator1),
    % Achar todos os Valores V que existam para esse Mes e Ano e colocá-los em Vs
    findall(V, taxa_ibovespa(Mes, Ano, V2), Vs2),
    % Somar todos valores de Vs em Fator.
    sum_list(Vs2, Fator2),
    Fator1 < Fator2,
    viavel('Ibovespa'). 

poupanca_adequada(Nome, Min) :-
    cliente(Nome,_,_,Poupado,_,_,Dependentes,_),
    Min is Dependentes+1 * 5000,
    Poupado >= Min.

poupanca_valida(Nome) :-
    cliente(Nome,_,_,Poupado,_,_,Dependentes,_),
    (Dependentes + 1) * 5000 =< Poupado. 

% Renda minima que o cara tem que ter
renda_minima(Nome, RendaMinima) :-
    cliente(Nome,_,_,_,_,_,Dependentes,_),
    RendaMinima is 15000 + (4000*Dependentes).

renda_adequada(Nome) :-
    cliente(Nome,_,_,_,Renda,_,_,_),
    renda_minima(Nome, RendaMinima),
    (Renda*12) > RendaMinima. % renda do ano deve ser maior que a renda minima para ser adequada