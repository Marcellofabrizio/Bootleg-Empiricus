%  cliente(nome, perfil, poupanca, renda, investimento, dependentes)
% Perfil define quanto risco que o cara tá disposto a tomar.
cliente(sommerville, moderado   ,  5000,  1200,  5000, 0).
cliente(pressman   , arrojado   , 50000, 10000, 20000, 2).
cliente(bettina    , conservador,  1000,   800,   200, 0).
cliente(marcelino  , conservador,  10000,   8000,   2000, 0).

%investir(pressman,7, 2021).
%investir(pressman,10, 2020).
%investir(bettina,03, 2022).

%======== TESOURO SELIC ========%
taxa_selic(1, 2018, 0.5924).
taxa_selic(2, 2018, 0.4723).
taxa_selic(3, 2018, 0.5402).
taxa_selic(4, 2018, 0.5262).
taxa_selic(5, 2018, 0.5262).
taxa_selic(6, 2018, 0.5262).
taxa_selic(7, 2018, 0.5513).
taxa_selic(8, 2018, 0.5764).
taxa_selic(9, 2018, 0.4759).
taxa_selic(10, 2018, 0.5513).
taxa_selic(11, 2018, 0.5513).
taxa_selic(12, 2018, 0.5011).
taxa_selic(1, 2019, 0.5513).
taxa_selic(2, 2019, 0.5011).
taxa_selic(3, 2019, 0.4759).
taxa_selic(4, 2019, 0.5262).
taxa_selic(5, 2019, 0.5513).
taxa_selic(6, 2019, 0.4759).
taxa_selic(7, 2019, 0.5764).
taxa_selic(8, 2019, 0.5100).
taxa_selic(9, 2019, 0.4717).
taxa_selic(10, 2019, 0.4880).
taxa_selic(11, 2019, 0.3880).
taxa_selic(12, 2019, 0.3827).
taxa_selic(1, 2020, 0.3850).
taxa_selic(2, 2020, 0.3006).
taxa_selic(3, 2020, 0.3468).
taxa_selic(4, 2020, 0.2926).
taxa_selic(5, 2020, 0.2435).
taxa_selic(6, 2020, 0.2205).
taxa_selic(7, 2020, 0.2033).
taxa_selic(8, 2020, 0.1681).
taxa_selic(9, 2020, 0.1652).
taxa_selic(10, 2020, 0.1652).
taxa_selic(11, 2020, 0.1573).
taxa_selic(12, 2020, 0.1730).
taxa_selic(1, 2021, 0.1573).
taxa_selic(2, 2021, 0.1415).
taxa_selic(3, 2021, 0.2100).
taxa_selic(4, 2021, 0.2155).
taxa_selic(5, 2021, 0.2784).
taxa_selic(6, 2021, 0.3158).
taxa_selic(7, 2021, 0.3640).
taxa_selic(8, 2021, 0.4363).
taxa_selic(9, 2021, 0.4499).
taxa_selic(10, 2021, 0.4935).
taxa_selic(11, 2021, 0.5942).
taxa_selic(12, 2021, 0.7775).
taxa_selic(1, 2022, 0,7619).
taxa_selic(2, 2022, 0,7400).

investe_selic(Mes, Ano, Meses) :-
    viabilidade_selic(Mes, Ano, Meses),
    write('Taxa Selic está em crescimento e adequada para investir.'), nl,!.
investe_selic(_,_,_) :-
    write('Taxa Selic está em queda, rever seus investimentos nela.'),nl.

viabilidade_selic(Mes, Ano, Meses) :-
    periodo(Mes, Ano, MesIni, AnoIni, Meses),
    calcula_selic(Mes, Ano, MesIni, AnoIni, Atual),
    periodo(MesIni, AnoIni, MesIniAnt, AnoIniAnt, Meses),
    calcula_selic(MesIni, AnoIni, MesIniAnt, AnoIniAnt, Ultimo),
    Atual > Ultimo.

