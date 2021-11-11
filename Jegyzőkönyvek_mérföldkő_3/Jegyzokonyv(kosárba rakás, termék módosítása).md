# Tesztjegyzőkönyv-kosárba helyezés % termék módosítása

Az alábbi tesztdokumentum a webshop projekthez tartozó 9.3.11.  Kosár kezeléshez tartozó üzleti logika és 9.3.6.  Termékek kezeléséhez tartozó üzleti logika funkcióihoz készült. Felelőse: Honti Szabolcs

## 1. Teszteljárások (TP)

### 1.1. Kosárba helyezés funkció tesztelése
- Azonosító: TP-01
- Tesztesetek: TC-01
- Leírás: kosárba helyezés funkció tesztelése
    0. lépés: Nyissuk meg az alkalmazást
    1. lépés: Kattintsunk egy termékre
    2. lépés: Nyomjuk meg a 'Kosárba' gombot
    3. lépés: Menjünk át a'Kosár' fülre
    4. lépés: Ellenőrizzük az eredményt. Elvárt eredmény: A kosár tartalmazza az általunk beletett terméket

### 1.2. Termékek módosítása funkció tesztelése
- Azonosító: TP-02
- Tesztesetek: TC-01
- Leírás: termékek módosítása
    0. lépés: Nyissuk meg az alkalmazást
    1. lépés: Kattintsunk egy termékre
    2. lépés: Nyomjuk meg a 'Módosítás' gombot 
    3. lépés: Módosítsuk a termék adatait
    4. lépés: Nyomjuk meg a 'Mentés' gombot
    5. lépés: Ellenőrízzük az eredményt. Elvárt eredmény: Az adatbázisban megváltoztak az adott termék adatai az általunk megadottakra

### 1.3. Termékek törlése funkció tesztelése
- Azonosító: TP-03
- Tesztesetek: TC-01
- Leírás: termékek törlése
    0. lépés: Nyissuk meg az alkalmazást
    1. lépés: Kattintsunk egy termékre
    2. lépés: Nyomjuk meg a 'Módosítás' gombot
    3. lépés: Nyomjuk meg a 'Törlés' gombot
    4. lépés: Ellenőrízzük az eredményt. Elvárt eredmény: Az adatbázisból kitörlődött az adott termék

## 2. Teszesetek (TC)

### 2.1. Kosárba helyezés funkció tesztesetei

#### 2.1.1. TC-01
- TP: TP-01
- Leírás: kosárba helyezés funkció tesztelése 
- Bemenet: az oldalon megjelenő termék
- Művelet: nyomjuk meg a 'Kosárba' gombot 
- Elvárt kimenet: a kosár tartalmazza a terméket, amit beletettünk

### 2.2. Termékek módosítása funkció tesztesetei

#### 2.2.1. TC-01
- TP: TP-02
- Leírás: termékek módosítása funkció tesztelése
- Bemenet: ár = 100, leírás = megváltozott termék, kép = product.jpg 
- Művelet: nyomjuk meg a 'Mentés' gombot 
- Elvárt kimenet: a megváltoztatott termék ára 100 lett, leírása 'megváltozott termék' lett és a product.jpg-t jeleníti meg

#### 2.2.2. TC-02
- TP: TP-02
- Leírás: termékek módosítása funkció tesztelése
- Bemenet: ár = 0, leírás = "", kép = "" 
- Művelet: nyomjuk meg a 'Mentés' gombot 
- Elvárt kimenet: a megváltoztatott termék ára 0 lett, leírása: nincs és a product.jpg-t jeleníti meg az főoldalon, a termék oldalán meg a termék nevét jeleníti meg

### 2.3. Termékek törlése funkció tesztesetei

#### 2.3.1. TC-01
- TP: TP-03
- Leírás: termékek törlése funkció tesztelése
- Bemenet: nincs
- Művelet: nyomjuk meg a 'Törlés' gombot 
- Elvárt kimenet: a termék törlődött az adtbázisból