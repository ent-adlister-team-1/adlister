
USE jeremysangels_adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       username VARCHAR(240) NOT NULL,
                       email VARCHAR(240) NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE ads (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     user_id INT UNSIGNED NOT NULL,
                     category TEXT(100) NOT NULL,
                     title VARCHAR(240) NOT NULL,
                     price DECIMAL(10, 2),
                     description TEXT NOT NULL,
                     contact TEXT NOT NULL,
                     location TEXT(100) NOT NULL, -- Added a comma here
                     PRIMARY KEY (id),
                     FOREIGN KEY (user_id) REFERENCES users(id)
                         ON DELETE CASCADE
);



INSERT INTO users (username, email, password)
VALUES
    ('ShadowCipher', 'shadowcipher@example.com', 'password1'),
    ('CrypticPhantom', 'crypticphantom@example.com', 'password2'),
    ('ObsidianGhost', 'obsidianghost@example.com', 'password3'),
    ('NightshadeLurker', 'nightshadelurker@example.com', 'password4'),
    ('AbyssalWatcher', 'abyssalwatcher@example.com', 'password5');


INSERT INTO ads (user_id,title, description, price, location, contact, category)
VALUES
    (1,'Rare Albino Python', 'A stunning, one-of-a-kind albino python looking for a new home. Perfect for snake enthusiasts!', 1500.00, 'Classified', 'shadowcipher@example.com', 'Exotic Pets'),
    (2,'Ancient Egyptian Relics', 'Authentic artifacts from ancient Egypt, including jewelry, statues, and pottery.', NULL, 'Archaeologist’s Hideaway', 'crypticphantom@example.com', 'Antique Artifacts'),
    (3,'Encrypted Communication Devices', 'State-of-the-art encrypted communication devices for secure and private conversations.', 1500.00, 'SecureTech Underground', 'obsidianghost@example.com', 'Cybersecurity Tools'),
    (4,'Surreal Digital Art Prints', 'Mind-bending digital art prints that challenge perception and reality. Perfect for art lovers.', 200.00, 'The Digital Dreamscapes', 'nightshadelurker@example.com', 'Unusual Artwork'),
    (5,'Occult Grimoires', 'Rare and forbidden occult grimoires, containing dark rituals and esoteric knowledge.', NULL, 'Forbidden Library', 'abyssalwatcher@example.com', 'Forbidden Literature');
