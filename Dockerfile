FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

# copy files
COPY . .

# force clean reinstall of pyrofork
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
