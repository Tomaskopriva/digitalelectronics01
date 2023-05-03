# Projekt VHDL : Vysílač a příjmač Morseovy abecedy

## Team Mates

* Tomáš Kopřiva
* Michal Hurych


## Teoretický popis a funkčnost

Program obsahuje soubor morse_code.vhd, který definuje modul morse_code. Tento modul přijímá čtyřbitový vstup sw (přepínače) a ovládá osmibitový výstup led (LED diody) na desce Nexys A7 50T. Modul implementuje převod vstupního kódu Morseovy abecedy na výstupní řízení LED diod, které simulují přenos Morseovy komunikace.

Kód pro jednotlivé Morseovy znaky je implementován pomocí sekvencí zapnutí a vypnutí LED diod v určeném časovém intervalu. Krátká doba (dot_length) reprezentuje tečku a dlouhá doba (dash_length) reprezentuje pomlku. V modulu jsou definovány konstanty pro tyto časy.

Testbench soubor morse_code_tb.vhd je použit k otestování modulu morse_code. Testbench generuje hodinový signál (clk_tb), který se přivádí na modul. Následně se v testbenchu nastavuje sekvence přepínačů (sw_tb) pro jednotlivé Morseovy znaky a čeká se na určitý časový interval mezi testovacími případy.

Po spuštění simulace se modul morse_code chová tak, že při nastavení vstupního přepínače na kód Morseovy abecedy (reprezentovaný pomocí binárního vektoru sw) generuje odpovídající sekvenci zapnutí a vypnutí LED diod na desce Nexys A7 50T. Tím se simuluje přenos Morseovy komunikace na LED diodách.

Celkově lze říci, že program realizuje převod Morseovy abecedy na vizuální reprezentaci pomocí LED diod. Přepínače slouží k zadávání kódu Morseovy abecedy a LED diody reagují na vstupní kód tím, že svítí nebo nesvítí v souladu s definovanou sekvencí pro daný znak. Tím se umožňuje vizuální sledování Morseovy komunikace na desce Nexys A7 50T.


## Popis hardwaru

Deska Nexys A7 50T je vybavena FPGA (Field-Programmable Gate Array) čipem, který umožňuje programování a konfiguraci logických obvodů a jejich funkcí. FPGA na desce obsahuje programovatelné hradlové pole, paměťové prvky a další logické bloky, které mohou být propojeny a konfigurovány k vytvoření různých logických obvodů a funkcionalit.

V rámci Morseova kódování na desce Nexys A7 50T jsou využity čtyři přepínače (sw) pro zadávání Morseovy abecedy. Každý přepínač odpovídá jednomu bitu vstupního čtyřbitového vektoru, který reprezentuje kód daného Morseova znaku.

Výstupní část hardwaru je realizována pomocí osmi LED diod (led), které jsou na desce umístěny ve formě čtveřic (LED 1-4, LED 5-8). Každá LED dioda je řízena jedním bitem výstupního osmibitového vektoru. V závislosti na vstupním kódu Morseovy abecedy se jednotlivé LED diody budou zapínat nebo vypínat, aby vizuálně reprezentovaly přenos Morseovy komunikace.

Celý hardware je implementován pomocí programovacího jazyka VHDL (VHSIC Hardware Description Language), který je použit pro popis chování logických obvodů a jejich vztahů. Pomocí VHDL kódu jsou definovány vstupy, výstupy a logika pro převod Morseovy abecedy na řízení LED diod.

Po úspěšném sestavení a konfiguraci FPGA na desce Nexys A7 50T je možné využít přepínače pro zadávání Morseovy abecedy a pozorovat výstup na LED diodách, které reagují na zadaný kód Morseovy abecedy tím, že svítí nebo nesvítí v souladu s definovanou sekvencí pro daný znak. Tím se simuluje vizuální přenos Morseovy komunikace na desce.








## Simulace



*******************

Legenda k signálům:




