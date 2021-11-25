# Tesztjegyzőkönyv-Szűrés és keresés műveletek

Az alábbi tesztdokumentum a Webshop projekthez tartozó 9.3.8.-9.3.9 Termékek szűrése/keresése funkcióihoz készült. Felelőse: Pető Patrik

## 1. Teszteljárások (TP)

### 1.1. Keresés funkció tesztelése 
- Azonosító: TP-01
- Tesztesetek: TC-01, TC-02, TC-03
- Leírás: keresés funkció tesztelése
    0. lépés: Nyissuk meg az főoldalt
    1. lépés: Az INPUT1 szövegbeviteli mezőbe írjunk be a TEXT1 szöveget
    2. lépés: Nyomjuk meg az SEARCH gombot 
    3. lépés: Ellenőrizzük az eredményt. Elvárt eredmény: RESULT_SEARCH

### 1.2. Szűrés funkció tesztelése
- Azonosító: TP-02
- Tesztesetek: TC-04
- Leírás: szűrés funkció tesztelése
    0. lépés: Nyissuk meg az főoldalt
    1. lépés: Kattintsunk a BUTTON gombra
    2. lépés: Ellenőrizzük az eredményt. Elvárt eredmény: RESULT_FILTER

## 2. Tesztesetek (TC)

### 2.1. Keresés funkció tesztesetei

#### 2.1.1. TC-01
- TP: TP-01
- Leírás: keresés funkció tesztelése 
- Bemenet: TEXT1=''
- Művelet: nyomjuk meg a SEARCH gombot 
- Elvárt kimenet: nem változik semmi

#### 2.1.2. TC-02
- TP: TP-01
- Leírás: keresés funkció tesztelése 
- Bemenet: TEXT: Random szöveg
- Művelet: nyomjuk meg a SEARCH gombot 
- Elvárt kimenet: A termékek helye üres lesz

#### 2.1.3. TC-03
- TP: TP-01
- Leírás: keresés funkció tesztelése 
- Bemenet: TEXT: Egy termék neve
- Művelet: nyomjuk meg a SEARCH gombot 
- Elvárt kimenet: A termékek helyén a TEXT nevű termék jelenik meg

### 2.2. Szűrés funkció tesztesetei

#### 2.2.1. TC-04
- TP: TP-02
- Leírás: szűrés funkció tesztelése
- Bemenet: nincs
- Művelet: nyomjuk meg az BUTTON gombot 
- Elvárt kimenet: A BUTTON nevű szűrési feltételnek megfelelő összes termék megjelenése

## 3. Tesztriportok (TR)

### 3.1. Keresés funkció tesztriportjai

#### 3.1.1. TR-01 (TC-01)
- TP: TP-01
    1. lépés: ''-t beírtam
    2. lépés: a gomb megnyomása megtörtént
    4. lépés: helytelen redményt kaptam (termékek helye üres lett)
    

#### 3.1.2. TR-02 (TC-02)
- TP: TP-02
    1. lépés: 'alma'-t beírtam
    3. lépés: a gomb megnyomása megtörtént
    4. lépés: helyes eredményt kaptam (termékek helye üres lett)

#### 3.1.3. TR-03 (TC-03)
- TP: TP-03
    1. lépés: 'Tej'-et beírtam
    3. lépés: a gomb megnyomása megtörtént
    4. lépés: helyes eredményt kaptam ('Tej' nevű termék jelent meg)

### 3.2. Szűrés funkció tesztriportjai

#### 3.2.1. TR-01 (TC-01)
- TP: TP-01
    1. lépés: 'Hus' gombot megnyomtam
    2. lépés: helyes eredményt kaptam (Az összes hús termék megjelent)