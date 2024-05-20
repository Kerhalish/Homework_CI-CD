# Alap Docker image kiválasztása
FROM python:3.8-slim

# Munkakönyvtár beállítása
WORKDIR /app

# Függőségek másolása és telepítése
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Alkalmazás fájljainak másolása
COPY . .

# Parancs beállítása az alkalmazás indításához
CMD ["python", "app.py"]

