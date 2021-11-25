# Tesztjegyzőkönyv-`Alapműveletek`

Az alábbi tesztdokumentum a Webshop projekthez tartozó 9.3.11. Kosár, 9.3.13. Rendelés, 9.3.14 Email funkciókhoz készült. Felelőse: Hirsch Ábel

## 1. Teszteljárások (TP)

### 1.1. Kosár funkció tesztelése 
- Azonosító: TP-01
- Tesztesetek: TC-01, TC-02, TC-03, TC-04
- Leírás: kosárban lévő termékek megjelenítése funkció tesztelése
    0. lépés: Nyissuk meg az alkalmazást, és navigáljunk a kosár fülre
	1. lépés: A termékhez tartozó + gombra nyomás
	2. lépés: Ellenőrizzük az eredményt. Elvárt eredmény: termék Mennyiség növekedése
	3. lépés: A termékhez tartozó - gombra nyomás
	4. lépés: Ellenőrizzük az eredményt. Elvárt eredmény: termék Mennyiség csökkenése
	5. lépés: A termékhez tartozó TÖRLÉS gombra nyomás
    6. lépés: Ellenőrizzük az eredményt. Elvárt eredmény: termék törlése a kosárból

### 1.2. Rendelés funkció tesztelése
- Azonosító: TP-02
- Tesztesetek: TC-01
- Leírás: Rendelés funkció tesztelése
    0. lépés: Nyissuk meg az alkalmazást, és navigáljunk a kosár fülre
    1. lépés: A SZÁLLÍTÁSI_CÍM szövegbeviteli mezőbe írjuk be a SZALCIM szöveget
    2. lépés: Nyomjuk meg a Megrendelem gombot
    3. lépés: Ellenőrizzük az eredményt. Elvárt eredmény: rendelés illetve rendelt_kosár adatbázis bővítése, kosár ürítése
	
### 1.3. Email funkció tesztelése
- Azonosító: TP-03
- Tesztesetek: TC-01, TC-2
- Leírás: Rendelés funkció tesztelése
    0. lépés: Nyissuk meg az alkalmazást, és navigáljunk a kosár fülre
    1. lépés: A SZÁLLÍTÁSI_CÍM szövegbeviteli mezőbe írjuk be a SZALCIM szöveget
    2. lépés: Nyomjuk meg a Megrendelem gombot
	3. lépés: Ellenőrizzük az eredményt. Elvárt eredmény: Honti Szabolcs email címére (mivel felhasználói munkamenet nincs) elküldi a kosárban elhelyezett termékek nevét

## 2. Teszesetek (TC)

### 2.1. Kosár funkció tesztesetei

#### 2.1.1. TC-01
- TP: TP-01
- Leírás: + gomb tesztelése 
- Bemenet: jelenlegi Mennyiség: 1
- Művelet: nyomjuk meg a + gombot 
- Elvárt kimenet: a termék Mennyiség növekedése 1-el: jelenlegi Mennyiség: 2

#### 2.1.2. TC-02
- TP: TP-01
- Leírás: - gomb tesztelése 
- Bemenet: jelenlegi Mennyiség: 1
- Művelet: nyomjuk meg a - gombot 
- Elvárt kimenet: a termék Mennyiség csökkenése 1-el, ha jelenlegi Mennyiség nem 1: jelenlegi Mennyiség: 1

#### 2.1.3. TC-03
- TP: TP-01
- Leírás: - gomb tesztelése 
- Bemenet: jelenlegi Mennyiség: 2
- Művelet: nyomjuk meg a - gombot 
- Elvárt kimenet: a termék Mennyiség csökkenése 1-el, ha jelenlegi Mennyiség nem 1: jelenlegi Mennyiség: 1

#### 2.1.4. TC-04
- TP: TP-01
- Leírás: Törlés gomb tesztelése 
- Bemenet: egy termék
- Művelet: nyomjuk meg a Törlés gombot 
- Elvárt kimenet: a termék törlése a kosárból: a termék törlődött a kosárból

### 2.2. Rendelés funkció tesztesetei

#### 2.2.1. TC-01
- TP: TP-02
- Leírás: rendelés funkció tesztelése
- Bemenet: SZALCIM = "Szeged, Teszt utca 0."
- Művelet: nyomjuk meg az Megrendelem gombot 
- Elvárt kimenet: rendelés adatbázis bővítése a SZALCIM felhasználásával: a rendelés adatbázisba került a SZALCIM szövege

#### 2.2.2. TC-02
- TP: TP-02
- Leírás: rendelés funkció tesztelése
- Bemenet: SZALCIM = ""
- Művelet: nyomjuk meg az Megrendelem gombot 
- Elvárt kimenet: a rendelés nem hajtódik végre, mivel a cím üres: a rendelés adatbázisba került a SZALCIM szövege (az üres string)

### 2.3. Email funkció tesztesetei

#### 2.3.1. TC-01
- TP: TP-03
- Leírás: email funkció tesztelése
- Bemenet: kosárban legalább egy termék
- Művelet: nyomjuk meg az Megrendelem gombot 
- Elvárt kimenet: email küldése Honti Szabolcs címére a kosár tartalmával: email elküldve a címre a kosár tartalmával

#### 2.3.2. TC-02
- TP: TP-03
- Leírás: email funkció tesztelése
- Bemenet: kosárban nincs egy termék sem
- Művelet: nyomjuk meg az Megrendelem gombot 
- Elvárt kimenet: hiba, üres kosárral nem lehet rendelni: email elküldve a címre a kosár tartalmával (még ha a kosár üres is)

## 3. Tesztriportok (TR)

### 3.3. Kosár funkció tesztriportjai

#### 3.1.1. TR-01 (TC-01)
- TP: TP-01
	1. lépés: Az egyik kosárban lévő termékhez tartozó '+' gombra kattintottam
    2. lépés: Helyes eredményt kaptam (A kosárban lévő termék mennyisége megnőtt, a végösszeg helyesen nőtt)

#### 3.1.2. TR-02 (TC-02)
- TP: TP-01
	1. lépés: Az egyik kosárban lévő termékhez tartozó '-' gombra kattintottam (több, mint 1 darab volt benne)
    2. lépés: Helyes eredményt kaptam (A kosárban lévő termék mennyisége csökkent, a végösszeg helyesen csökkent)

#### 3.1.3. TR-03 (TC-03)
- TP: TP-01
	1. lépés: Az egyik kosárban lévő termékhez tartozó '-' gombra kattintottam (1 darab volt benne)
    2. lépés: Helyes eredményt kaptam (A kosárban lévő termék mennyisége nem lett 0, a végösszeg nem változott)

#### 3.1.4. TR-04 (TC-04)
- TP: TP-01
	1. lépés: Az egyik kosárban lévő termékhez tartozó 'Törlés' gombra kattintottam
    2. lépés: Helyes eredményt kaptam (A kosárban lévő termék eltűnt, a végösszeg helyesen csökkent)

### 3.1. Email funkció tesztriportjai

#### 3.3.1. TR-01 (TC-01)
- TP: TP-01
	1. lépés: Megnyitottam a főoldalt
	2. lépés: Rámentem a fakanál termékre
    3. lépés: Kosárba raktam a fakanál terméket
    4. lépés: Rámentem a kosár gombra
    5. lépés: Megnyomtam a megrendelés gombot
    6. lépés: Az email megjött és benne van a kosár tartalma
    
#### 3.3.2. TR-02 (TC-02)
- TP: TP-01
    1. lépés: Megnyitottam a főoldalt
    2. lépés: Rámentem a kosár gombra
	3. lépés: Megnyomtam a megrendeles gombot
	4. lépés: Visszadobott a főoldalra, nem kaptam hibaüzenetet
    3. lépés: Email megjött, nem volt benne semmi, ez hibás kimenet