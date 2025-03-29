
DROP TABLE IF EXISTS cart;

CREATE TABLE cart (
    id SERIAL PRIMARY KEY,  -- PostgreSQL 自增字段用 SERIAL
    title VARCHAR(100) DEFAULT ' ',
    price DECIMAL(10,2) DEFAULT 0.00,
    goods_version VARCHAR(100) DEFAULT ' ',
    num INT DEFAULT 0,
    goods_gift VARCHAR(100) DEFAULT ' ',
    goods_fitting VARCHAR(100) DEFAULT ' ',
    goods_color VARCHAR(100) DEFAULT ' ',
    goods_img VARCHAR(100) DEFAULT ' ',
    goods_attr VARCHAR(100) DEFAULT ' '
);