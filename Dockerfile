# Séléction du runtime python pour l'image
FROM python:3.8 

# Port par défaut de Flask: 5000
EXPOSE 5000

# création du répertoire
RUN mkdir -p /app
WORKDIR /app

# Installer les packages listés dans requirement.txt
COPY . .
RUN pip install -r requirements.txt
# Lancer l'appli quand le conteneur se lancer
CMD python app.py
