# mobile-responsive-user-panel
Mobile Responsive User Panel ASP.NET | C# Code


### Ekran Görüntüleri - ScreenShot

### Giriş Yap - Login
![Giriş Yap](https://i.imgur.com/kFbTa1c.jpg)

### Kayıt Ol - Register
![Kayıt Ol](https://i.imgur.com/UkBRLN0.jpg)

### Yönlendirici - Router
![Yönlendirici](https://i.imgur.com/chMXmvv.jpg)

## Kurulum - Installation
Dosyaları indirdikten sonra dosya içerisinde bulunan SQL(userpanel.sql)'imizi MSSQL'e entegre edeceğiz, ASP.NET kısmında SQL kısımlarının gerekli yerlerini kendi localhostumuza göre değiştirip kullanacağız.
### Değiştirilmesi gereken yerler
SqlConnection baglan = new SqlConnection(@"Data Source=LOCALHOST;Initial Catalog=VERİTABANIADI;Integrated Security=True");
##### LOCALHOST ve VERİTABANDIADI yazan kısımları kendinize göre değiştirin.

