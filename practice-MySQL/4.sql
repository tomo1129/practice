最初に以下を実行してください。

==============================================
DROP TABLE IF EXISTS tenant; -- 借主のデータ
CREATE TABLE tenant (
    id int(11) NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL, -- 借主の名前
    salary int(11) NOT NULL, -- 借主の年収
    tenant_start date, -- 入居日
    PRIMARY KEY (`id`)
);

INSERT INTO tenant(name,salary,tenant_start) VALUES
('Masa', 550, '2015-01-30'),
('Keisuke', 700, '2013-12-27'),
('Eriko', 300, '2012-05-25'),
('Miko', 450, '2013-07-21'),
('Ai', 375, '2015-08-19'),
('Rie', 434, '2014-01-17'),
('Norio', 275, '2014-12-13'),
('Tomomi', 625, '2017-10-01'),
('Tatsumi', 326, '2015-02-01'),
('Toshi', 987, '2015-11-29'),
('Shinji', 176, '2015-03-28'),
('Akiyo', 460, '2013-01-27'),
('Motohisa', 287, '2008-04-17'),
('Rei', 490, '2012-06-16'),
('Yuki', 364, '2013-07-05'),
('Terukazu', 559, '2016-08-08'),
('Iethugu', 369, '2015-09-09'),
('Sumio', 468, '2014-01-24'),
('Tadahiro', 414, '2009-02-27'),
('Nagao', 511, '2011-04-30'),
('Satoru', 494, '2014-05-20'),
('Kuniko', 434, '2015-06-13'),
('Hiroshi', 370, '2017-07-18'),
('Koji', 412, '2016-03-02'),
('Nobuo', 452, '2013-06-09'),
('Mako', 394, '2015-08-07'),
('Mirei', 420, '2014-09-10'),
('Jhoji', 388, '2015-10-23'),
('Kazuyoshi', 373, '2013-12-01'),
('Sayuri', 298, '2013-01-13');
==============================================


入居日が2015年の1月1日以降で、名前の頭文字が「T」の入居者の名前を、入居日の昇順で表示してください。

答え

==============================================
SELECT name
FROM tenant
WHERE LEFT(name, 1) = 'T' AND tenant_start >= '2015-01-01' -- LEFT(文字列, 文字数)で、文字列の頭文字から指定した文字数だけ抜き出すことができます。
ORDER BY tenant_start ASC

-- もしくはSUBSTRINGを使って以下でも可

SELECT name
FROM tenant
WHERE SUBSTRING(name, 1, 1) = 'T' AND tenant_start >= '2015-01-01' -- SUBSTRING(文字列, 開始位置, 文字数)で、文字列の開始位置(何文字目からか)から指定した文字数だけ抜き出すことができます。
ORDER BY tenant_start ASC

==============================================