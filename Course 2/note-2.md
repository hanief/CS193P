# 2. Applying MVC
## By : Hanief Cahya Utama

- MVC (Model View Controller)
- Model : Apa aplikasi anda
- Controller : Bagaimana cara menampilkan model anda
- View : budak Controller anda

- Controller selalu bisa bicara langsung pada Model
- Controller selalu bisa bicara dengan View
- Model dan View tidak pernah berbicara satu sama lain

- View berkomunikasi dengan Controller dengan beberapa cara :
    - View membuat action, Controller menerapkan dirinya sebagai Target
    - Controller menerapkan protocol delegate
    - Controller menerapkan protocol data source untuk mengumpan data ke View. Karena itu Controller berfungsi menerjemahkan model menjadi View.
    
- Model berkomunikasi dengan membuat stasiun radio dengan menggunakan notification/KVO

- 