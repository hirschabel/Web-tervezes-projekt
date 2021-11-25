# Tesztjegyzőkönyv-Felhasználói munkamenet

Az alábbi tesztdokumentum a Webshop projekthez tartozó 9.4.3 korábbi hiányzó funkciókhoz(felhasználói munkamenet) készült. Felelőse: Honti Szabolcs

## 1. Teszteljárások (TP)

### 1.1. Regisztráció funkció tesztelése 
- Azonosító: TP-01
- Tesztesetek: TC-01, TC-02
- Leírás: regisztráció funkció tesztelése
    0. lépés: Nyissuk meg az főoldalt
    1. lépés: Navigáljunk a Regisztráció fülre
    2. lépés: Írjuk az INPUT1 mezőbe a TEXT1 szöveget
    3. lépés: Írjuk az INPUT2 mezőbe a TEXT2 szöveget
    4. lépés: Írjuk az INPUT3 mezőbe a TEXT3 szöveget
    5. lépés: Írjuk az INPUT4 mezőbe a TEXT4 szöveget
    6. lépés: Írjuk az INPUT5 mezőbe a DATUM1 szöveget
    7. lépés: Nyomjuk meg a 'Regisztráció' gombot
    8. lépés: Ellenőrizzük az eredményt. Elvárt eredmény: sikeres regisztráció és az adatok felkerülnek az adatbázisba

### 1.2. Belépés funkció tesztelése 
- Azonosító: TP-02
- Tesztesetek: TC-03, TC-04, TC-05
- Leírás: belépés funkció tesztelése
    0. lépés: Nyissuk meg az főoldalt
    1. lépés: Navigáljunk a Bejelentkezés fülre
    2. lépés: Írjuk az INPUT1 mezőbe a TEXT1 szöveget
    3. lépés: Írjuk az INPUT2 mezőbe a TEXT2 szöveget
    4. lépés: Nyomjuk meg a 'Bejelentkezés' gombot
    5. lépés: Ellenőrizzük az eredményt. Elvárt eredmény: sikeres bejelentkezés

## 2. Tesztesetek (TC)

### 2.1. Regisztráció funkció tesztesetei

#### 2.1.1. TC-01
- TP: TP-01
- Leírás: regisztráció funkció tesztelése 
- Bemenet: TEXT1='név' TEXT2='email@gmail.com' TEXT3='jelszó' TEXT4='Salgótarján' DATUM1='2001. 08. 26.'
- Művelet: nyomjuk meg a Regisztráció gombot 
- Elvárt kimenet: az adatok felkerülnek az adatbázisba; átnavigál a Belépés oldalra, kiírja: 'Sikeres regisztráció!'

#### 2.1.2. TC-02
- TP: TP-01
- Leírás: regisztráció funkció tesztelése 
- Bemenet: TEXT1=egy már létező felhasználó neve('név', amit előzőleg hoztunk létre) TEXT2='email@gmail.com' TEXT3='jelszó' TEXT4='Salgótarján' DATUM1='2001. 08. 26.'
- Művelet: nyomjuk meg a Regisztráció gombot 
- Elvárt kimenet: az adatok nem felkerülnek az adatbázisba; 'A név nevű felhasználó már létezik!'

### 2.2. Bejelentkezés funkció tesztesetei

#### 2.2.1. TC-03
- TP: TP-02
- Leírás: bejelentkezés funkció tesztelése 
- Bemenet: TEXT1='név' TEXT2='jelszó'
- Művelet: nyomjuk meg a Belépés gombot 
- Elvárt kimenet: Átnavigál a főoldalra és a felhasználó számára elérhető oldalak(pl.:Kosár) megjelennek

#### 2.2.1. TC-04
- TP: TP-02
- Leírás: bejelentkezés funkció tesztelése 
- Bemenet: TEXT1='' TEXT2='jelszó'
- Művelet: nyomjuk meg a Belépés gombot 
- Elvárt kimenet: Sikertelen bejelentkezés!

#### 2.2.1. TC-05
- TP: TP-02
- Leírás: bejelentkezés funkció tesztelése 
- Bemenet: TEXT1='név' TEXT2=''
- Művelet: nyomjuk meg a Belépés gombot 
- Elvárt kimenet: Sikertelen bejelentkezés!

## 3. Tesztriportok (TR)

### 3.1. Regisztráció funkció tesztriportjai

#### 3.1.1. TR-01 (TC-01)
- TP: TP-01
    1. lépés: Elmentem a Regisztráció oldalra
    2. lépés: név-t, email@gmail.com-t, jelszó-t, Salgótarján-t, 2001. 08. 26.-t beírtam
    3. lépés: a gomb egyszeri megnyomás után inaktív lett
    4. lépés: helyes eredményt kaptam ('Sikeres regisztráció!' és az adatok felkerültek az adatbázisba)

#### 3.1.2. TR-01 (TC-02)
- TP: TP-01
    1. lépés: Elmentem a Regisztráció oldalra
    2. lépés: név-t, email@gmail.com-t, jelszó-t, Salgótarján-t, 2001. 08. 26.-t beírtam
    3. lépés: a gomb egyszeri megnyomás után inaktív lett
    4. lépés: helyes eredményt kaptam (A név nevű felhasználó már létezik! és az adatok nem felkerültek az adatbázisba)
    
### 3.2. Bejelentkezés funkció tesztriportjai
a bejelentkezés nem lett megvalósítva