
USE jeremysangels_adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS category;

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       username VARCHAR(240) NOT NULL,
                       email VARCHAR(240) NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE category (
                    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    category VARCHAR(240)NOT NULL,
                    PRIMARY KEY (id)
);

CREATE TABLE ads (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     user_id INT UNSIGNED NOT NULL,
                     category_id INT UNSIGNED NOT NULL,
                     title VARCHAR(240) NOT NULL,
                     price DECIMAL(10, 2),
                     description TEXT NOT NULL,
                     contact TEXT NOT NULL,
                     location TEXT(100) NOT NULL,
                     PRIMARY KEY (id),
                     FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
                     FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE CASCADE
);

INSERT INTO users (id, username, email, password)
VALUES
    (1,'ShadowCipher','shadowcipher@example.com','$2a$12$VkK/eu7qsFtdg3mCSguF.etHDCG9W6pbVumFrclHiH8ON5l0BEHU6'),
    (2,'CrypticPhantom','crypticphantom@example.com','$2a$12$LWPA.rRuT4RJWWs25U05EOOxELUsaxLRMsuQSI4XB/sOivn.gdhfi'),
    (3,'ObsidianGhost','obsidianghost@example.com','$2a$12$3MnUXTpQ6NSaEmyz6b0Uju/dTy4qPf6h5XlCDiuZJVOL/7EMOxgqi'),
    (4,'NightshadeLurker','nightshadelurker@example.com','$2a$12$AUE/8/7V/B2TjpI6V3eJtu5O3CL/9NdqgkrdILZ19gunICkFTOga6'),
    (5,'AbyssalWatcher','abyssalwatcher@example.com', '$2a$12$nrBW43WZirgkesgA/jp8BuE28VRDVjGAjF0nPQ9vvRvTC7DxqCfWy');


INSERT INTO category (category)
VALUES
    ('Exotic Pets'),
    ('Antique Artifacts'),
    ('Cybersecurity Tools'),
    ('Unusual Artwork'),
    ('Forbidden Literature');


INSERT INTO ads (user_id, title, description, price, location, contact, category_id)
VALUES
    (1, 'Rare Albino Python', 'A stunning, one-of-a-kind albino python looking for a new home. Perfect for snake enthusiasts!', 1500.00, 'Classified', 'shadowcipher@example.com', 1),
    (2, 'Colorful Tropical Birds', 'Vibrant and exotic tropical birds for sale. These feathered friends will brighten up your life.', 800.00, 'Hidden Sanctuary', 'crypticphantom@example.com', 1),
    (3, 'Baby Capuchin Monkey', 'Adorable baby Capuchin monkey available for adoption. Highly intelligent and playful.', 2500.00, 'Private Jungle Retreat', 'obsidianghost@example.com', 1),
    (4, 'Rare Axolotl Collection', 'Collection of rare axolotls in various colors. The ultimate addition to your aquatic collection.', 200.00, 'Aquatic Wonderland', 'nightshadelurker@example.com', 1),
    (5, 'Ancient Egyptian Relics', 'Authentic artifacts from ancient Egypt, including jewelry, statues, and pottery.', NULL, 'Archaeologist\'s Hideaway', 'abyssalwatcher@example.com', 2),
    (1, 'Medieval Knight\'s Armor', 'Fully restored medieval knight\'s armor set. Perfect for collectors or reenactors.', 6000.00, 'Castle Keep Treasures', 'shadowcipher@example.com', 2),
    (2, 'Mysterious Mayan Art', 'Intriguing Mayan art pieces, shrouded in history and mystique. A glimpse into a lost civilization.', NULL, 'Mayan Art Gallery', 'crypticphantom@example.com', 2),
    (3, 'Vintage Typewriter Collection', 'Unique collection of vintage typewriters from the 20th century. Ideal for writers and collectors.', 300.00, 'Typewriter Nook', 'obsidianghost@example.com', 2),
    (4, 'Encrypted Communication Devices', 'State-of-the-art encrypted communication devices for secure and private conversations.', 1500.00, 'SecureTech Underground', 'nightshadelurker@example.com', 3),
    (5, 'Anonymity VPN Services', 'Premium VPN services for complete online anonymity and privacy protection.', 100.00, 'DarkWeb Privacy Hub', 'abyssalwatcher@example.com', 3),
    (1, 'Hacker\'s Toolkit', 'A comprehensive toolkit for ethical hackers, including software, tutorials, and guides.', 999.00, 'Hacker\'s Paradise', 'shadowcipher@example.com', 3),
    (2, 'Secure Digital Wallets', 'Cutting-edge digital wallets with multi-layer security features to safeguard your cryptocurrencies.', 250.00, 'CryptoFortress', 'crypticphantom@example.com', 3),
    (3, 'Surreal Digital Art Prints', 'Mind-bending digital art prints that challenge perception and reality. Perfect for art lovers.', 200.00, 'The Digital Dreamscapes', 'obsidianghost@example.com', 4),
    (4, 'Recycled Junk Sculptures', 'Unique sculptures crafted from recycled materials. An eco-friendly and artistic statement.', 500.00, 'EcoArt Studio', 'nightshadelurker@example.com', 4),
    (5, 'Bio-Organic Art Installations', 'Living, breathing art installations made from organic materials. An immersive experience.', NULL, 'Bioluminescent Art Garden', 'abyssalwatcher@example.com', 4),
    (1, 'Time-Warped Paintings', 'Paintings that seem to capture moments from different eras. A blend of past and future.', 1200.00, 'Temporal Art Atelier', 'shadowcipher@example.com', 4),
    (2, 'Occult Grimoires', 'Rare and forbidden occult grimoires, containing dark rituals and esoteric knowledge.', NULL, 'Forbidden Library', 'crypticphantom@example.com', 5),
    (3, 'Banned Conspiracy Theories', 'A collection of banned conspiracy theory literature. Explore the hidden truths of the world.', 50.00, 'The Conspiracy Vault', 'obsidianghost@example.com', 5),
    (4, 'Lovecraftian Horror Novels', 'Dive into the realms of cosmic horror with the complete works of H.P. Lovecraft.', 200.00, 'Eldritch Book Emporium', 'nightshadelurker@example.com', 5),
    (5, 'Secret Society Manuscripts', 'Manuscripts from secret societies, revealing their rituals and inner workings.', NULL, 'The Secret Archive', 'abyssalwatcher@example.com', 5);

