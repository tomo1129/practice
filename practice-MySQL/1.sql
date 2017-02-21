DROP TABLE IF EXISTS mansion;
CREATE TABLE mansion (
    id int(11) NOT NULL AUTO_INCREMENT,
    room_no int(11) NOT NULL, -- 部屋番号
    debtor_id int(11) NOT NULL, -- 借主のID
    PRIMARY KEY (`id`)
);

INSERT INTO mansion(room_no,debtor_id) VALUES
(101, 1),
(102, 2),
(103, 3),
(104, 4),
(105, 5),
(106, 6),
(107, 7),
(108, 8),
(109, 9),
(110, 10),
(201, 11),
(202, 12),
(203, 13),
(204, 14),
(205, 15),
(206, 16),
(207, 17),
(208, 18),
(209, 19),
(210, 20),
(301, 21),
(302, 22),
(303, 23),
(304, 24),
(305, 25),
(306, 26),
(307, 27),
(308, 28),
(309, 29),
(310, 30);



SELECT * -- *の代わりにid,room_no,debtor_idでもOKです。
FROM mansion