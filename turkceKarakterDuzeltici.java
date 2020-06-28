 // türkçe karakterin sorun çıkardığı durumlarda türkçe karakterleri çevirmek için java fonksiyonu. firbase realtime dbde key ler için kullanılabilir.

 public static String trEngCevir(String text)
    {
        String metin = text;
         char[] ilkHarf = new char[] { 'İ', 'ı','ü', 'Ü', 'ç', 'Ç','Ğ', 'ğ','Ş', 'ş','ö','Ö' };
        char[] yeniHarf = new char[] { 'I', 'i', 'u','U','c','C','G','g','S', 's','o','O', };
        
        for (int sayac = 0; sayac < ilkHarf.length; sayac++)
        {
            metin = metin.replace(ilkHarf[sayac], yeniHarf[sayac]);
        }
       return metin;
    }