Metamodel Repository Application
--------

This metadata management application stores metamodels (M1) and relationships within/between this metamodels. Stored information includes metamodel entities, attributes, super and sub type relationships, relationships between entities and instances of entities (M0).

This application is a CRUD wrapper for designed metamodel written in Play Framework 1.x.

Screenshots
-

![Metamodel 1](https://www.ubenzer.com/deepo/github/metadata-crud/metamodel-1.png)
![Metamodel 2](https://www.ubenzer.com/deepo/github/metadata-crud/metamodel-2.png)
![Metamodel 2](https://www.ubenzer.com/deepo/github/metadata-crud/metamodel-3.png)

License
-

MIT

Contact
-
 - [My Blog](http://www.ubenzer.com/)
 - [Contact Page](http://www.ubenzer.com/iletisim/) (Only in English and Turkish)
 - [Detailed Project Description in Turkish](https://github.com/ubenzer/A-Basic-Metamodel-Repository-Application/blob/master/Proje%20Raporu.pdf?raw=true)
 
Brief Installiation Instructions
-

1. Get latest Play Framework **1.x** from [here](http://www.playframework.com/download).

2. Install Play Framework 1.x using the instructions from [here](http://www.playframework.com/documentation/1.2.5/install).

2. Clone this repository to somewhere in your computer.

3. Run `play dependencies` on project's directory.

4. Create a new database and run `metamodel_repository.sql`'s content to create data structure and sample data. You can also see the file [here](https://github.com/ubenzer/A-Basic-Metamodel-Repository-Application/blob/master/metamodel_repository.sql).

5. Open `conf/application.conf` and update database connection string to yours. The line you should change is: `db=mysql://user:pwd@localhost/yourdbname`

6. Write `play run` on console to start the application.

*For problems on setting up application please refer to Play Framework 1.x documentation.*
