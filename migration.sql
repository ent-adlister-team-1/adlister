
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




INSERT INTO ads (user_id, title, description, price, location, contact, category)
VALUES
    (1, 'Rare Albino Python', 'A stunning, one-of-a-kind albino python looking for a new home. Perfect for snake enthusiasts!', 1500.00, 'Classified', 'shadowcipher@example.com', 'Exotic Pets'),
    (2, 'Colorful Tropical Birds', 'Vibrant and exotic tropical birds for sale. These feathered friends will brighten up your life.', 800.00, 'Hidden Sanctuary', 'crypticphantom@example.com', 'Exotic Pets'),
    (3, 'Baby Capuchin Monkey', 'Adorable baby Capuchin monkey available for adoption. Highly intelligent and playful.', 2500.00, 'Private Jungle Retreat', 'obsidianghost@example.com', 'Exotic Pets'),
    (4, 'Rare Axolotl Collection', 'Collection of rare axolotls in various colors. The ultimate addition to your aquatic collection.', 200.00, 'Aquatic Wonderland', 'nightshadelurker@example.com', 'Exotic Pets'),
    (5, 'Ancient Egyptian Relics', 'Authentic artifacts from ancient Egypt, including jewelry, statues, and pottery.', NULL, 'Archaeologist\'s Hideaway', 'abyssalwatcher@example.com', 'Antique Artifacts'),
    (1, 'Medieval Knight\'s Armor', 'Fully restored medieval knight\'s armor set. Perfect for collectors or reenactors.', 6000.00, 'Castle Keep Treasures', 'shadowcipher@example.com', 'Antique Artifacts'),
    (2, 'Mysterious Mayan Art', 'Intriguing Mayan art pieces, shrouded in history and mystique. A glimpse into a lost civilization.', NULL, 'Mayan Art Gallery', 'crypticphantom@example.com', 'Antique Artifacts'),
    (3, 'Vintage Typewriter Collection', 'Unique collection of vintage typewriters from the 20th century. Ideal for writers and collectors.', 300.00, 'Typewriter Nook', 'obsidianghost@example.com', 'Antique Artifacts'),
    (4, 'Encrypted Communication Devices', 'State-of-the-art encrypted communication devices for secure and private conversations.', 1500.00, 'SecureTech Underground', 'nightshadelurker@example.com', 'Cybersecurity Tools'),
    (5, 'Anonymity VPN Services', 'Premium VPN services for complete online anonymity and privacy protection.', 100.00, 'DarkWeb Privacy Hub', 'abyssalwatcher@example.com', 'Cybersecurity Tools'),
    (1, 'Hacker\'s Toolkit', 'A comprehensive toolkit for ethical hackers, including software, tutorials, and guides.', 999.00, 'Hacker\'s Paradise', 'shadowcipher@example.com', 'Cybersecurity Tools'),
    (2, 'Secure Digital Wallets', 'Cutting-edge digital wallets with multi-layer security features to safeguard your cryptocurrencies.', 250.00, 'CryptoFortress', 'crypticphantom@example.com', 'Cybersecurity Tools'),
    (3, 'Surreal Digital Art Prints', 'Mind-bending digital art prints that challenge perception and reality. Perfect for art lovers.', 200.00, 'The Digital Dreamscapes', 'obsidianghost@example.com', 'Unusual Artwork'),
    (4, 'Recycled Junk Sculptures', 'Unique sculptures crafted from recycled materials. An eco-friendly and artistic statement.', 500.00, 'EcoArt Studio', 'nightshadelurker@example.com', 'Unusual Artwork'),
    (5, 'Bio-Organic Art Installations', 'Living, breathing art installations made from organic materials. An immersive experience.', NULL, 'Bioluminescent Art Garden', 'abyssalwatcher@example.com', 'Unusual Artwork'),
    (1, 'Time-Warped Paintings', 'Paintings that seem to capture moments from different eras. A blend of past and future.', 1200.00, 'Temporal Art Atelier', 'shadowcipher@example.com', 'Unusual Artwork'),
    (2, 'Occult Grimoires', 'Rare and forbidden occult grimoires, containing dark rituals and esoteric knowledge.', NULL, 'Forbidden Library', 'crypticphantom@example.com', 'Forbidden Literature'),
    (3, 'Banned Conspiracy Theories', 'A collection of banned conspiracy theory literature. Explore the hidden truths of the world.', 50.00, 'The Conspiracy Vault', 'obsidianghost@example.com', 'Forbidden Literature'),
    (4, 'Lovecraftian Horror Novels', 'Dive into the realms of cosmic horror with the complete works of H.P. Lovecraft.', 200.00, 'Eldritch Book Emporium', 'nightshadelurker@example.com', 'Forbidden Literature'),
    (5, 'Secret Society Manuscripts', 'Manuscripts from secret societies, revealing their rituals and inner workings.', NULL, 'The Secret Archive', 'abyssalwatcher@example.com', 'Forbidden Literature');

