# استخدام نسخة PHP الرسمية مع سيرفر Apache
FROM php:8.2-apache

# تثبيت مكتبة mysqli للاتصال بقاعدة البيانات
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# نسخ ملفات الفرونت أند والباك أند إلى المجلد الافتراضي للسيرفر
COPY ./frontend/ /var/www/html/frontend/
COPY ./backend/ /var/www/html/backend/

# إعطاء الصلاحيات المناسبة للمجلدات
RUN chown -R www-data:www-data /var/www/html

# تحديد منفذ العمل (الافتراضي للـ Apache هو 80)
EXPOSE 80