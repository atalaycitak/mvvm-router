SwiftUI + UIKit Base Architecture Project

 Modern iOS uygulama geliştirme sürecinde güçlü bir temel oluşturmak için hazırlanmış bu proje;
SwiftUI, UIKit, MVVM Router Pattern ve Combine teknolojilerini harmanlayarak esnek, test edilebilir ve ölçeklenebilir bir yapı sunar.

Özellikler

 Base Architecture

BaseHostingController ile SwiftUI görünümlerini UIKit içinde güvenle kullanma.

BaseViewModel ile MVVM yaşam döngüsü yönetimi.

Router ile modüller arası kolay geçiş.

Router Navigation

push, present, dismiss, pop, popToRoot metodları ile güçlü yönlendirme.

UIKit + SwiftUI uyumlu navigasyon yapısı.

Modular Tasarım

Her ekran bağımsız bir modül olarak tasarlanmıştır.

Kolay ekleme / çıkarma imkanı.

Tab Bar Entegrasyonu

Kampanya, Ürünler, Keşfet vb. modüllerin tek çatı altında birleşmesi.

Combine ile Reactive State Management

@Published özelliklerle canlı veri akışı.



SceneDelegate: Uygulamanın giriş noktası ve tab bar kurulumu.

Router: Ekranlar arası yönlendirme.

BaseHostingController: SwiftUI ekranlarını UIKit ile entegre eder.

BaseViewModel: View yaşam döngüsünü yönetir.

SwiftUI View: Arayüz bileşenleri.

Service Layer: API, veri yönetimi vb.


 Kullanılan Teknolojiler
SwiftUI	Modern arayüz geliştirme framework’ü
UIKit	Klasik iOS UI framework’ü
Combine	Reactive programlama için Apple framework’ü
MVVM	Model-View-ViewModel mimarisi
Router Pattern	Modüller arası geçişin soyutlanması


	
	
 Geliştirici Notları

Router yapısı ile her modül bağımsız çalışabilir.

SceneDelegate üzerinden tab bar yönetimi yapılır.

Modüller arasındaki bağımlılık minimum seviyede tutulur.

Lisans

Bu proje MIT Lisansı ile lisanslanmıştır. Dilediğiniz gibi kullanabilir ve geliştirebilirsiniz.
