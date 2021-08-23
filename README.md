# Database-Systems-MySQL-PostgreSQL-MongoDB

### My Database Systems Studies using the Database Management Systems ([DBMS](https://en.wikipedia.org/wiki/Database#Database_management_system)):

- [MySQL](https://www.mysql.com/)
- [PostgreSQL](https://www.postgresql.org/)
- [MongoDB](https://www.mongodb.com/)


### Interesting info links:
- [DB-Engines Ranking](https://db-engines.com/en/ranking)
- [DBA Stack Exchange](https://dba.stackexchange.com/)
- [Stack Overflow](https://stackoverflow.com/)

### Instructions:

*This instruction was made to my studies and I will be more than happy if it can also help my colleagues as well. The process described bellow was based on a [Fedora Linux](https://getfedora.org/workstation/) environment, I tried to make it as generic as possible, but even so, it might be different if you run it on a different operating system.*



1. **Install Docker Infrastructure (If you do not already have it installed):**

   1. Install Docker: https://docs.docker.com/engine/install/
      1. **Quick Links:**
         1. Fedora Linux: https://docs.docker.com/engine/install/fedora/
         2. Ubuntu Linux: https://docs.docker.com/engine/install/ubuntu/
   2. Install Docker Compose: https://docs.docker.com/compose/install/

2. **Clone this Git repository into your machine by running the command bellow:**

    `git clone https://github.com/acremonezi/Database-Systems-MySQL-MongoDB.git` 

3. **Startup the databases containers by running the command bellow:** 

   `docker-compose up -d`

   Info: The databases storage data will be saved at `./data`

4. **Examples of others Docker Compose commands:**

   1. To see the containers status:  `docker-coompose ps`
   2. To stop the containers:  `docker-compose stop`
   3. To list other commands available:  `docker-compose --help`

5. **Install a Database Management IDE such as:**

   1. For SQL and NoSQL together: https://www.jetbrains.com/pt-br/datagrip/
   2. For SQL only: https://www.mysql.com/products/workbench/
   3. For NoSQL only: https://studio3t.com/

6. **Connect the IDE above to the databases using the info bellow:**

   1. Host: `localhost` or your computer `IP address`
   2. Ports:
      1. For MySQL: `3306`
      2. For MongoDB: `27017`
      3. For PostgreSQL: `5432`
   3. User/Password: Please, have a look into the file: `docker-compose.yml`

   Info: If you intend to run it on a public environment instead of your laptop/desktop, please do not forget to change the databases passwords at the `docker-compose.yml` file.

7. **Enjoy and have fun!**



### Others Tools:

1. **Schema Design:**
   1. https://www.dbdesigner.net/
2. **Entity-Relationship Diagrams (ERD):**
   1. https://dbdiagram.io/
   2. https://www.smartdraw.com/entity-relationship-diagram/
   3. https://online.visual-paradigm.com/diagrams/solutions/free-erd-software/

