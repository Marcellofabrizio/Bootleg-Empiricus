%  cliente(name, age, profile, poupanca, renda, investimento, dependents, [])
%  Perfis: Conservador  Moderado  Arrojado
cliente(lucas, 28, moderado, 4000, 1200, 5000, 0, []).
cliente(gabriel, 24, arrojado, 50000, 10000, 20000, 2, []).
cliente(bettina, 22, conservador, 1000, 800, 200, 0, []).

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

poupanca_adequada(Poupado, Dependents, Min) :-
    Min is Dependents * 5000,
    Poupado >= Min.

poupanca_valida(Nome) :-
    cliente(Nome,_,_,Poupado,_,_,Dependentes,_),
    (Dependentes + 1) * 5000 =< Poupado. 