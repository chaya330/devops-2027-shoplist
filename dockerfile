#חיה הילמן
#ה-image הבסיסי של השפה, שעליו מתבסס ה- image שלנו.
FROM python:3.11-slim
#בנית תיקית עבודה בתוך הקונטיינר
WORKDIR /app
#רשימת התלויות - הספריות שצריך לייבא ולהתקין כדי לרוץ
COPY requirements.txt
#התקנת התלויות הנ"ל
RUN pip install --no-cache-dir -r requirements.txt
#העתקת הקוד
COPY app.py
#  הפורט שעתיד להיות מקושר לקונטיינר
EXPOSE 8000
#פקודה להרצה בשורת הפקודה
CMD ["python" "app.py"]