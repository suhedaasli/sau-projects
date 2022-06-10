print("Beceri:Üstünse A1,A2; Çok İyiyse B1,B2; İyiyse C1,C2; Ortaysa D; Zayıfsa E1,E2; Çok Zayıfsa F1,F2")
print("Çaba:Üstünse A1,A2; Çok İyiyse B1,B2; İyiyse C1,C2; Ortaysa D; Zayıfsa E1,E2; Çok Zayıfsa F1,F2")
print("Koşullar:Üstünse A; Çok İyiyse B; İyiyse C; Ortaysa D; Zayıfsa E; Çok Zayıfsa F")
print("Tutarlılık:Üstünse A; Çok İyiyse B; İyiyse C; Ortaysa D; Zayıfsa E; Çok Zayıfsa F")
print("Yukarıdaki Bilgilere Uygun Değerleri Giriniz.")
n=int(input("Kaç kişi inceleyeceksiniz:"))
tp=0
for i in range(0,n,1):
    ad = input("Elemanın ismini giriniz:")
    while True:
        beceri = input("Beceri için değeri giriniz:")
        if beceri=="a1" or beceri=="A1":
            tp+=0.15
            print("Girdiğiniz Değer Üstün:0.15")
            break
        elif beceri=="a2" or beceri=="A2":
            tp+=0.13
            print("Girdiğiniz Değer Üstün:0.13")
            break
        elif beceri=="b1" or beceri=="B1":
            tp+=0.11
            print("Girdiğiniz Değer Çok İyi:0.11")
            break
        elif beceri=="b2" or beceri=="B2":
            tp+=0.08
            print("Girdiğiniz Değer Çok İyi:0.08")
            break
        elif beceri=="c1" or beceri == "C1":
            tp+=0.06
            print("Girdiğiniz Değer İyi:0.06")
            break
        elif beceri== "c2" or beceri== "C2":
            tp+= 0.03
            print("Girdiğiniz Değer İyi:0.03")
            break
        elif beceri=="d" or beceri == "D":
            tp+=0
            print("Girdiğiniz Değer Orta:0.00")
            break
        elif beceri=="e1" or beceri=="E1":
            tp-=0.05
            print("Girdiğiniz Değer Zayıf:-0.05")
            break
        elif beceri=="e2" or beceri=="E2":
            tp-=0.10
            print("Girdiğiniz Değer Zayıf:-0.10")
            break
        elif beceri=="f1" or beceri=="F1":
            tp-=0.16
            print("Girdiğiniz Değer Çok Zayıf:-0.16")
            break
        elif beceri=="F2" or beceri=="f2":
            tp-=0.22
            print("Girdiğiniz Değer Çok Zayıf:-0.22")
            break
        else:
            print("Lütfen Geçerli Bir Değer Giriniz!")
    while True:
        caba = input("Çaba için değeri giriniz:")
        if caba=="a1" or caba=="A1":
            tp+=0.13
            print("Girdiğiniz Değer Üstün:0.13")
            break
        elif caba=="a2" or caba=="A2":
            tp+=0.12
            print("Girdiğiniz Değer Üstün:0.12")
            break
        elif caba=="b1" or caba=="B1":
            tp+=0.10
            print("Girdiğiniz Değer Çok İyi:0.10")
            break
        elif caba=="b2" or caba=="B2":
            tp+=0.08
            print("Girdiğiniz Değer Çok İyi:0.08")
            break
        elif caba=="c1" or caba=="C1":
            tp+=0.05
            print("Girdiğiniz Değer İyi:0.05")
            break
        elif caba=="c2" or caba=="C2":
            tp+=0.02
            print("Girdiğiniz Değer İyi:0.02")
            break
        elif caba=="d" or caba=="D":
            tp+=0
            print("Girdiğiniz Değer Orta:0.00")
            break
        elif caba=="e1" or caba=="E1":
            tp-=0.04
            print("Girdiğiniz Değer Zayıf:-0.04")
            break
        elif caba=="e2" or caba=="E2":
            tp-=0.08
            print("Girdiğiniz Değer Zayıf:-0.08")
            break
        elif caba=="f1" or caba=="F1":
            tp-=0.12
            print("Girdiğiniz Değer Çok Zayıf:-0.12")
            break
        elif caba=="F2" or caba=="f2":
            tp-=0.17
            print("Girdiğiniz Değer Çok Zayıf:-0.17")
            break
        else:
            print("Lütfen Geçerli Bir Değer Giriniz!")
    while True:
        kosul=input("Koşullar için değeri giriniz:")
        if kosul=="a" or kosul=="A":
            tp+=0.06
            print("Girdiğiniz Değer Üstün:0.06")
            break
        elif kosul=="b" or kosul=="B":
            tp+=0.04
            print("Girdiğiniz Değer Çok İyi:0.04")
            break
        elif kosul=="c" or kosul=="C":
            tp+=0.02
            print("Girdiğiniz Değer İyi:0.02")
            break
        elif kosul=="d" or kosul=="D":
            tp+=0
            print("Girdiğiniz Değer Orta:0.00")
            break
        elif kosul=="e" or kosul=="E":
            tp-=0.03
            print("Girdiğiniz Değer Zayıf:-0.03")
            break
        elif kosul=="f" or kosul=="F":
            tp-=0.07
            print("Girdiğiniz Değer Çok Zayıf:-0.07")
            break
        else:
            print("Lütfen Geçerli Bir Değer Giriniz!")
    while True:
        tutarlilik = input("Tutarlılık için değeri giriniz:")
        if tutarlilik=="a" or tutarlilik=="A":
            tp+=0.04
            print("Girdiğiniz Değer Üstün:0.04")
            break
        elif tutarlilik=="b" or tutarlilik=="B":
            tp+=0.03
            print("Girdiğiniz Değer Çok İyi:0.03")
            break
        elif tutarlilik=="c" or tutarlilik=="C":
            tp+=0.01
            print("Girdiğiniz Değer İyi:0.01")
            break
        elif tutarlilik=="d" or tutarlilik=="D":
            tp+=0
            print("Girdiğiniz Değer Orta:0.00")
            break
        elif tutarlilik=="e" or "E":
            tp-=0.02
            print("Girdiğiniz Değer Zayıf:-0.02")
            break
        elif tutarlilik=="f" or tutarlilik=="F":
            tp-=0.04
            print("Girdiğiniz Değer Çok Zayıf:-0.04")
            break
        else:
            print("Lütfen Geçerli Bir Değer Giriniz!")
    print(ad,"Elemanının Tempo Değeri:",1+tp)
    tp=0