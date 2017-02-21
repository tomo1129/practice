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


部屋番号の最初の一桁が部屋の階と一致しているとする。
例）103 → 1階、306 → 3階

2階以上の部屋に住んでいる部屋の部屋番号と借主のIDを部屋番号の降順で取得してください。

SELECT room_no,debtor_id -- 部屋番号と借主のIDだけで大丈夫です。
FROM mansion
WHERE room_no >= 201 -- 2階以上 = 201以上
ORDER BY room_no DESC -- 部屋番号の降順