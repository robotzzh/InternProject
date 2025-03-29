DROP TABLE IF EXISTS goods;

CREATE TABLE goods (
    id SERIAL PRIMARY KEY,  -- PostgreSQL 使用 SERIAL 实现自增
    title VARCHAR(100) DEFAULT ' ',
    subtitle VARCHAR(100) DEFAULT ' ',
    product_sn VARCHAR(50) DEFAULT ' ',
    category_id INT DEFAULT 0,
    click_count INT DEFAULT 0,
    product_number INT DEFAULT 0,
    price DECIMAL(10,2) DEFAULT 0.00,
    market_price DECIMAL(10,2) DEFAULT 0.00,
    relation_goods VARCHAR(100) DEFAULT ' ',
    goods_attr VARCHAR(100) DEFAULT ' ',
    goods_img VARCHAR(100) DEFAULT ' ',
    goods_version VARCHAR(100) DEFAULT ' ',
    goods_gift VARCHAR(100) DEFAULT ' ',
    goods_fitting VARCHAR(100) DEFAULT ' ',
    goods_color VARCHAR(100) DEFAULT ' ',
    goods_keywords VARCHAR(100) DEFAULT ' ',
    goods_desc VARCHAR(50) DEFAULT ' ',
    goods_content VARCHAR(50) DEFAULT ' ',
    is_delete SMALLINT DEFAULT 0,  -- PostgreSQL 没有 TINYINT，改为 SMALLINT
    is_hot SMALLINT DEFAULT 0,
    is_best SMALLINT DEFAULT 0,
    is_new SMALLINT DEFAULT 0,
    goods_type_id SMALLINT DEFAULT 0,
    is_recommend SMALLINT DEFAULT 0,
    sort INT DEFAULT 0,
    status SMALLINT DEFAULT 0,
    add_time INT DEFAULT 0
);