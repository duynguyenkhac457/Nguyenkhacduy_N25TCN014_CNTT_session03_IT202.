CREATE TABLE SHIPPERS (
    ShipperID INT PRIMARY KEY AUTO_INCREMENT,
    ShipperName VARCHAR(255),
    Phone VARCHAR(20)
);

INSERT INTO SHIPPERS (ShipperName, Phone)
VALUES 
('Giao Hàng Nhanh', '0901234567'),
('Viettel Post', NULL);
________________________________________________________________
-- CREATE TABLE SHIPPERS (
    ShipperID INT PRIMARY KEY AUTO_INCREMENT,
    ShipperName VARCHAR(255),
    Phone VARCHAR(20)
);

INSERT INTO SHIPPERS (ShipperName, Phone)
VALUES ('Giao Hàng Nhanh, '0901234567'); -- Sai ở chổ 'Giao hàng nhanh, sai cú pháp phải sài dấu nháy đơn chứ không phải dấu phẩy


INSERT INTO SHIPPERS
VALUES ('Viettel Post'); 
--Vấn đề: Bảng yêu cầu điền 2 thông tin: Tên và Số điện thoại. Bạn chỉ ném cho nó đúng 1 thông tin là 'Viettel Post'.

Hậu quả: Hệ thống mặc định nhét chữ đó vào cột Tên. Xong đến cột Số điện thoại, nó ngửa tay xin thì bạn không đưa -> Nó đành để trống (tức là NULL).

Sửa: Phải gọi rõ tên cột ra để máy tính biết nhét vào đâu: INSERT INTO bảng (Cột_Tên, Cột_SĐT) VALUES ('Viettel Post', 'Số_điện_thoại').--