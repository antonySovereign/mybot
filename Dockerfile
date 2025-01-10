# Используйте официальный образ OpenJDK
FROM openjdk:17

# Установите рабочую директорию
WORKDIR /app

# Скопируйте JAR файл и другие файлы в контейнер
COPY mybot-1.0-SNAPSHOT.jar /app/
COPY cityDistricts.json /app/
COPY products.json /app/

# Установите переменные окружения
ENV TELEGRAM_BOT_TOKEN="7550622587:AAEZaJHtwSeCYpYX_L4c7Dk6XdWx8FoQkdQ"
ENV SUPPORT_TG="@medusashop1_help"
ENV CITIES_JSON="cityDistricts.json"
ENV PRODUCTS_JSON="products.json"
ENV WALLET="UQDy9HNiZCIAy3W66nlPV92lQ8ep2h0Din4_OrUHZDtTrzP7"

# Команда для запуска JAR файла
CMD ["java", "-jar", "mybot-1.0-SNAPSHOT.jar"]
   