<div align="center" dir="rtl">
  <img src="assets/brand/logo.svg" width="150" alt="شعار الجمهورية العربية السورية" />
  <h1>بوابة درعا للاتصال</h1>
  <p><strong>Daraa Connect Portal</strong></p>
  <p>بوابة دخول عربية سريعة وآمنة لشبكات الإنترنت العامة في محافظة درعا.</p>

  <p>
    <img src="https://img.shields.io/badge/HTML5-semantic-E34F26?style=flat-square&logo=html5&logoColor=white" alt="HTML5" />
    <img src="https://img.shields.io/badge/CSS3-responsive-1572B6?style=flat-square&logo=css3&logoColor=white" alt="CSS3" />
    <img src="https://img.shields.io/badge/JavaScript-vanilla-F7DF1E?style=flat-square&logo=javascript&logoColor=111" alt="JavaScript" />
    <img src="https://img.shields.io/badge/MikroTik-HotSpot-293239?style=flat-square&logo=mikrotik&logoColor=white" alt="MikroTik HotSpot" />
    <img src="https://img.shields.io/badge/RTL-Arabic-054239?style=flat-square" alt="Arabic RTL" />
  </p>

  <img src="assets/brand/ornament.svg" width="720" alt="زخرفة الهوية البصرية السورية" />
</div>

## عن المشروع

واجهة Captive Portal مخصصة لشبكات MikroTik HotSpot، تظهر للمستخدم عند الاتصال بالواي فاي وتطلب اسم المستخدم وكلمة المرور قبل السماح بالوصول إلى الإنترنت.

صُممت البوابة بهوية بصرية سورية، واتجاه عربي كامل، وحجم تحميل صغير يناسب المستخدم قبل حصوله على اتصال بالإنترنت.

## المميزات

- تصميم عربي كامل ومتجاوب من الهاتف الصغير حتى الشاشات الكبيرة.
- ألوان وشعار وزخارف الهوية البصرية السورية.
- خط **Qomra** للنص العربي و**Lato** للأرقام.
- حركات CSS خفيفة مع احترام إعداد `prefers-reduced-motion`.
- بدون React أو مكتبات أو طلبات تشغيل خارجية.
- دعم إظهار وإخفاء كلمة المرور ورسائل خطأ RouterOS.
- دعم تسجيل الدخول عبر MikroTik `HTTP-CHAP` مع ملف `md5.js` الأصلي من الراوتر.
- روابط حسابات محافظة درعا الرسمية على شبكات التواصل الاجتماعي.

## التقنيات

| الجزء | التقنية |
|---|---|
| الواجهة | HTML5 دلالي |
| التصميم | CSS3 وCustom Properties |
| التفاعل | Vanilla JavaScript |
| المصادقة | MikroTik HotSpot Variables وHTTP-CHAP |
| الخطوط | Qomra وLato محلياً |

## بنية المشروع

```text
.
├── index.html                         # نسخة المعاينة المحلية
├── assets/
│   ├── brand/                         # الشعار والزخارف والأيقونات
│   ├── css/main.css                   # الهوية والتجاوب والحركات
│   ├── fonts/                         # الخطوط المحلية
│   └── js/main.js                     # تفاعل النموذج
├── handoff/mikrotik-daraa-overlay/
│   ├── login.html                     # صفحة MikroTik مع دعم CHAP
│   ├── assets/                        # أصول البوابة الجاهزة للرفع
│   └── README-FIRST.txt               # تعليمات الفني
└── tools/verify-mikrotik-package.ps1  # فحص حزمة التسليم
```

## المعاينة محلياً

لا يحتاج المشروع إلى تثبيت أي حزم:

```powershell
python -m http.server 4173 --bind 127.0.0.1
```

ثم افتح:

```text
http://127.0.0.1:4173/
```

## التركيب على MikroTik

> لا تحذف مجلد HotSpot الأصلي من الراوتر؛ يحتوي ملفات مهمة مثل `md5.js` و`api.json`.

1. نزّل مجلد `hotspot` الأصلي من **WinBox → Files** واحتفظ بنسخة احتياطية.
2. انسخه على الكمبيوتر وسمِّ النسخة `hotspot-daraa`.
3. انسخ محتويات `handoff/mikrotik-daraa-overlay` فوق النسخة الجديدة.
4. استبدل `login.html` فقط، وأبقِ بقية ملفات RouterOS الأصلية.
5. ارفع `hotspot-daraa` إلى الراوتر.
6. من **IP → Hotspot → Server Profiles** غيّر **HTML Directory** إلى المجلد الجديد.
7. أبقِ `HTTP-CHAP` و`Cookie` مفعّلين، ثم اختبر بحساب مؤقت.

التعليمات الكاملة موجودة في [`README-FIRST.txt`](handoff/mikrotik-daraa-overlay/README-FIRST.txt)، ويمكن الرجوع إلى [توثيق MikroTik الرسمي](https://help.mikrotik.com/docs/spaces/ROS/pages/87162881/Hotspot%20customisation).

## التحقق من حزمة التسليم

```powershell
powershell -ExecutionPolicy Bypass -File tools/verify-mikrotik-package.ps1
```

عند نجاح الفحص ستظهر الرسالة:

```text
MikroTik overlay package is complete.
```

## حسابات محافظة درعا

- [Facebook](https://www.facebook.com/DaraaGov1/)
- [Instagram](https://www.instagram.com/daraagov1/)
- [X](https://x.com/DaraaGov1)
- [Telegram](https://t.me/DaraaGov1)

## التطوير

تم التطوير بواسطة **المهندس أحمد الحريري**.

<div align="center" dir="rtl">
  <sub>محافظة درعا — جميع الحقوق محفوظة</sub>
</div>
