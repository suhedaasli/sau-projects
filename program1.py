print("Beceri:Üstünse A1=+0.15,A2=+0.13; Çok İyiyse B1=+0.11,B2=+0.08; İyiyse C1=+0.06,C2=+0.03; Ortaysa D=0.00; Zayıfsa E1=-0.05,E2=-0.10; Çok Zayıfsa F1=-0.16,F2=-0.22")
print("Çaba:Üstünse A1=+0.13,A2=+0.12; Çok İyiyse B1=+0.10,B2=+0.08; İyiyse C1=+0.05,C2=+0.02; Ortaysa D=0.00; Zayıfsa E1=-0.04,E2=-0.08; Çok Zayıfsa F1=-0.12,F2=-0.17")
print("Koşullar:Üstünse A=+0.06; Çok İyiyse B=+0.04; İyiyse C=+0.02; Ortaysa D=0.00; Zayıfsa E=-0.03; Çok Zayıfsa F=-0.07")
print("Tutarlılık : Üstünse A=+0.04; Çok İyiyse B=+0.03; İyiyse C=+0.01; Ortaysa D=0.00; Zayıfsa E=-0.02; Çok Zayıfsa F=-0.04")
print("Yukarıdaki Bilgilere Uygun Değerleri Giriniz.")
tp=[]
td=0
n= int(input("Kaç kişi inceleyeceksiniz:"))
for i in range(0,n,1):
    ad = input("Elemanın ismini giriniz:")
    while True:
        beceri = float(input("Beceri için değeri giriniz:"))
        if beceri == 0.15:
            print("Becerisi Üstün A1")
            break
        elif beceri == 0.13:
            print("Becerisi Üstün A2")
            break
        elif beceri == 0.11:
            print("Becerisi Çok İyi B1")
            break
        elif beceri == 0.08:
            print("Becerisi Çok İyi B2")
            break
        elif beceri == 0.06:
            print("Becerisi İyi C1")
            break
        elif beceri == 0.03:
            print("Becerisi İyi C2")
            break
        elif beceri == 0:
            print("Becerisi Orta D")
            break
        elif beceri == -0.05:
            print("Becerisi Zayıf E1")
            break
        elif beceri == -0.10:
            print("Becerisi Zayıf E2")
            break
        elif beceri == -0.16:
            print("Becerisi Çok Zayıf F1")
            break
        elif beceri == -0.22:
            print("Becerisi Çok Zayıf F2")
            break
        else:
            print("Lütfen Verilen Değerlerden Giriniz!")
    tp.append(beceri)
    while True:
        caba = float(input("Çaba için değeri giriniz:"))
        if caba == 0.13:
            print("Çabası Üstün A1")
            break
        elif caba == 0.12:
            print("Çabası Üstün A2")
            break
        elif caba == 0.10:
            print("Çabası Çok İyi B1")
            break
        elif caba == 0.08:
            print("Çabası Çok İyi B2")
            break
        elif caba == 0.05:
            print("Çabası İyi C1")
            break
        elif caba == 0.02:
            print("Çabası İyi C2")
            break
        elif caba == 0:
            print("Çabası Orta D")
            break
        elif caba == -0.04:
            print("Çabası Zayıf E1")
            break
        elif caba == -0.08:
            print("Çabası Zayıf E2")
            break
        elif caba == -0.12:
            print("Çabası Çok Zayıf F1")
            break
        elif caba == -0.17:
            print("Çabası Çok Zayıf F2")
            break
        else:
            print("Lütfen Verilen Değerlerden Giriniz!")
    tp.append(caba)
    while True:
        kosul = float(input("Koşullar için değeri giriniz:"))
        if kosul == 0.06:
            print("Koşullar Üstün A")
            break
        elif kosul == 0.04:
            print("Koşullar Çok İyi B")
            break
        elif kosul == 0.02:
            print("Koşullar İyi C")
            break
        elif kosul == 0:
            print("Koşullar Orta D")
            break
        elif kosul == -0.03:
            print("Koşullar Zayıf E")
            break
        elif kosul == -0.07:
            print("Koşullar Çok Zayıf F")
            break
        else:
            print("Lütfen Verilen Değerlerden Giriniz!")
    tp.append(kosul)
    while True:
        tutarlilik = float(input("Tutarlılık için değeri giriniz:"))
        if tutarlilik == 0.04:
            print("Tutarlılık Üstün A")
            break
        elif tutarlilik == 0.03:
            print("Tutarlılık Çok iyi B")
            break
        elif tutarlilik == 0.01:
            print("Tutarlılık İyi C")
            break
        elif tutarlilik == 0:
            print("Tutarlılık Orta D")
            break
        elif tutarlilik == -0.02:
            print("Tutarlılık Zayıf E")
            break
        elif tutarlilik == -0.04:
            print("Tutarlılık Çok Zayıf F")
            break
        else:
            print("Lütfen Verilen Değerlerden Giriniz!")
    tp.append(tutarlilik)
    for i in tp:
        td += i
    print(ad, "Elemanının Tempo Değeri:", 1 + td)
    tp.clear()
    td=0