calcula_selic(Mes, Ano, MesIni, AnoIni, Total) :-
    Mes == MesIni, Ano == AnoIni,
    taxa_selic(Mes, Ano, Total).
calcula_selic(MesAtu, AnoAtu, MesIni, AnoIni, Total) :-
    periodo(MesAtu, AnoAtu, Mes, Ano, 2),
    taxa_selic(MesAtu, AnoAtu, T),
    calcula_selic(Mes, Ano, MesIni, AnoIni, Taxa),
    Total is Taxa + T, !.


%====== DOLAR ======%

taxa_dolar(01, 2018, 3,1859). 
taxa_dolar(02, 2018, 3,2462). 
taxa_dolar(03, 2018, 3,3051). 
taxa_dolar(04, 2018, 3,5072). 
taxa_dolar(05, 2018, 3,7235). 
taxa_dolar(06, 2018, 3,8771). 
taxa_dolar(07, 2018, 3,7564). 
taxa_dolar(08, 2018, 4,0556). 
taxa_dolar(09, 2018, 4,0491). 
taxa_dolar(10, 2018, 3,7220). 
taxa_dolar(11, 2018, 3,8669). 
taxa_dolar(12, 2018, 3,8812). 
taxa_dolar(01, 2019, 3,6440). 
taxa_dolar(02, 2019, 3,7514). 
taxa_dolar(03, 2019, 3,9247). 
taxa_dolar(04, 2019, 3,9215). 
taxa_dolar(05, 2019, 3,9228). 
taxa_dolar(06, 2019, 3,8520). 
taxa_dolar(07, 2019, 3,8129). 
taxa_dolar(08, 2019, 4,1454). 
taxa_dolar(09, 2019, 4,1556). 
taxa_dolar(10, 2019, 4,0184). 
taxa_dolar(11, 2019, 4,2367). 
taxa_dolar(12, 2019, 4,0195). 
taxa_dolar(01, 2020, 4,2824). 
taxa_dolar(02, 2020, 4,4735). 
taxa_dolar(03, 2020, 5,2054). 
taxa_dolar(04, 2020, 5,4876). 
taxa_dolar(05, 2020, 5,3370). 
taxa_dolar(06, 2020, 5,4672). 
taxa_dolar(07, 2020, 5,2242). 
taxa_dolar(08, 2020, 5,4928). 
taxa_dolar(09, 2020, 5,6120). 
taxa_dolar(10, 2020, 5,7460). 
taxa_dolar(11, 2020, 5,3323). 
taxa_dolar(12, 2020, 5,1940). 
taxa_dolar(01, 2021, 5,4630). 
taxa_dolar(02, 2021, 5,5989). 
taxa_dolar(03, 2021, 5,6333). 
taxa_dolar(04, 2021, 5,4368). 
taxa_dolar(05, 2021, 5,2183). 
taxa_dolar(06, 2021, 4,9696). 
taxa_dolar(07, 2021, 5,2134). 
taxa_dolar(08, 2021, 5,1508). 
taxa_dolar(09, 2021, 5,4433). 
taxa_dolar(10, 2021, 5,6388). 
taxa_dolar(11, 2021, 5,6244). 
taxa_dolar(12, 2021, 5,5713). 
taxa_dolar(01, 2022, 5,3046). 
taxa_dolar(02, 2022, 5,1599). 

investe_dolar(Mes, Ano, Meses) :-
    viabilidade_dolar(Mes, Ano, Meses),
    write('Dólar viável para compra.'), !.
investe_dolar(_, _, _) :-
    write('Dólar viável para venda.').

viabilidade_dolar(Mes, Ano, Meses) :-
    periodo(Mes, Ano, MesIni, AnoIni, Meses),
    calcula_dolar(Mes, Ano, MesIni, AnoIni, Atual),
    periodo(MesIni, AnoIni, MesIniAnt, AnoIniAnt, Meses),
    calcula_dolar(MesIni, AnoIni, MesIniAnt, AnoIniAnt, Ultimo),
    Atual > Ultimo.

