-- DUMMY DATA ONLY, FOR USE IN UNIT TESTS

-- Login table
delete from login;
insert into login (id, login, email, password) values (1, 'test', 'test@example.com', SHA2('test_password', 256));
insert into login (id, login, email, password) values (2, 'Dostya', 'dostya@cybran.example.com', SHA2('vodka', 256));
insert into login (id, login, email, password) values (3, 'Rhiza', 'rhiza@aeon.example.com', SHA2('puff_the_magic_dragon', 256));
insert into login (id, login, email, password) values (4, 'No_UID', 'uid@uef.example.com', SHA2('his_pw', 256));
insert into login (id, login, email, password) values (5, 'postman', 'postman@postman.com', SHA2('postman', 256));

-- global rating
delete from global_rating;
insert into global_rating (id, mean, deviation, numGames, is_active)
values
(1, 2000, 125, 5, 1),
(2, 1500, 75, 2, 1),
(3, 1650, 62.52, 2, 1);

-- ladder rating
delete from ladder1v1_rating;
insert into ladder1v1_rating (id, mean, deviation, numGames, is_active)
values
  (1, 2000, 125, 5, 1),
  (2, 1500, 75, 2, 1),
  (3, 1650, 62.52, 2, 1);

-- UniqueID_exempt
delete from uniqueid_exempt;
insert into uniqueid_exempt (user_id, reason) values (1, 'Because test');

-- Banned UIDs
delete from unique_id_users;
insert into unique_id_users (user_id, uniqueid_hash) values (1, 'some_id');
insert into unique_id_users (user_id, uniqueid_hash) values (2, 'another_id');
insert into unique_id_users (user_id, uniqueid_hash) values (3, 'some_id');

-- Lobby version table
delete from version_lobby;
insert into version_lobby (id, `file`, version) values (1, 'some-installer.msi', '0.10.125');

-- Sample maps
delete from map;
insert into map (id, display_name, map_type, battle_type, author)
values
(1, 'SCMP_001', 'FFA', 'skirmish', 1),
(2, 'SCMP_002', 'FFA', 'skirmish', 1),
(3, 'SCMP_003', 'FFA', 'skirmish', 1),
(4, 'SCMP_004', 'FFA', 'skirmish', 1),
(5, 'SCMP_005', 'FFA', 'skirmish', 1),
(6, 'SCMP_006', 'FFA', 'skirmish', 2),
(7, 'SCMP_007', 'FFA', 'skirmish', 2),
(8, 'SCMP_008', 'FFA', 'skirmish', 2),
(9, 'SCMP_009', 'FFA', 'skirmish', 2),
(10, 'SCMP_010', 'FFA', 'skirmish', 3),
(11, 'SCMP_011', 'FFA', 'skirmish', 3),
(12, 'SCMP_012', 'FFA', 'skirmish', 3),
(13, 'SCMP_013', 'FFA', 'skirmish', 3),
(14, 'SCMP_014', 'FFA', 'skirmish', 3),
(15, 'SCMP_015', 'FFA', 'skirmish', 3);

delete from map_version;
insert into map_version (description, max_players, width, height, version, filename, hidden, map_id)
values
('SCMP 001', 8, 5, 5, 1, 'maps/scmp_001.v0001.zip', 0, 1),
('SCMP 002', 8, 5, 5, 1, 'maps/scmp_002.v0001.zip', 0, 2),
('SCMP 003', 8, 5, 5, 1, 'maps/scmp_003.v0001.zip', 0, 3),
('SCMP 004', 8, 5, 5, 1, 'maps/scmp_004.v0001.zip', 0, 4),
('SCMP 005', 8, 5, 5, 1, 'maps/scmp_005.v0001.zip', 0, 5),
('SCMP 006', 8, 5, 5, 1, 'maps/scmp_006.v0001.zip', 0, 6),
('SCMP 007', 8, 5, 5, 1, 'maps/scmp_007.v0001.zip', 0, 7),
('SCMP 008', 8, 5, 5, 1, 'maps/scmp_008.v0001.zip', 0, 8),
('SCMP 009', 8, 5, 5, 1, 'maps/scmp_009.v0001.zip', 0, 9),
('SCMP 010', 8, 5, 5, 1, 'maps/scmp_010.v0001.zip', 0, 10),
('SCMP 011', 8, 5, 5, 1, 'maps/scmp_011.v0001.zip', 0, 11),
('SCMP 012', 8, 5, 5, 1, 'maps/scmp_012.v0001.zip', 0, 12),
('SCMP 013', 8, 5, 5, 1, 'maps/scmp_013.v0001.zip', 0, 13),
('SCMP 014', 8, 5, 5, 1, 'maps/scmp_014.v0001.zip', 0, 14),
('SCMP 015', 8, 5, 5, 1, 'maps/scmp_015.v0001.zip', 0, 15),
('SCMP 015', 8, 5, 5, 2, 'maps/scmp_015.v0002.zip', 0, 15),
('SCMP 015', 8, 10, 10, 3, 'maps/scmp_015.v0003.zip', 0, 15);


