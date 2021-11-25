# Jegyzőkönyv-Biztonsági mentés, menü működése

Az alábbi tesztdokumentum a Webshop projekthez tartozó 9.3.4, 9.3.5 és 9.3.15 funkcióihoz készült. Felelőse: Tóth János.

## 1. Teszteljárások (TP)

### 1.1 Termékek megjelenítésének tesztelése
- Azonosító: TP-01
- Tesztesetek: TC-01, TC-02
- Leírás: A menü működése, termékek megjelenítése
	1. Az alkalmazás megnyitása után láthatóak az aktuális termékek és a kezelőfelület
	2. Minden gomb megfelelően látható és használható

### 1.2 Termékek kezeléséhez tartozó GUI tesztelése
- Azonosító: TP-02
- Tesztesetek: TC-01
- Leírás: Megjeleníti a kiválasztott termék lapját, és azt tudjuk módosítani
	1. A kiválaszott termékre rákattintva megnyitja az adot termék oldalát
	2. A `Módosítás` gombbal megnyitjuk a módosító oldalt

### 1.3 Biztonsági mentés tesztelése
- Azonosító: TP-03
- Tesztesetek: TC-01
- Leírás: Biztonsági mentés készítése
	1. A `Biztonsági mentés` gomb megnyomásával készíthetünk egy biztonsági mentést az alkalmazásunkról
	2. Visszavisz a termékek oldalra (főoldal)
	3. A biztonsági mentés egy dump.sql nevű SQL adatbázisként menti el a `config` mappába
	4. Ezt a mentést automatikusan beállítja a biztonsági mentés után

# 2. Tesztesetek (TC)

## 2.1 Termékek megjelenítésének tesztesetei

### 2.1.1. TC-01
- TP: TP-01
- Leírás: A menü működése, termékek megjelenítése
- Láthatóak a termékek és a kezelőfelület

### 2.1.2. TC-02
- TP: TP-01
- Leírás: A menü működése, termékek megjelenítése
- Gomb megnyomása: Bármelyik gomb megnyumása után a megfelelő oldalra visz
- A termékek gomb megnyomása után visszakerülünk a főoldalra.

## 2.2 Termékek kezeléséhez tartozó GUI tesztesetei

### 2.2.1 TC-01
- TP: TP-02
- Leírás: Megjeleníti a kiválasztott termék lapját, és azt tudjuk módosítani
- Kiválaszott termékre rányomva megnyitjuk a termék adatlapját
- Ott képesek vagyunk megnyitni a módosítás oldalt, vagy a kosárba tudjuk helyezni

## 2.3 Biztonsági mentés tesztesetei

### 2.3.1 TC-01
-TP: TP-03
-Leírás: Biztonsági mentés készítése
- A `Biztonsági mentés` gombra kattintva készül egy biztonsági mentés
- Az alkalmazás `config` mappájában a dump.sql fájl frissül
- Az alkalmazás visszalép a főoldalra
- A mentést betölti az alkalmazás

## 3. Tesztriportok (TR)

### 3.1. Biztonsági mentés funkció tesztriportjai

#### 3.1.1. TR-01 (TC-01)
- TP: TP-01
    1. lépés: Megnyitottam a főoldalt
    2. lépés: Rákattintottam a gombra
    3. lépés: Az oldal elkezd tölteni
	4. lépés: Abbahagyja és a biztonsági mentés helyesen lefutott