calcula_dolar(Mes, Ano, MesIni, AnoIni, Total) :-
    Mes == MesIni, Ano == AnoIni,
    fechamento_ibovespa(Mes, Ano, Total).
calcula_dolar(MesAtu, AnoAtu, MesIni, AnoIni, Total) :-
    periodo(MesAtu, AnoAtu, Mes, Ano, 2), % Não mexer nesse 2! É o decremento de um mês.
    fechamento_ibovespa(MesAtu, AnoAtu, T),
    calcula_dolar(Mes, Ano, MesIni, AnoIni, Taxa),
    Total is Taxa + T, !.


%========= CDI =========%
%  taxas(Mes, Ano, Valor)
taxa_cdi(01, 2018, 0.5800).
taxa_cdi(02, 2018, 0.4600).
taxa_cdi(03, 2018, 0.5300).
taxa_cdi(04, 2018, 0.5200).
taxa_cdi(05, 2018, 0.5200).
taxa_cdi(06, 2018, 0.5200).
taxa_cdi(07, 2018, 0.5400).
taxa_cdi(08, 2018, 0.5700).
taxa_cdi(09, 2018, 0.4700).
taxa_cdi(10, 2018, 0.5400).
taxa_cdi(11, 2018, 0.4900).
taxa_cdi(12, 2018, 0.4900).
taxa_cdi(01, 2019, 0.5400).
taxa_cdi(02, 2019, 0.4900).
taxa_cdi(03, 2019, 0.4700).
taxa_cdi(04, 2019, 0.5200).
taxa_cdi(05, 2019, 0.5400).
taxa_cdi(06, 2019, 0.4700).
taxa_cdi(07, 2019, 0.5700).
taxa_cdi(08, 2019, 0.5000).
taxa_cdi(09, 2019, 0.4600).
taxa_cdi(10, 2019, 0.4800).
taxa_cdi(11, 2019, 0.3800).
taxa_cdi(12, 2019, 0.3700).
taxa_cdi(01, 2020, 0.3800).
taxa_cdi(02, 2020, 0.2900).
taxa_cdi(03, 2020, 0.3400).
taxa_cdi(04, 2020, 0.2800).
taxa_cdi(05, 2020, 0.2400).
taxa_cdi(06, 2020, 0.2100).
taxa_cdi(07, 2020, 0.1900).
taxa_cdi(08, 2020, 0.1600).
taxa_cdi(09, 2020, 0.1600).
taxa_cdi(10, 2020, 0.1600).
taxa_cdi(11, 2020, 0.1500).
taxa_cdi(12, 2020, 0.1600).
taxa_cdi(01, 2021, 0.1500).
taxa_cdi(02, 2021, 0.1300).
taxa_cdi(03, 2021, 0.2000).
taxa_cdi(04, 2021, 0.2100).
taxa_cdi(05, 2021, 0.2700).
taxa_cdi(06, 2021, 0.3100).
taxa_cdi(07, 2021, 0.3600).
taxa_cdi(08, 2021, 0.4300).
taxa_cdi(09, 2021, 0.4400).
taxa_cdi(10, 2021, 0.4900).
taxa_cdi(11, 2021, 0.5900).
taxa_cdi(12, 2021, 0.7700).
taxa_cdi(01, 2022, 0.7300).
taxa_cdi(02, 2022, 0.7600).

investe_cdb(Mes, Ano, Meses) :-
    viabilidade_cdi(Mes, Ano, Meses),
    write('CDI está em alta e recomendamos o invetimento em CDB.'),nl, !.
investe_cdb(_, _, _) :-
    write('CDI está em baixa e recomendamos rever seus investimentos no CDB.'),nl.

% Por enquanto, só soma todos os valores dos _Meses meses até _MesFin/_AnoFin.
viabilidade_cdi(Mes, Ano, Meses) :-
    periodo(Mes, Ano, MesIni, AnoIni, Meses),
    calcula_cdi(Mes, Ano, MesIni, AnoIni, Atual),
    periodo(MesIni, AnoIni, MesIniAnt, AnoIniAnt, Meses),
    calcula_cdi(MesIni, AnoIni, MesIniAnt, AnoIniAnt, Ultimo),
    Atual > Ultimo.

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

investe_ibovespa(Mes, Ano, Meses) :-
    viabilidade_ibovespa(Mes, Ano, Meses),
    write('Ibovespa viável para compra.'),nl, !.
investe_ibovespa(_,_,_) :-
    write('Ibovespa viável para a venda.').

viabilidade_ibovespa(Mes, Ano, Meses) :-
    periodo(Mes, Ano, MesIni, AnoIni, Meses),
    calcula_ibovespa(Mes, Ano, MesIni, AnoIni, Atual),
    periodo(MesIni, AnoIni, MesIniAnt, AnoIniAnt, Meses),
    calcula_ibovespa(MesIni, AnoIni, MesIniAnt, AnoIniAnt, Ultimo),
    Atual > Ultimo.

calcula_ibovespa(Mes, Ano, MesIni, AnoIni, Total) :-
    Mes == MesIni, Ano == AnoIni,
    fechamento_ibovespa(Mes, Ano, Total).
calcula_ibovespa(MesAtu, AnoAtu, MesIni, AnoIni, Total) :-
    periodo(MesAtu, AnoAtu, Mes, Ano, 2), % Não mexer nesse 2! É o decremento de um mês.
    fechamento_ibovespa(MesAtu, AnoAtu, T),
    calcula_ibovespa(Mes, Ano, MesIni, AnoIni, Taxa),
    Total is Taxa + T, !.


%=================== OUTROS PREDICADOS ===================%
% Predicado pra pegar os _Meses últimos meses até _MesFin/_AnoFin.
% O mês atual conta como 1 mês, então pra voltar 1, _Meses tem que ser 2.
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

perfil(Nome):-
	poupanca_adequada(Nome),
    renda_adequada(Nome), 
    write("O perfil de "),
	write(Nome),
	write(" é arrojado."),!.
perfil(Nome):-
	poupanca_adequada(Nome),
    write("O perfil de "),
	write(Nome),
    write(" é moderado."),!.
perfil(Nome):- 
    write("O perfil de "),
    write(Nome),
	write(" é conservador."),!.

poupanca_adequada(Nome) :-
    cliente(Nome,_,Poupado,_,_,Dependentes),
    (Dependentes + 1) * 5000 =< Poupado. 


% Renda minima que o cara tem que ter
renda_minima(Nome, RendaMinima) :-
    cliente(Nome,_,_,_,_,Dependentes),
    RendaMinima is 15000 + (4000*Dependentes).
renda_adequada(Nome) :-
    cliente(Nome,_,_,Renda,_,_),
    renda_minima(Nome, RendaMinima),
    (Renda*12) > RendaMinima. % renda do ano deve ser maior que a renda minima para ser adequada


investir(Nome, Mes, Ano) :-
    renda_alta(Nome),
    cliente(Nome, arrojado, _, _, _, _),
    investe_ibovespa(Mes, Ano, 2).
investir(Nome, Mes, Ano) :-
    renda_alta(Nome),
    cliente(Nome, moderado, _, _, _, _),
    viabilidade_dolar(Mes, Ano, 3). 
investir(Nome, _, _) :-
    renda_alta(Nome),
    cliente(Nome, conservador, _, _, _, _),
    write('Investir em LCI/LCA.').
investir(Nome, Mes, Ano) :-
    renda_media(Nome),
    cliente(Nome, arrojado, _, _, _, _),
    investe_selic(Mes, Ano, 3).
    % write('Investir no Tesouro Público.').
investir(Nome, Mes, Ano) :-
    renda_media(Nome),
    cliente(Nome, conservador, _, _, _, _),
    investe_cdb(Mes, Ano, 3).
investir(Nome, _, _) :-
    renda_baixa(Nome),
    write('Poupanca'), !.