-- game_stats table
delete from game_stats;
insert into game_stats (id, startTime, gameName, gameType, gameMod, `host`, mapId, validity)
values (1, NOW(), 'Test game', '0', 6, 1, 1, 0);

-- featured mods
delete from game_featuredMods;
insert into game_featuredMods (id, gamemod, name, description, publish)
values (1, 'faf', 'FAF', 'Forged Alliance Forever', 1),
       (6, 'ladder1v1', 'FAF', 'Ladder games', 1),
       (25, 'coop', 'Coop', 'Multiplayer campaign games', 1);

delete from friends_and_foes;
insert into friends_and_foes (user_id, subject_id, `status`)
values(42, 56, "FRIEND"),
      (42, 57, "FOE");

-- sample mods
delete from `mod`;
insert into `mod` (id, display_name, author)
VALUES (1, 'test-mod', 'baz'),
       (2, 'test-mod2', 'baz'),
       (3, 'test-mod3', 'baz');

delete from mod_version;
insert into mod_version (mod_id, uid, version, description, type, filename, icon) VALUES
        (1, 'foo', 1, '', 'UI', 'foobar.zip', 'foobar.png'),
        (1, 'bar', 2, '', 'SIM', 'foobar2.zip', 'foobar.png'),
        (2, 'baz', 1, '', 'UI', 'foobar3.zip', 'foobar3.png'),
        (3, 'EA040F8E-857A-4566-9879-0D37420A5B9D', 1, '', 'SIM', 'foobar4.zip', 'foobar4.png');

delete from mod_stats;
insert into mod_stats (mod_id, times_played, likers) VALUES
        (1, 0, ''),
        (2, 0, ''),
        (3, 1, '');


-- sample avatars
delete from avatars;
delete from avatars_list;
insert into avatars_list (id, url, tooltip) values (1, "http://content.faforever.com/faf/avatars/qai2.png", "QAI");
insert into avatars (idUser, idAvatar, selected) values (2, 1, 0);

-- sample oauth_client for Postman
delete from oauth_clients;
insert into oauth_clients (id, name, client_secret, redirect_uris, default_redirect_uri, default_scope) VALUES ("postman-test", "postman", "postman-test", 'http://localhost https://www.getpostman.com/oauth2/callback', 'https://www.getpostman.com/oauth2/callback', 'read_events read_achievements upload_map upload_mod write_account_data');

delete from updates_faf;
insert into updates_faf (id, filename, path) values
    (1, 'ForgedAlliance.exe', 'bin'),
    (11, 'effects.nx2', 'gamedata'),
    (12, 'env.nx2', 'gamedata');

delete from updates_faf_files;
insert into updates_faf_files (id, fileId, version, name, md5, obselete) values
    (711, 1, 3658, 'ForgedAlliance.3658.exe', '2cd7784fb131ea4955e992cfee8ca9b8', 0),
    (745, 1, 3659, 'ForgedAlliance.3659.exe', 'ee2df6c3cb80dc8258428e8fa092bce1', 0),
    (723, 11, 3658, 'effects_0.3658.nxt', '3758baad77531dd5323c766433412e91', 0),
    (734, 11, 3659, 'effects_0.3659.nxt', '3758baad77531dd5323c766433412e91', 0),
    (680, 12, 3656, 'env_0.3656.nxt', '32a50729cb5155ec679771f38a151d29', 0);
